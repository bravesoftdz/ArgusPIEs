�
 TFRMSUTRA 0�f  TPF0�	TfrmSutrafrmSutraLeft#Top� Width�HeightCaptionSutra Project Info	Font.NameTimes New RomanPixelsPerInch`
TextHeight TPageControlPageControl1Left Top Width�Height�
ActivePagetabAboutAlignalClient	MultiLine	TabOrder  	TTabSheettabAboutCaptionAbout TLabelLabel17LeftPTop`Width#HeightCaptionVersion  TLabel
lblVersionLeft� Top`Width.HeightCaption
lblVersion  TVersionLabelVersionLabel1Left� Top`Width� HeightVersionResourcevrFileVersionVersionResourceKeyFileVersion
InfoPrefixFile Version:ShowInfoPrefix	LangCharset-1  TPanel
pnlAuthorsLeftTopWidth�HeightQAnchorsakLeftakTopakRightakBottom 
BevelOuter	bvLowered
BevelWidthConstraints.MinHeight>TabOrder  TLabelLabel1LeftTopWidth�HeightAlignalTop	AlignmenttaCenterCaptionGraphical User Interface  TLabelLabel2LeftTopWidth�HeightAlignalTop	AlignmenttaCenterCaption"for SUTRA (U.S. Geological Survey)  TLabelLabel3LeftTopWidth�HeightAlignalTop	AlignmenttaCenterCaption'using Argus Open Numerical Environments  TLabelLabel4LeftTop,Width�HeightAlignalTop	AlignmenttaCenterCaption8Clifford I. Voss, David Boldt, and Allen Shapiro  (USGS)LayouttlBottom   	TGroupBox	GroupBox1LeftToppWidth�Height� TabOrder TLabelLabel5LeftTopWidth'HeightCaptionSUTRA:  TLabelLabel6Left0TopWidthGHeight*Caption�2-Dimensional Ground-Water Flow, Saturated or Unsaturated Medium, Variable- or Constant-Density Fluid, Transport of Solute or Energy, Single-Species ReactionsWordWrap	  TLabelLabel7LeftTopLWidthKHeightCaptionDocumentation:  TLabelLabel8LeftTop\Width�Height*Caption�Voss, C. I., A finite-element simulation model for saturated-unsaturated, fluid-density-dependent ground-water flow with energy transport or chemically-reactive single-species solute tranport, U.S. Geological Survey, WRIR 84-4369, (rev 1990), 409p. 1984.WordWrap	   	TGroupBox	GroupBox2LeftTop Width�Height� Constraints.MinHeight� TabOrder TLabelLabel9LeftTopWidth� HeightCaption*Argus ONE - SUTRA Graphical User Interface  TLabelLabel10LeftTop$WidthKHeightCaptionDocumentation:  TLabelLabel11LeftTop8Width�HeightCaption�Voss, C. I., Boldt, D., Shapiro, A.,  A Graphical-User Interface for the U.S. Geological Survey SUTRA Code Using Argus ONE, U.S. Geological Survey, OFR 97-421, 1997.WordWrap	  TLabelLabel12LeftTop`WidthjHeight*Caption�Documents on this interface can be found on the World Wide Web at http://water.usgs.gov/software/ground_water.html and other information from http://www.argusint.com/WordWrap	    	TTabSheettabConfigurationCaptionConfiguration
ImageIndex TLabelLabel13LeftTop(Width[HeightCaptionJNote: Interface Configuration cannot be modified after leaving this window  TRadioButton	rbGeneralLeft TopWidth� HeightCaption General (Complete SUTRA dataset)TabOrder OnClickrbGeneralClick  TRadioButton
rbSpecificLeft TopWidth	HeightCaption,Specific  (Easier - Choose model type below)Checked	TabOrderTabStop	OnClickrbGeneralClick  TRadioGroup
rgMeshTypeLeftTopHWidth�Height1CaptionType of Meshing	ItemIndexItems.Strings-FISHNET (a deformable grid of quadrilaterals)9IRREGULAR (ArgusONE chooses element shapes and locations) TabOrderOnClickrgMeshTypeClick  	TGroupBox
GroupBox26LeftTopWidth�Height9CaptionModel ThicknessTabOrder TRadioButtonrbUserSpecifiedThicknessLeftTopWidthQHeightCaption/USER-SPECIFIED (constant or variable thickness)Checked	TabOrder TabStop	OnClickrbUserSpecifiedThicknessClick  TRadioButtonrbCylindricalLeftTop WidthHeightCaption'CYLINDRICAL (simulation of radial flow)EnabledTabOrderOnClickrbUserSpecifiedThicknessClick   	TGroupBox
GroupBox27LeftTop� Width�HeightICaptionTransport ConditionsTabOrder TRadioButtonrbSoluteVarDensLeftTopWidth!HeightCaption/SOLUTE (Variable-density fluid, using Pressure)EnabledTabOrder OnClickrbSoluteVarDensClick  TRadioButtonrbSoluteConstDensLeftTop Width1HeightCaption5SOLUTE (Constant-density fluid, using Hydraulic Head)Checked	TabOrderTabStop	OnClickrbSoluteVarDensClick  TRadioButtonrbEnergyLeftTop0Width!HeightCaption/ENERGY (Variable-density fluid, using Pressure)EnabledTabOrderOnClickrbSoluteVarDensClick   	TGroupBox
GroupBox28LeftTopxWidth�Height9CaptionFlow ConditionsTabOrder TRadioButtonrbSatLeftTopWidthqHeightCaption	SATURATEDChecked	TabOrder TabStop	OnClickrbSatUnsatClick  TRadioButton
rbSatUnsatLeftTop Width� HeightCaptionSATURATED-UNSATURATEDEnabledTabOrderOnClickrbSatUnsatClick   	TGroupBox
GroupBox29LeftTop8Width�Height9Caption"Orientation of 2-Dimensional ModelTabOrder TRadioButtonrbArealLeftTopWidthqHeightCaptionAREALChecked	TabOrder TabStop	OnClickrbArealClick  TRadioButtonrbCrossSectionLeftTop WidthHeightCaptionCROSS-SECTIONAL or DIPPEDTabOrderOnClickrbArealClick    	TTabSheettabHeadingsCaptionHeadings
ImageIndex TLabelLabel84LeftTop� Width'HeightCaptionNTOBS:  TLabelLabel89Left� Top� Width� HeightCaption?Maximum number of time steps on which observations will be madeWordWrap	  	TGroupBox	GroupBox3LeftTopWidth�HeightACaptionInput Data Heading -> dataset 1TabOrder  TLabelLabel14LeftTop Width-HeightCaptionSIMULA:  	TComboBoxcomboSIMULALeft@Top Width� HeightStylecsDropDownList
ItemHeightItems.StringsSUTRA ENERGY TRANSPORTSUTRA SOLUTE TRANSPORT TabOrder    	TGroupBox	GroupBox4LeftTopPWidth�HeightQCaptionOutput Heading -> dataset 2TabOrder TLabelLabel15LeftTopWidth+HeightCaptionTITLE1:  TLabelLabel16LeftTop0Width+HeightCaptionTITLE2:  TEditedTitle1Left@TopWidthaHeightTabOrder Text2Argus Numerical Environments Sample SUTRA Defaults  TEditedTitle2Left@Top0WidthaHeightTabOrderTextUSGS example   TArgusDataEntryadeNTOBSLeftHTop� Width� Height
ItemHeightTabOrderText0DataType	dtIntegerMax       ��?ChangeDisabledColor	   	TTabSheettabModesCaptionModes, Numerical Controls
ImageIndex 	TGroupBox	GroupBox6LeftTopWidth�Height� Caption$Simulation Mode Options -> dataset 4TabOrder  TLabelLabel18LeftTopWidth,HeightCaptionIUNSAT:  TLabelLabel19LeftTop0Width&HeightCaptionISSFLO:  TLabelLabel20LeftTopHWidth(HeightCaptionISSTRA:  TLabelLabel21LeftTop`Width%HeightCaptionIREAD:  	TComboBoxcomboIUNSATLeftHTopWidthQHeightStylecsDropDownListEnabled
ItemHeightItems.StringsSaturated flow onlyUnsaturated and saturated flow TabOrder   	TComboBoxcomboISSFLOLeftHTop0WidthQHeightStylecsDropDownList
ItemHeightItems.StringsTransient groundwater flowSteady-state groundwater flow TabOrderOnChangecomboISSFLOChange  	TComboBoxcomboISSTRALeftHTopHWidthQHeightStylecsDropDownList
ItemHeightItems.Strings&Transient @energy or solute@ transport)Steady-state @energy or solute@ transport TabOrderOnChangecomboISSTRAChange  	TComboBox
comboIREADLeftHTop`WidthQHeightStylecsDropDownList
ItemHeightItems.Strings0Cold start (first time step of a simulation) (1)4Warm start (read data that was stored by SUTRA) (-1) TabOrder   	TGroupBox	GroupBox7LeftTop� Width�HeightyCaption)Numerical Control Parameters -> dataset 5TabOrder TLabelLabel22LeftTopWidthHeightCaptionUP:  TLabelLabel23LeftTop0Width!HeightCaptionGNUP:  TLabelLabel24LeftTopHWidth"HeightCaptionGNUU:  TLabelLabel25Left� Top Width}HeightCaptionFractional upstream weight  TLabellblGNUP_DescLeft� Top8Width� HeightCaption$@Pressure boundary-condition factor@  TLabellblGNUU_DescLeft� TopPWidth� HeightCaption(@Conc or Temp@ boundary-condition factor  TArgusDataEntryadeFracUpstreamWeightLeft@TopWidthYHeight
ItemHeightTabOrder Text0DataTypedtRealMax       ��?CheckMax	CheckMin	ChangeDisabledColor	  TArgusDataEntryadeGNUPLeft@Top0WidthYHeight
ItemHeightTabOrderText0.1DataTypedtRealMax       ��?ChangeDisabledColor	  TArgusDataEntryadeGNUULeft@TopHWidthYHeight
ItemHeightTabOrderText1DataTypedtRealMax       ��?ChangeDisabledColor	    	TTabSheettabTemporalCaptionTemporal Controls
ImageIndex 	TGroupBox	GroupBox8LeftTopWidth�Height1Caption7Temporal Control and Solution Cycling Data -> dataset 6TabOrder  	TGroupBox
GroupBox10LeftTopWidth�HeightaTabOrder  TLabelLabel28LeftTopWidth)HeightCaptionITMAX:  TLabelLabel29LeftTop(Width!HeightCaptionDELT:  TLabelLabel30LeftTop@Width%HeightCaptionTMAX:  TLabelLabel37Left� TopWidth� HeightCaption2Maximum allowed number of time steps in simulation  TLabelLabel38Left� Top(Width� HeightCaption'Duration of initial time step (seconds)  TLabelLabel39Left� Top@Width� HeightCaption)Maximum allowed simulation time [seconds]  TArgusDataEntryadeITMAXLeft8TopWidthAHeight
ItemHeightTabOrder Text1DataType	dtIntegerMax       ��?ChangeDisabledColor	  TArgusDataEntryadeDELTLeft8Top(WidthAHeight
ItemHeightTabOrderText1DataTypedtRealMax       ��?ChangeDisabledColor	  TArgusDataEntryadeTMAXLeft8Top@WidthAHeight
ItemHeightTabOrderText1DataTypedtRealMax       ��?ChangeDisabledColor	   	TGroupBox
GroupBox11LeftTopxWidth�HeightaTabOrder TLabelLabel31LeftTopWidth%HeightCaptionITCYC:  TLabelLabel32LeftTop(Width4HeightCaptionDTMULT:  TLabelLabel33LeftTop@Width-HeightCaptionDTMAX:  TLabelLabel40Left� TopWidth� HeightCaption.Number of time steps in time step change cycle  TLabelLabel41Left� Top(Width� HeightCaption%Multiplier for time step change cycle  TLabelLabel42Left� Top@Width� HeightCaption+Maximum allowed time step when using DTMULT  TArgusDataEntryadeITCYCLeft8TopWidthAHeight
ItemHeightTabOrder Text9999DataType	dtIntegerMax       ��?ChangeDisabledColor	  TArgusDataEntry	adeDTMULTLeft8Top(WidthAHeight
ItemHeightTabOrderText1DataTypedtRealMax       ��?ChangeDisabledColor	  TArgusDataEntryadeDTMAXLeft8Top@WidthAHeight
ItemHeightTabOrderText1DataTypedtRealMax       ��?ChangeDisabledColor	   	TGroupBox
GroupBox12LeftTop� Width�HeightITabOrder TLabelLabel34LeftTopWidth(HeightCaptionNPCYC:  TLabelLabel35LeftTop(Width)HeightCaptionNUCYC:  TLabellblNPCYC_DescLeft� TopWidth� HeightCaption1Number of time steps in @Pressure@ solution cycle  TLabellblNUCYC_DescLeft� Top(WidthHeightCaption5Number of time steps in @Conc or Temp@ solution cycle  TArgusDataEntryadeNPCYCLeft8TopWidthAHeight
ItemHeightTabOrder Text1OnExitadeNPCYCExitDataTypedtRealMax       ��?ChangeDisabledColor	  TArgusDataEntryadeNUCYCLeft8Top(WidthAHeight
ItemHeightTabOrderText1OnExitadeNUCYCExitDataTypedtRealMax       ��?ChangeDisabledColor	    	TGroupBox	GroupBox9LeftTop8Width�HeightACaption.Simulation Starting Time -> dataset 1, UNIT K2TabOrder TLabelLabel36LeftTopWidth/HeightCaptionTSTART:  TLabelLabel45Left� TopWidth� HeightCaptioneElapsed time at which the initial conditions for simulation specified in  UNIT K2 are given (seconds)WordWrap	  TArgusDataEntryadeTSARTLeftHTopWidthAHeight
ItemHeightTabOrder Text0DataTypedtRealMax       ��?ChangeDisabledColor	    	TTabSheet	tabOutputCaptionOutput
ImageIndex TLabelLabel83LeftTop\Width0HeightCaption
Sutra Path  	TGroupBox
GroupBox13LeftTopWidth�Height� Caption(Output Controls and Options -> dataset 7TabOrder  TLabelLabel47LeftTopPWidth2HeightCaptionKNODAL:  TLabelLabel48LeftTophWidth3HeightCaptionKELMNT:  TLabelLabel49LeftTopxWidth*HeightCaptionKINCID:  	TGroupBox
GroupBox16LeftTopWidth�Height9TabOrder  TLabelLabel46LeftTopWidth-HeightCaptionNPRINT:  TLabelLabel54Left� TopWidth� HeightCaption%Produce output each NPRINT time steps  TArgusDataEntry	adeNPRINTLeft@TopWidth9Height
ItemHeightTabOrder Text9999DataType	dtIntegerMax       ��?CheckMin	ChangeDisabledColor	   	TGroupBox
GroupBox17LeftTop� Width�Height1TabOrder TLabelLabel50LeftTopWidth HeightCaptionKVEL:  TLabelLabel51LeftTopWidth)HeightCaptionKBUDG:  	TCheckBoxcbKVELLeft@TopWidthHeightCaption+Print fluid velocities at element centroidsTabOrder   	TCheckBoxcbKBUDGLeft@TopWidthHeightCaption/Print fluid mass and @energy or solute@ budgetsTabOrder   	TCheckBoxcbKNODALLeftPTopPWidthAHeightCaption;Print node coordinates, nodewise thicknesses and porositiesTabOrder  	TCheckBoxcbKELMNTLeftPTop`WidthQHeightCaption1Print element @permeabilities@ and dispersivitiesTabOrder  	TCheckBoxcbKINCIDLeftPTopxWidth)HeightCaptionPrint node incidencesTabOrder   	TGroupBox
GroupBox14LeftTop� Width�Height1Caption#Simulation Mode Option -> dataset 4TabOrder TLabelLabel52LeftTopWidth*HeightCaptionISTORE:  TLabelLabel55Left� TopWidth� HeightCaption$Store results each ISTORE time steps  TArgusDataEntry	adeISTORELeft8TopWidth9Height
ItemHeightTabOrder Text9999DataType	dtIntegerMax       ��?CheckMin	ChangeDisabledColor	   	TGroupBox
GroupBox15LeftTopWidth�Height9Caption#Observation Node Data -> dataset 21TabOrder TLabelLabel53LeftTopWidth0HeightCaptionNOBCYC:  TLabelLabel56LeftxTopWidth HeightCaptionuObservations will be made at all observation nodes every NOBCYC time steps (if set to zero, no observations are made)WordWrap	  TArgusDataEntry	adeNOBCYCLeft8TopWidth9Height
ItemHeightTabOrder Text0DataType	dtIntegerMax       ��?CheckMin	ChangeDisabledColor	   TBitBtn	btnBrowseLeft`TopWWidthKHeightCaptionBrowseTabOrderOnClickbtnBrowseClick
Glyph.Data
z  v  BMv      v   (                                       �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3333�33;3�3333�;�w{�w{�7����s3�    33wwwwww330����337�333330����337��?�330� 337�sws330����3?����?���� �ww�wssw;������7w��?�ww30�  337�swws330���3337��7�330��3337�sw�330�� ;�337��w7�3�  3�33www3w�;�3;�3;�7s37s37s�33;333;s3373337	NumGlyphs  TEdit
edRunSutraLeftPTopXWidth� HeightTabOrderTextC:\SUTRA\sutra.exe   	TTabSheettabIterationCaption	Iteration
ImageIndex 	TGroupBox
GroupBox18LeftTopWidth�Height� CaptionIteration Controls -> dataset 8TabOrder  TLabelLabel57LeftTop8Width0HeightCaptionITRMAX:  TLabelLabel58LeftTopPWidth+HeightCaptionRPMAX:  TLabelLabel59LeftTophWidth,HeightCaptionRUMAX:  TLabelLabel60Left� Top8Width� HeightCaption2Maximum number of iterations allowed per time step  TLabellblRPMAX_DescLeft� TopHWidth� HeightCaption@Absolute iteration convergence criterion for @Pressure@ solutionWordWrap	  TLabelLabel62Left� TophWidth&HeightCaption?Absolute iteration convergence criterion for Transport solution  TRadioButtonrbNonIterativeLeftTopWidth� HeightCaptionNon-iterative solutionChecked	TabOrder TabStop	OnClickrbIterativeClick  TRadioButtonrbIterativeLeftTop Width� HeightCaption0Iterative solution for resolving non-linearitiesTabOrderOnClickrbIterativeClick  TArgusDataEntry	adeITRMAXLeftHTop0WidthAHeightColor	clBtnFaceEnabled
ItemHeightTabOrderText1DataType	dtIntegerMax       ��?ChangeDisabledColor	  TArgusDataEntryadeRPMAXLeftHTopHWidthAHeightColor	clBtnFaceEnabled
ItemHeightTabOrderText0DataTypedtRealMax       ��?ChangeDisabledColor	  TArgusDataEntryadeRUMAXLeftHTop`WidthAHeightColor	clBtnFaceEnabled
ItemHeightTabOrderText0DataTypedtRealMax       ��?ChangeDisabledColor	    	TTabSheetTabFluidPropCaptionFluid Properties
ImageIndex 	TGroupBox
GroupBox19LeftTopWidth�HeightCaptionFluid Properties -> dataset 9TabOrder  TLabelLabel69Left Top� Width HeightCaptionVISC0:  TLabelLabel76LeftTop� Width� HeightCaption'For Solute transport: Fluid Viscosity.   TLabellblVISC0_DescLeft� Top� Width� HeightCaption4For Energy transport: Viscosity units scaling factor  	TGroupBox
GroupBox20LeftTopWidth�HeightaTabOrder  TLabelLabel63LeftTopWidth0HeightCaptionCOMPFL:  TLabelLabel64LeftTop0WidthHeightCaptionCW:  TLabelLabel65LeftTopHWidth0HeightCaptionSIGMAW:  TLabelLabel70Left� TopWidth_HeightCaptionFluid compressibility  TLabelLabel71Left� Top0Width� HeightCaption3Fluid specific heat (set to 1 for solute transport)  TLabelLabel72Left� Top@Width� HeightCaptioniFor Solute transport: Diffusivity of solute in fluid. For Energy transport: Thermal conductivity of fluidWordWrap	  TArgusDataEntry	adeCOMPFLLeftHTopWidth9Height
ItemHeightTabOrder Text0DataTypedtRealMax       ��?ChangeDisabledColor	  TArgusDataEntryadeCWLeftHTop(Width9Height
ItemHeightTabOrderText1DataTypedtRealMax       ��?ChangeDisabledColor	  TArgusDataEntry	adeSIGMAWLeftHTop@Width9Height
ItemHeightTabOrderText0DataTypedtRealMax       ��?ChangeDisabledColor	   	TGroupBox
GroupBox21LeftTopxWidth�HeightaTabOrder TLabelLabel66LeftTopWidth+HeightCaptionRHOW0:  TLabelLabel67LeftTop0Width3HeightCaptionURHOW0:  TLabelLabel68LeftTopHWidth-HeightCaptionDRWDU:  TLabellblRHOW0_DescLeft� TopWidth� HeightCaption(Density of fluid at base @Conc or Temp@   TLabellblURHOW0_DescLeft� Top0Width� HeightCaptionBase value of @Conc or Temp@  TLabellblDRWDU_DescLeft� TopHWidthHeightCaption8Fluid coefficient of density change with @Conc or Temp@   TArgusDataEntryadeRHOW0LeftHTopWidth9Height
ItemHeightTabOrder Text1DataTypedtRealMax       ��?ChangeDisabledColor	  TArgusDataEntry	adeURHOW0LeftHTop(Width9Height
ItemHeightTabOrderText0DataTypedtRealMax       ��?ChangeDisabledColor	  TArgusDataEntryadeDRWDULeftHTop@Width9Height
ItemHeightTabOrderText0DataTypedtRealMax       ��?ChangeDisabledColor	   TArgusDataEntryadeVISC0LeftXTop� Width9Height
ItemHeightTabOrderText1DataTypedtRealMax       ��?ChangeDisabledColor	    	TTabSheettabMatrixAdsorptionCaptionSolid Matrix, Adsorption
ImageIndex 	TGroupBox
GroupBox22LeftTopWidth�HeightyCaption%Solid Matrix Properties -> dataset 10TabOrder  TLabelLabel78LeftTopWidth5HeightCaptionCOMPMA:  TLabelLabel79LeftTop0WidthHeightCaptionCS:  TLabelLabel80LeftTopHWidth*HeightCaptionSIGMAS:  TLabelLabel81LeftTop`WidthHeightCaptionRHOS:  TLabelLabel85Left� TopWidth� HeightCaptionSolid matrix compressibility  TLabelLabel86Left� Top0WidthmHeightCaptionSolid grain specific heat  TLabelLabel87Left� TopHWidthbHeightCaptionSolid grain diffusivity  TLabelLabel88Left� Top`WidthcHeightCaptionDensity of solid grain  TArgusDataEntry	adeCOMPMALeft@TopWidth9Height
ItemHeightTabOrder Text0DataTypedtRealMax       ��?ChangeDisabledColor	  TArgusDataEntryadeCSLeft@Top(Width9Height
ItemHeightTabOrderText0DataTypedtRealMax       ��?ChangeDisabledColor	  TArgusDataEntry	adeSIGMASLeft@Top@Width9Height
ItemHeightTabOrderText0DataTypedtRealMax       ��?ChangeDisabledColor	  TArgusDataEntryadeRHOSLeft@TopXWidth9Height
ItemHeightTabOrderText2600DataTypedtRealMax       ��?ChangeDisabledColor	   	TGroupBox
GroupBox23LeftTop� Width�HeightaCaption#Adsorption Parameters -> dataset 11TabOrder TLabelLabel82LeftTopWidth2HeightCaptionADSMOD:  TLabellblCHI1LeftTop0WidthHeightCaptionCHI1:  TLabellblCHI2LeftTopHWidthHeightCaptionCHI2:  TLabellblCHI1DescLeft� Top0Width� HeightCaptionFirst distribution coefficient  TLabellblCHI2DescLeft� TopHWidth� HeightCaptionSecond distribution coefficient  TArgusDataEntryadeCHI1Left@Top(Width9Height
ItemHeightTabOrder Text0DataTypedtRealMax       ��?ChangeDisabledColor	  TArgusDataEntryadeCHI2Left@Top@Width9Height
ItemHeightTabOrderText0DataTypedtRealMax       ��?ChangeDisabledColor	  	TComboBoxcomboADSMODLeft@TopWidth� HeightStylecsDropDownList
ItemHeightItems.StringsNONELINEARLANGMUIR
FREUNDLICH TabOrderOnChangecomboADSMODChange    	TTabSheettabProdGravityCaptionProduction, Gravity
ImageIndex	 	TGroupBoxgbEnergySoluteProductionLeftTopWidth�Height� Caption.Production of @Energy or Solute@ -> dataset 12TabOrder  TLabelLabel91LeftTop Width-HeightCaptionPRODF0:  TLabelLabel92LeftTop8Width,HeightCaptionPRODS0:  TLabelLabel93LeftTopPWidth-HeightCaptionPRODF1:  TLabelLabel94LeftTophWidth,HeightCaptionPRODS1:  TLabelLabel97Left� Top Width� HeightCaption*Zero-order rate of production in the fluid  TLabelLabel98Left� Top8Width(HeightCaption@Zero-order rate of production in the immobile phase/solid grains  TLabelLabel99Left� TopPWidth� HeightCaption+First-order rate of production in the fluid  TLabelLabel100Left� TophWidth'HeightCaptionAFirst-order rate of production in the immobile phase/solid grains  TArgusDataEntry	adePRODF0LeftHTopWidth9Height
ItemHeightTabOrder Text0DataTypedtRealMax       ��?ChangeDisabledColor	  TArgusDataEntry	adePRODS0LeftHTop0Width9Height
ItemHeightTabOrderText0DataTypedtRealMax       ��?ChangeDisabledColor	  TArgusDataEntry	adePRODF1LeftHTopHWidth9Height
ItemHeightTabOrderText0DataTypedtRealMax       ��?ChangeDisabledColor	  TArgusDataEntry	adePRODS1LeftHTop`Width9Height
ItemHeightTabOrderText0DataTypedtRealMax       ��?ChangeDisabledColor	   	TGroupBox
GroupBox25LeftTop� Width�HeightqCaptionGravity Vector -> dataset 13TabOrder TLabelLabel95LeftTopWidth(HeightCaptionGRAVX:  TLabelLabel96LeftTop0Width(HeightCaptionGRAVY:  TLabelLabel101Left� TopWidth� HeightCaption/Component of gravity vector in the +X direction  TLabelLabel102Left� Top0Width� HeightCaption/Component of gravity vector in the +Y direction  TArgusDataEntryadeGRAVXLeftHTopWidth9Height
ItemHeightTabOrder Text0DataTypedtRealMax       ��?ChangeDisabledColor	  TArgusDataEntryadeGRAVYLeftHTop(Width9Height
ItemHeightTabOrderText0DataTypedtRealMax       ��?ChangeDisabledColor	    	TTabSheet
tabProblemCaptionProblem
ImageIndex

TabVisible 	TRichEdit	reProblemLeft(Top(Width�HeightTabOrder    	TTabSheettabAdvancedOptionsCaptionAdvanced Options
ImageIndex TBitBtn
btnOpenValLeftTopWidthcHeightHelpContextoCaptionOpen Val FileTabOrder OnClickbtnOpenValClick
Glyph.Data
z  v  BMv      v   (                                       �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3333�33;3�3333�;�w{�w{�7����s3�    33wwwwww330����337�333330����337��?�330� 337�sws330����3?����?���� �ww�wssw;������7w��?�ww30�  337�swws330���3337��7�330��3337�sw�330�� ;�337��w7�3�  3�33www3w�;�3;�3;�7s37s37s�33;333;s3373337	NumGlyphs  TBitBtn
btnSaveValLeftpTopWidthcHeightHelpContextoCaptionSave Val FileTabOrderOnClickbtnSaveValClick
Glyph.Data
z  v  BMv      v   (                                       �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3333 pw 3333wwww3333 �� 3333w�3w3333 �� 3333w��w3333    ?���wwww        wwwwwwww������333337������?����� �̜�w7swwww����9�3?����w�  �𙙓ww77ww�������?���www �  9�3w7ww7w����9�3?��s7w���3y�3w7�?ww3�����3��swws3   33333www33333	NumGlyphs   	TTabSheet
tabPrivateCaption
tabPrivate
ImageIndex
TabVisible TRadioGroup
rgRunSutraLeftTopWidth� Height9CaptionModel input	ItemIndexItems.StringsCreate &Sutra input files'Create Sutra input files and &run Sutra TabOrder   TRadioGrouprgAlertLeftTopHWidth� HeightACaptionAlert level	ItemIndex Items.StringsShow &all warningsWarn &only about invalid modelsShow &no warnings TabOrder  	TCheckBox
cbExternalLeftTop� WidthHeightCaption.External calibration program running Argus ONETabOrder    TPanel	pnlBottomLeft Top�Width�Height)AlignalBottomTabOrder TBitBtnbtnOKLeft�TopWidthKHeightCaption&OKTabOrder KindbkOK  TBitBtn	btnCancelLeftPTopWidthKHeightCaption&CancelTabOrderKindbkCancel   TOpenDialogOpenDialog1
DefaultExtexeFilterGExecutables (*.exe)|*.exe|Batch Files (*.bat)|*.bat|All Files (*.*)|*.*LeftTop�  TSaveDialogSaveDialog1
DefaultExtvalFilter+Val files (*.val)|*.val|All Files (*.*)|*.*Left8Top�   