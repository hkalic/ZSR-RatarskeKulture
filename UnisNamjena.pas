unit UnisNamjena;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UnosTemplate, StdCtrls, DBCtrls, Mask, Db, DBTables, RxQuery, Buttons,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, ExtCtrls, ComCtrls, ToolWin, FR_PTabl;

type
  TUnosNamjena = class(TFUnosTemplate)
    tNamjena: TTable;
    tNamjenaSifraNamjene: TAutoIncField;
    tNamjenaNamjena: TMemoField;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label6: TLabel;
    DBMemo1: TDBMemo;
    procedure NamjenaGridDBLClick(Sender: TObject);
    procedure NamjenaGridKey(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UnosNamjena: TUnosNamjena;

implementation

uses ZahtjevRatarstvo;

{$R *.DFM}

procedure TUnosNamjena.NamjenaGridKey(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin          // samo za odabir Namjena kroz zahtjev
    if key=27 then Close
    else if key=13 then NamjenaGridDBLClick(Sender);
end;

procedure TUnosNamjena.NamjenaGridDBLClick(Sender: TObject);
begin          // samo za odabir Namjena kroz zahtjev
    dsTable.DataSet.Locate(DBGrid11.KeyField,TQ.FieldByName(DBGrid11.KeyField).Value,[]);
    if not(FZahtjevRatarstvo.wwT.State in DsEditModes) then FZahtjevRatarstvo.wwT.Edit;
    FZahtjevRatarstvo.wwTNamjena.Value:=tNamjenaNamjena.Value;
    Close;
end;

end.
