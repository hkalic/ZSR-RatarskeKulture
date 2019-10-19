unit PravoZaVrste;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxTL, dxDBCtrl, dxDBGrid, dxCntner, StdCtrls, Db, DBTables, Buttons,
  dxDBTLCl, dxGrClms;

type
  TFPravoNaVrste = class(TForm)
    dsKorisnici: TDataSource;
    tKorisnici: TTable;
    GroupBox1: TGroupBox;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Sifra: TdxDBGridMaskColumn;
    dxDBGrid1ImePrezime: TdxDBGridMaskColumn;
    dxDBGrid1LoginName: TdxDBGridMaskColumn;
    dxDBGrid1Lozinka: TdxDBGridMaskColumn;
    dsNema: TDataSource;
    qOstalaPrava: TQuery;
    Query1: TQuery;
    tVrsta: TTable;
    dsVrsta: TDataSource;
    dsPravoNaVrste: TDataSource;
    tPravoNaVrste: TTable;
    GroupBox2: TGroupBox;
    dxDBGrid2: TdxDBGrid;
    GroupBox3: TGroupBox;
    dxDBGrid3: TdxDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    tPravoNaVrsteSifra: TAutoIncField;
    tPravoNaVrsteSifra_Korisnika: TIntegerField;
    tPravoNaVrsteSifra_Vrste: TIntegerField;
    tPravoNaVrstelookNazivVrste: TStringField;
    dxDBGrid3Sifra: TdxDBGridMaskColumn;
    dxDBGrid3Sifra_Korisnika: TdxDBGridMaskColumn;
    dxDBGrid3Sifra_Vrste: TdxDBGridMaskColumn;
    dxDBGrid2sifra_vrste: TdxDBGridMaskColumn;
    dxDBGrid2vrsta_hrv: TdxDBGridMaskColumn;
    dxDBGrid3lookNazivVrste: TdxDBGridColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure OnIzlaz(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPravoNaVrste: TFPravoNaVrste;

implementation

{$R *.DFM}

procedure TFPravoNaVrste.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action:=caFree;
end;

procedure TFPravoNaVrste.BitBtn1Click(Sender: TObject);
begin
     Query1.SQL.Text:='INSERT INTO pravonavrste '+
                      '(sifra_korisnika, sifra_vrste) '+
                      'VALUES ('+tKorisnici.FieldByName('sifra').AsString+
                      ', '+qOstalaPrava.FieldByName('sifra_vrste').AsString+')';
     Query1.ExecSQL;
     Query1.Close;

     qOstalaPrava.DisableControls;
     tPravoNaVrste.Close;
     tPravoNaVrste.Open;
     qOstalaPrava.EnableControls;
end;

procedure TFPravoNaVrste.BitBtn2Click(Sender: TObject);
begin
     Query1.SQL.Text:='DELETE FROM pravonavrste '+
                      'WHERE sifra='+tPravoNaVrste.FieldByName('sifra').AsString;
     Query1.ExecSQL;
     Query1.Close;

     qOstalaPrava.DisableControls;
     tPravoNaVrste.Close;
     tPravoNaVrste.Open;
     qOstalaPrava.EnableControls;
end;

procedure TFPravoNaVrste.OnIzlaz(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key=27 then Close;
end;

end.
