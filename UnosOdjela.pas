unit UnosOdjela;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UnosTemplate, Db, DBTables, RxQuery, StdCtrls, Buttons, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, ExtCtrls, ComCtrls, DBCtrls, ToolWin, wwdblook, Mask,
  FR_PTabl;

type
  TFUnosOdjela = class(TFUnosTemplate)
    tOdjeli: TTable;
    tPartner: TTable;
    DataSource1: TDataSource;
    tPartnerSifra_partnera: TAutoIncField;
    tPartnerIme_partnera: TStringField;
    tPartnerAdresa: TStringField;
    tPartnerMjesto: TStringField;
    tPartnerDrzava: TStringField;
    tPartnerTelefon1: TStringField;
    tPartnerTelefon2: TStringField;
    tPartnerFax: TStringField;
    tPartnerEmail: TStringField;
    tPartnerKratica: TStringField;
    tPartnerMobilni_tel: TStringField;
    tPartnerDatum_promjene: TDateTimeField;
    tOdjeliSifra: TAutoIncField;
    tOdjeliSifra_Partnera: TSmallintField;
    tOdjeliNaziv_Odjela: TStringField;
    tOdjelilook_Partner: TStringField;
    tOdjeliDatum_promjene: TDateTimeField;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label6: TLabel;
    DBEdit6: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUnosOdjela: TFUnosOdjela;

implementation

{$R *.DFM}

end.
