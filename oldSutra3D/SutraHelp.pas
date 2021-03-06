unit SutraHelp;

interface

{ModflowHelp defines a PIE function that displays the help file for the
 MODFLOW GUI when called from the PIEs menu in Argus ONE.}

uses AnePIE, Forms, Windows;

procedure ShowSutraHelp(aneHandle : ANE_PTR;
                  const  fileName : ANE_STR;  layerHandle : ANE_PTR) ; cdecl;

implementation

uses UtilityFunctions, ArgusFormUnit;

procedure ShowSutraHelp(aneHandle : ANE_PTR;
                  const  fileName : ANE_STR;  layerHandle : ANE_PTR) ; cdecl;
var
  HelpFileDirectory : string;
begin
  GetDllDirectory(DLLName, HelpFileDirectory);

  Application.HelpFile := HelpFileDirectory  + '\' + 'Sutra GUI.hlp';
  Application.HelpCommand(HELP_FINDER, 0);
end;

end.
