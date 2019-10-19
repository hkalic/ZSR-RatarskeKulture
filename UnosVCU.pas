unit UnosVCU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UnosTemplate, Db, DBTables, RxQuery, StdCtrls, Buttons, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, ExtCtrls, ComCtrls, DBCtrls, ToolWin, Mask, dxEditor,
  dxExEdtr, dxEdLib, dxDBELib;

type
  TFUnosVCU = class(TFUnosTemplate)
    sVCU: TTable;
    sVCUVCU_oznaka: TStringField;
    sVCUVCU_Status: TStringField;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    ColorDialog1: TColorDialog;
    dxDBButtonEdit1: TdxDBButtonEdit;
    Panel3: TPanel;
    sVCUBoja: TStringField;
    procedure dsTableDataChange(Sender: TObject; Field: TField);
    procedure dxDBButtonEdit1ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUnosVCU: TFUnosVCU;

implementation

{$R *.DFM}

procedure TFUnosVCU.dsTableDataChange(Sender: TObject; Field: TField);
begin
  inherited;
     Panel3.Color:=StrToInt(sVCUBoja.Value);
end;

procedure TFUnosVCU.dxDBButtonEdit1ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
    if ColorDialog1.Execute then
    begin
        sVCU.Edit;
        sVCU.FieldByName('boja').Value:=IntToStr(ColorDialog1.Color);
//        sVCU.Post;
    end;
end;

end.
