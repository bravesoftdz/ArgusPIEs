{@name is used to generate the names of new temporary files and
to delete those files when the program closes.  During initialization
of @name, an application-specific temporary directory will be created
if it does not already exist.  If any files are in the directory and
another instance of the program is not already running, the temporary
directory will be cleared.}
unit TempFiles;

interface

uses Windows, SysUtils, Classes;

{@name generates a name for a new temporary file in an application-specific
temporary directory.  When the program
closes, any file whose name matches a name generated by @name will
be deleted if it has not already been deleted.  }
function TempFileName: string;

// @name returns the name of a temporary directory where
// temporary files for an Application can be created.
// If the directory does not exist, @name will create it.
function GetAppSpecificTempDir: string;

implementation

var
  TemporaryFiles: TStringList;

// Get the name of an application-specific temporary directory.
// Create the directory if it does not already exist.
function GetAppSpecificTempDir: string;
var
  ApplicationName: string;
  PathName: array[0..260] of Char;
begin
  if GetTempPath(MAX_PATH, @PathName) = 0 then
  begin
    RaiseLastOSError;
  end;
  result := IncludeTrailingPathDelimiter(Trim(PathName));
  ApplicationName := ExtractFileName(ParamStr(0));
  result := IncludeTrailingPathDelimiter(result + ChangeFileExt(ApplicationName, ''));
  if not DirectoryExists(result) then
  begin
    CreateDir(result);
  end;
end;

function TempFileName: string;
var
  NewFileName: array[0..MAX_PATH] of Char;
  TempDir: string;
begin
  TempDir := GetAppSpecificTempDir;
  
  if GetTempFileName(PChar(TempDir), 'Argus_', 0, @NewFileName) = 0 then
  begin
    RaiseLastOSError;
  end;
  result := NewFileName;
  TemporaryFiles.Add(result);
end;

// delete all files that were generated by TempFileName if they have
// not already been deleted.
procedure DeleteFiles;
var
  Index: integer;
begin
  for Index := 0 to TemporaryFiles.Count - 1 do
  begin
    if FileExists(TemporaryFiles[Index]) then
    begin
      DeleteFile(TemporaryFiles[Index]);
    end;
  end;
  TemporaryFiles.Clear;
end;

var
  ShouldReleaseMutex: boolean = False;
  MutexHandle: THandle;

// Check if the program is already running.  If not, create a mutex
// that subsequent instances can use to check if another version is already
// running.
function AlreadyRunning: boolean;
var
  MutexName: string;
begin
  MutexName := ExtractFileName(ParamStr(0));
  if OpenMutex(MUTEX_ALL_ACCESS, False, PChar(MutexName)) <> 0 then
  begin
    result := True;
  end
  else
  begin
    result := False;
    MutexHandle := CreateMutex(nil, TRUE, PChar(MutexName));
    ShouldReleaseMutex := True;
  end;
end;

// Delete all files in the application-specific temporary directory.
procedure ClearAppSpecificTempDirectory;
var
  TempPath: string;
  F: TSearchRec;
  Files: TStringList;
  Index: Integer;
  FoundFile: boolean;
begin
  TempPath := GetAppSpecificTempDir;
  Files := TStringList.Create;
  try
    FoundFile := FindFirst(TempPath + '*.*', 0, F) = 0;
    try
      if FoundFile then
      begin
        Files.Add(TempPath + F.Name);
        While FindNext(F) = 0 do
        begin
          Files.Add(TempPath + F.Name);
        end;
      end;
    finally
      FindClose(F);
    end;
    for Index := 0 to Files.Count - 1 do
    begin
      if FileExists(Files[Index]) then
      begin
        DeleteFile(Files[Index]);
      end;
    end;
  finally
    Files.Free;
  end;
end;

initialization
  if not AlreadyRunning then
  begin
    ClearAppSpecificTempDirectory;
  end;
  TemporaryFiles:= TStringList.Create;

finalization
  DeleteFiles;
  TemporaryFiles.Free;
  if ShouldReleaseMutex then
  begin
    ReleaseMutex(MutexHandle);
  end;

end.
