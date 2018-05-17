unit UtilityFunctions;

interface

uses Windows, SysUtils, AnePIE;

function GetDllFullPath(FileName :string ; var FullPath : String) : boolean ;
// GetDllFullPath is used to determine the full file path of a running dll
//  at runtime.
//  FileName is the name of the dll file without the path.
//  FullPath is the name of the dll file with the path.
//  GetDllFullPath returns true if the function succeeds.
// The full path may be up to 1024 characters in length.

function GetDllDirectory(FileName :string ;
  var DllDirectory : String) : boolean ;
// GetDllDirectory is used to determine the directory containing a running dll
//  at runtime.
//  FileName is the name of the dll file without the path.
//  DllDirectory is the name of the directory containing the dll with
//   no terminating slash.
//  GetDllDirectory returns true if the function succeeds.
// The directory name may be up to 1024 characters in length minus
//  (the length of the file name plus one).

function GetDLLName : string;
// GetDLLName returns the name of the DLL that calls it.

Function EvalIntegerByLayerHandle(const andHandle, LayerHandle : ANE_PTR;
         StringToEvaluate : string) : integer;

Function EvalIntegerByLayerName(const andHandle : ANE_PTR;
         const LayerName : string; var LayerHandle : ANE_PTR;
         StringToEvaluate : string) : integer;

Function EvalDoubleByLayerHandle(const andHandle, LayerHandle : ANE_PTR;
         StringToEvaluate : string) : ANE_DOUBLE;

Function EvalDoubleByLayerName(const andHandle : ANE_PTR;
         const LayerName : string; var LayerHandle : ANE_PTR;
         StringToEvaluate : string) : ANE_DOUBLE;

procedure GetGrid(const CurrentModelHandle : ANE_PTR; const LayerName : string;
  var LayerHandle : ANE_PTR; var NRow, NCol : ANE_INT32;
  var MinX, MaxX, MinY, MaxY, GridAngle : ANE_DOUBLE);

Procedure GetGridAngle(const CurrentModelHandle : ANE_PTR;
  const LayerName : string; var LayerHandle : ANE_PTR ;
  var GridAngle : ANE_DOUBLE);

procedure RotatePointsToGrid(var X, Y : double; GridAngle : double);
// Transform the locations of X and Y so that they are in the same
// coordinate system as the grid.

procedure RotatePointsFromGrid(var X, Y : double; GridAngle : double);
// Transform the locations of X and Y from the grid coordinate system to the
// model coordinate system .

implementation

uses ANE_LayerUnit, ANECB;

{
Procedure ProcessEvents(CurrentModelHandle : ANE_PTR);
begin
  ANE_ProcessEvents(CurrentModelHandle);
end;
}

function GetDllFullPath(FileName :string ; var FullPath : String) : boolean ;
var
  Index : integer;
   buf : PChar ;
   bufLen : Integer;
   AString : string;
   AHandle : HWND;
begin
      FullPath := '';
      AHandle := GetModuleHandle(PChar(FileName))  ;
      if AHandle = 0
      then
        begin
          Result := False;
        end
      else
        begin
          AString := '1';
          For Index := 1 to 10 do
          begin
            AString := AString + AString;
          end;
          buf := PChar(AString);
          bufLen := Length(AString);
          if (GetModuleFileName(AHandle, buf, bufLen) > 0)
          then
            begin
              FullPath := String(buf);
              Result := True;
            end
          else
            begin
              Result := False;
            end;
        end;

end;

function GetDllDirectory(FileName :string ;
  var DllDirectory : String) : boolean ;
begin
  result :=  GetDllFullPath(FileName ,  DllDirectory );
  DllDirectory := ExtractFileDir(DllDirectory);
end;

function GetDLLName : string;
var
    FileCheck: array[0..255] of char;
begin
          GetModuleFileName(HInstance, Filecheck, 255);
          result := String(Filecheck)
end;

Function EvalIntegerByLayerHandle(const andHandle, LayerHandle : ANE_PTR;
         StringToEvaluate : string) : ANE_INT32;
var
  STR : ANE_STR;
begin
  GetMem(STR, Length(StringToEvaluate) + 1);
  try
    StrPCopy(STR, StringToEvaluate);
    ANE_EvaluateStringAtLayer(andHandle,LayerHandle,kPIEInteger,
       STR,@result );
  finally
    FreeMem(STR);
  end;
end;

Function EvalIntegerByLayerName(const andHandle : ANE_PTR;
         const LayerName : string; var LayerHandle : ANE_PTR;
         StringToEvaluate : string) : ANE_INT32;
var
  An_ANE_STR : ANE_STR;
