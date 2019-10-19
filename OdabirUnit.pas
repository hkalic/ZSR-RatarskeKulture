unit OdabirUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, ExtCtrls, Db, DBTables;

type
  TOdabir = class(TForm)
    Panel1: TPanel;
    dxDBGrid1: TdxDBGrid;
    qOdabir: TQuery;
    dsOdabir: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Odabir: TOdabir;

implementation

Uses Main, PojamUnit;

{$R *.DFM}

procedure TOdabir.FormShow(Sender: TObject);
begin
    qOdabir.Open;
    dxDBGrid1.CreateDefaultColumns(dxDBGrid1.DataSource.DataSet,dxDBGrid1);
    try
        dxDBGrid1.ColumnByFieldName('Sifra_sorte').Visible:=False;
    except
    end;
    try
        dxDBGrid1.ColumnByFieldName('Sifra_partnera').Visible:=False;
    except
    end;
end;

procedure TOdabir.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    try
        SifSorta:=qOdabir.FieldByName('Sifra_sorte').AsInteger;
    except
        SifSorta:=0;
    end;
    try
        SifPartner:=qOdabir.FieldByName('Sifra_partnera').AsInteger;
    except
        SifPartner:=0;
    end;
    qOdabir.Close;
    dxDBGrid1.DestroyColumns;
end;

procedure TOdabir.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=27 then Close
    else if key=13 then Close;
end;

procedure TOdabir.dxDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['A'..'Z','a'..'z','0'..'9','š','ð','è','æ','ž','Š','Ð','Ž','Æ','È'] then
  begin
    PojamForm.Edit1.Text := Key;
    PojamForm.Edit1.SelStart := 1;
    PojamForm.ShowModal;
    if PojamForm.ModRes then
        qOdabir.Locate(dxDBGrid1.FocusedField.FieldName,PojamForm.Edit1.Text,[loCaseInsensitive, loPartialKey]);
  end;
end;

end.
