unit ProjectPIE;

interface

uses AnePIE;

const PROJECT_PIE_VERSION = 2;

type
  PIEProjectNew   = function (aneHandle : ANE_PTR ; rPIEHandle :  ANE_PTR_PTR ;
    returnLayerTemplate : ANE_STR_PTR  ) : ANE_BOOL ; cdecl;
  PIEProjectEdit  = function (aneHandle : ANE_PTR ; PIEHandle  :  ANE_PTR  )
    : ANE_BOOL ; cdecl;
  PIEProjectClean = procedure (aneHandle : ANE_PTR ;
    PIEHandle  :  ANE_PTR  ); cdecl;
  PIEProjectSave  = procedure (aneHandle : ANE_PTR ; PIEHandle  :  ANE_PTR  ;
    rSaveInfo : ANE_STR_PTR ); cdecl;
  PIEProjectLoad  = procedure (aneHandle : ANE_PTR ; rPIEHandle :  ANE_PTR_PTR ;
    const LoadInfo : ANE_STR ); cdecl;

const  kProjectDisplaysDialog	  	= $1  ;
const  kProjectShouldSave	     	= $2  ;
const  kProjectCanEdit		  	= $4  ;
const  kProjectShouldClean	     	= $8  ;
const  kCallEditAfterNewProject	     	= $10 ;

type EProjectPIEFlags = integer;

ProjectPIEDesc = record
    version            :    ANE_INT32		     ;
    name               :    ANE_STR		     ;
    projectFlags       :    EProjectPIEFlags         ;
    createNewProc      :    PIEProjectNew	     ;
    editProjectProc    :    PIEProjectEdit	     ;
    cleanProjectProc   :    PIEProjectClean	     ;
    saveProc           :    PIEProjectSave	     ;
    loadProc           :    PIEProjectLoad	     ;
end;

implementation

end.