begin
  GetMem(An_ANE_STR, Length(LayerName) + 1);
  try
    StrPCopy(An_ANE_STR,LayerName);
    LayerHandle := ANE_LayerGetHandleByName(andHandle , An_ANE_STR);
  finally
    FreeMem(An_ANE_STR);
  end;
  result := EvalIntegerByLayerHandle(andHandle, LayerHandle, StringToEvaluate);
end;

Function EvalDoubleByLayerHandle(const andHandle, LayerHandle : ANE_PTR;
         StringToEvaluate : string) : ANE_DOUBLE;
var
  STR : ANE_STR;
begin
  GetMem(STR, Length(StringToEvaluate) + 1);
  try
    StrPCopy(STR, StringToEvaluate);
    ANE_EvaluateStringAtLayer(andHandle,LayerHandle,kPIEFloat,
       STR,@result );
  finally
    FreeMem(STR);
  end;
end;

Function EvalDoubleByLayerName(const andHandle : ANE_PTR;
         const LayerName : string; var LayerHandle : ANE_PTR;
         StringToEvaluate : string) : ANE_DOUBLE;
var
  An_ANE_STR : ANE_STR;
begin
  GetMem(An_ANE_STR, Length(LayerName) + 1);
  try
    StrPCopy(An_ANE_STR,LayerName);
    LayerHandle := ANE_LayerGetHandleByName(andHandle , An_ANE_STR);
  finally
    FreeMem(An_ANE_STR);
  end;
  result := EvalDoubleByLayerHandle(andHandle, LayerHandle, StringToEvaluate);
end;

procedure GetGrid(const CurrentModelHandle : ANE_PTR; const LayerName : string;
  var LayerHandle : ANE_PTR; var NRow, NCol : ANE_INT32;
  var MinX, MaxX, MinY, MaxY, GridAngle : ANE_DOUBLE);
var
  StringToEvaluate : string;
begin
  StringToEvaluate := 'NumRows()';
  NRow := EvalIntegerByLayerName(CurrentModelHandle,
    LayerName,LayerHandle,StringToEvaluate);

  StringToEvaluate := 'NumColumns()';
  NCol := EvalIntegerByLayerHandle(CurrentModelHandle,
    LayerHandle,StringToEvaluate);

  StringtoEvaluate := 'NthColumnPos(0)' ;
  MinX := EvalDoubleByLayerHandle(CurrentModelHandle,
    LayerHandle,StringToEvaluate);

  StringtoEvaluate := 'NthColumnPos(' + IntToStr(NCol) + ')' ;
  MaxX := EvalDoubleByLayerHandle(CurrentModelHandle,
    LayerHandle,StringToEvaluate);

  StringtoEvaluate := 'NthRowPos(0)' ;
  MinY := EvalDoubleByLayerHandle(CurrentModelHandle,
    LayerHandle,StringToEvaluate);

  StringtoEvaluate := 'NthRowPos(' + IntToStr(NRow) + ')' ;
  MaxY := EvalDoubleByLayerHandle(CurrentModelHandle,
    LayerHandle,StringToEvaluate);

  StringtoEvaluate := 'If(IsNA(GridAngle()), 0.0, GridAngle())';
  GridAngle := EvalDoubleByLayerHandle(CurrentModelHandle,
    LayerHandle,StringToEvaluate);

end;

Procedure GetGridAngle(const CurrentModelHandle : ANE_PTR;
  const LayerName : string; var LayerHandle : ANE_PTR ;
  var GridAngle : ANE_DOUBLE);
var
  StringtoEvaluate : String;

begin
  StringtoEvaluate := 'If(IsNA(GridAngle()), 0.0, GridAngle())';
  GridAngle := EvalDoubleByLayerName(CurrentModelHandle,LayerName,
    LayerHandle,StringToEvaluate);

end;

procedure RotatePointsToGrid(var X, Y : double; GridAngle: double );
var
  PointDistance, PointAngle : double;
begin

  if (X = 0)
  then
    begin
      PointDistance := Y;
      If Y > 0
      then
        begin
          PointAngle := -Pi/2;
        end
      else
        begin
          PointAngle := Pi/2;
        end;
    end
  else
    begin
      PointDistance := Sqrt(Sqr(X) + Sqr(Y));
      PointAngle := ArcTan(Y/X);
      if X < 0 then
      begin
        PointAngle := PointAngle - Pi ;
      end;
    end;
  // Rotate by Grid Angle
  PointAngle := PointAngle - GridAngle;
  If PointAngle < Pi then
  begin
    PointAngle := PointAngle + 2*Pi;
  end;
  // Convert rotated coordinates back to cartesian coordinates.
  X := PointDistance * Cos(PointAngle);
  Y := PointDistance * Sin(PointAngle);

end;

procedure RotatePointsFromGrid(var X, Y : double; GridAngle : double);
begin
  GridAngle := - GridAngle;
  RotatePointsToGrid(X,Y,GridAngle);
end;

end.
