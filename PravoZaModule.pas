unit PravoZaModule;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  dxDBTLCl, dxGrClms;

type
  TFPravoNaModule = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    tKorisnici: TTable;
    dsKorisnici: TDataSource;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Sifra: TdxDBGridMaskColumn;
    dxDBGrid1ImePrezime: TdxDBGridMaskColumn;
    dxDBGrid1LoginName: TdxDBGridMaskColumn;
    dxDBGrid1Lozinka: TdxDBGridMaskColumn;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid3: TdxDBGrid;
    dsPravo: TDataSource;
    tPravo: TTable;
    tPravoSifra: TAutoIncField;
    tPravoSifraKorisnika: TIntegerField;
    tPravoSifraModula: TIntegerField;
    tPravoNivoPrava: TIntegerField;
    tNivo: TTable;
    tModuli: TTable;
    dsNivo: TDataSource;
    dsModuli: TDataSource;
    tPravolookNazivModula: TStringField;
    tPravolooknazivNivoa: TStringField;
    dxDBGrid3Sifra: TdxDBGridMaskColumn;
    dxDBGrid3SifraKorisnika: TdxDBGridMaskColumn;
    dxDBGrid3SifraModula: TdxDBGridMaskColumn;
    dxDBGrid3NivoPrava: TdxDBGridMaskColumn;
    dxDBGrid3looknazivNivoa: TdxDBGridLookupColumn;
    qOstalaPrava: TQuery;
    dsNema: TDataSource;
    dxDBGrid2sifra: TdxDBGridMaskColumn;
    dxDBGrid2nazivmodula: TdxDBGridMaskColumn;
    dxDBGrid3lookNazivModula: TdxDBGridColumn;
    Query1: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure onIzlaz(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPravoNaModule: TFPravoNaModule;

implementation

{$R *.DFM}

procedure TFPravoNaModule.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action:=caFree;
end;

procedure TFPravoNaModule.BitBtn1Click(Sender: TObject);
begin
     Query1.SQL.Text:='INSERT INTO pravonamodule '+
                      '(sifrakorisnika, siframodula, nivoprava) '+
                      'VALUES ('+tKorisnici.FieldByName('sifra').AsString+
                      ', '+qOstalaPrava.FieldByName('sifra').AsString+', 1)';
     Query1.ExecSQL;
     Query1.Close;

     qOstalaPrava.DisableControls;
     tPravo.Close;
     tPravo.Open;
     qOstalaPrava.EnableControls;
end;

procedure TFPravoNaModule.onIzlaz(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key=27 then Close;
end;

procedure TFPravoNaModule.BitBtn2Click(Sender: TObject);
begin
     Query1.SQL.Text:='DELETE FROM pravonamodule '+
                      'WHERE sifra='+tPravo.FieldByName('sifra').AsString;
     Query1.ExecSQL;
     Query1.Close;

     qOstalaPrava.DisableControls;
     tPravo.Close;
     tPravo.Open;
     qOstalaPrava.EnableControls;
end;

end.
