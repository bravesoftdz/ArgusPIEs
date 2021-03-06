unit MFMODRetardation;

interface

uses ANE_LayerUnit;

type
  TMOCRetardationParam = class(T_ANE_ParentIndexLayerParam)
    class Function ANE_ParamName : string ; override;
    function Value : string; override;
  end;

  TMOCRetardationLayer = Class(T_ANE_InfoLayer)
    constructor Create( ALayerList : T_ANE_LayerList;
            Index: Integer); override;
    class Function ANE_LayerName : string ; override;
  end;

implementation

Uses Variables;

ResourceString
  kMFMOCRetardation = 'Retardation Unit';

class Function TMOCRetardationParam.ANE_ParamName : string ;
begin
  result := kMFMOCRetardation;
end;

function TMOCRetardationParam.Value : string;
begin
  result := '1';
end;
//---------------------------
constructor TMOCRetardationLayer.Create( ALayerList : T_ANE_LayerList;
            Index: Integer);
begin
  inherited Create(ALayerList, Index);
  Interp := leExact;
  Lock := Lock - [llType];
  ModflowTypes.GetMFMOCRetardationParamType.Create(ParamList, -1);
end;

class Function TMOCRetardationLayer.ANE_LayerName : string ;
begin
  result := kMFMOCRetardation;
end;


end.
 