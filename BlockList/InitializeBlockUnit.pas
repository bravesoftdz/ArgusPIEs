unit InitializeBlockUnit;

interface

uses Classes, SysUtils, Dialogs, ANEPIE;

function GInitializeBlock(myHandle: ANE_PTR; GridName: ANE_STR;
  GridType: ANE_INT32): ANE_INT32;

procedure GInitializeBlockMMFun(const refPtX: ANE_DOUBLE_PTR;
  const refPtY: ANE_DOUBLE_PTR;
  numParams: ANE_INT16;
  const parameters: ANE_PTR_PTR;
  myHandle: ANE_PTR;
  reply: ANE_PTR); cdecl;

implementation

uses ANECB, BlockListUnit, CellVertexUnit, CombinedListUnit, InitializeLists;

function GInitializeBlock(myHandle: ANE_PTR; GridName: ANE_STR;
  GridType: ANE_INT32): ANE_INT32;
var
  GridLayerHandle: ANE_PTR;
  TextToEvaluate: ANE_STR;
  NumRows: ANE_INT32;
  NumColumns: ANE_INT32;
  RowIndex, ColumnIndex: ANE_INT32;
  RowPosition, ColumnPosition: ANE_DOUBLE;
  AReal: double;
  RealBelow: double;
  RealAbove: double;
  AnotherReal: double;
begin
  ClearAndInitializeMainLists;
  ClearAndInitializeRowAndColumnLists;

  GridLayerHandle := ANE_LayerGetHandleByName(myHandle, GridName);

  GridImportOK := False;
  result := 1;
  try
    begin
      TextToEvaluate := 'If(IsNA(NumRows()), 0, NumRows())';
      ANE_EvaluateStringAtLayer(myHandle, GridLayerHandle, kPIEInteger,
        TextToEvaluate, @NumRows);
      TextToEvaluate := 'If(IsNA(NumColumns()), 0, NumColumns())';
      ANE_EvaluateStringAtLayer(myHandle, GridLayerHandle, kPIEInteger,
        TextToEvaluate, @NumColumns);
      if (NumRows = 0) or (NumColumns = 0) then
      begin
        ShowMessage('There is no grid on layer ' + string(GridName));
        result := 0;
      end
      else
      begin
        TextToEvaluate := 'If(IsNA(GridAngle()), 0, GridAngle())';
        ANE_EvaluateStringAtLayer(myHandle, GridLayerHandle,
          kPIEFloat, TextToEvaluate, @GridAngle);
        for RowIndex := 0 to NumRows do
        begin
          TextToEvaluate := PChar('NthRowPos(' + IntToStr(RowIndex) + ')');
          ANE_EvaluateStringAtLayer(myHandle, GridLayerHandle,
            kPIEFloat, TextToEvaluate, @RowPosition);
          RowList.Add(RowPosition);
        end;
        for ColumnIndex := 0 to NumColumns do
        begin
          TextToEvaluate := PChar('NthColumnPos(' + IntToStr(ColumnIndex) +
            ')');
          ANE_EvaluateStringAtLayer(myHandle, GridLayerHandle,
            kPIEFloat, TextToEvaluate, @ColumnPosition);
          ColumnList.Add(ColumnPosition);
        end;
        if (GridType = 1) {// param2 = 1 for a grid-centered grid} then
        begin
          for RowIndex := 0 to RowList.Count - 1 do
          begin
            AReal := RowList.Items[RowIndex];
            AnotherReal := AReal;
            RowMiddleList.Add(AnotherReal);
          end;
          for ColumnIndex := 0 to ColumnList.Count - 1 do
          begin
            AReal := ColumnList.Items[ColumnIndex];
            AnotherReal := AReal;
            ColumnMiddleList.Add(AnotherReal);
          end;
          RowList.Add(RowList[RowList.Count - 1]);
          for RowIndex := RowList.Count - 2 downto 1 do
          begin
            AReal := RowList[RowIndex];
            RealBelow := RowList[RowIndex - 1];
            RowList[RowIndex] := (AReal + RealBelow) / 2;
          end;
          AReal := ColumnList[ColumnList.Count - 1];
          ColumnList.Add(AReal);
          for ColumnIndex := ColumnList.Count - 2 downto 1 do
          begin
            AReal := ColumnList.Items[ColumnIndex];
            RealBelow := ColumnList.Items[ColumnIndex - 1];
            ColumnList.Items[ColumnIndex] := (AReal + RealBelow) / 2;
          end;
        end
        else // block-centered grid
        begin
          for RowIndex := 1 to RowList.Count - 1 do
          begin
            RealAbove := RowList.Items[RowIndex];
            RealBelow := RowList.Items[RowIndex - 1];
            AnotherReal := (RealAbove + RealBelow) / 2;
            RowMiddleList.Add(AnotherReal);
          end;
          for ColumnIndex := 1 to ColumnList.Count - 1 do
          begin
            RealAbove := ColumnList.Items[ColumnIndex];
            RealBelow := ColumnList.Items[ColumnIndex - 1];
            AnotherReal := (RealAbove + RealBelow) / 2;
            ColumnMiddleList.Add(AnotherReal);
          end;
        end;
        GridImportOK := True;
      end;
    end;
  except on Exception do
    begin
      Inc(ErrorCount);
      ShowMessage('Problem importing grid data from layer ' + string(GridName));
      result := 0;
    end;
  end;
end;

procedure GInitializeBlockMMFun(const refPtX: ANE_DOUBLE_PTR;
  const refPtY: ANE_DOUBLE_PTR;
  numParams: ANE_INT16;
  const parameters: ANE_PTR_PTR;
  myHandle: ANE_PTR;
  reply: ANE_PTR); cdecl;

var
  result: ANE_INT32;
  param1: ANE_STR; // name of grid layer
  param: PParameter_array;
  param2_ptr: ANE_INT32_PTR;
  param2: ANE_INT32; // 1 for grid centered grid
begin
  ErrorCount := 0;
  try
    begin
      // Get Grid and information layer handles.
      param := @parameters^;
      param1 := param^[0];
      if numParams > 1 then
      begin
        param2_ptr := param^[1];
        param2 := param2_ptr^;
      end
      else
      begin
        param2 := 0
      end;
      result := GInitializeBlock(myHandle, param1, param2);
    end;
  except on Exception do
    begin
      Inc(ErrorCount);
      MainVertexList.Free;
      //      MainParameterList.Free;
      RowList.Free;
      ColumnList.Free;
      result := 0;
    end;
  end;
  ANE_INT32_PTR(reply)^ := result;
end;

end.

