unit MFMOCSorbDecay;

interface

{MFMOCSorbDecay defines the "Sorbed Decay Coef Unit[i]" layer
 and the associated parameter and Parameterlist.}

uses ANE_LayerUnit, SysUtils;

type
  TMOCSorbDecayCoefParam = class(T_ANE_LayerParam)
    class Function ANE_ParamName : string ; override;
    function Units : string; override;
  end;

  TMOCSorbDecayCoefParamList = class( T_ANE_IndexedParameterList)
    constructor Create( AnOwner :T_ANE_ListOfIndexedParameterLists;
                Position: Integer);  override;
  end;

  TMOCSorbDecayCoefLayer = Class(T_ANE_InfoLayer)
    constructor Create( ALayerList : T_ANE_LayerList;
            Index: Integer); override;
    class Function ANE_LayerName : string ; override;
  end;

implementation

uses Variables;

ResourceString
  kMFSorbDecayCoefUnit = 'Sorbed Decay Coef Unit';
  kMFSorbDecayCoef = 'Sorbed Decay Coef';

//---------------------------
class Function TMOCSorbDecayCoefParam.ANE_ParamName : string ;
begin
  result := kMFSorbDecayCoef;
end;

function TMOCSorbDecayCoefParam.Units : string;
begin
  result := '1/T';
end;

//---------------------------
constructor TMOCSorbDecayCoefParamList.Create( AnOwner :T_ANE_ListOfIndexedParameterLists;
                Position: Integer);
begin
  inherited Create( AnOwner, Position);

  if frmMODFLOW.cbIDKTIM_SorbDecay.Checked then
  begin
    ModflowTypes.GetMFMOCSorbDecayCoefParamType.Create( self, -1);
  end;

end;

//---------------------------
constructor TMOCSorbDecayCoefLayer.Create( ALayerList : T_ANE_LayerList;
            Index: Integer);
var
  TimeIndex : Integer;
  NumberOfTimes : integer;
begin
  inherited Create(ALayerList, Index);

  ModflowTypes.GetMFMOCSorbDecayCoefParamType.Create( ParamList, -1);

  NumberOfTimes := StrToInt(frmMODFLOW.edNumPer.Text);
  For TimeIndex := 1 to NumberOfTimes do
  begin
    ModflowTypes.GetMFMOCSorbDecayCoefTimeParamListType.Create(IndexedParamList2, -1);
  end;

end;

class Function TMOCSorbDecayCoefLayer.ANE_LayerName : string ;
begin
  result := kMFSorbDecayCoefUnit;
end;

end.
