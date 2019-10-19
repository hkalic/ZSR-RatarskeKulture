unit UnosKontakta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UnosTemplate, Db, DBTables, RxQuery, StdCtrls, Buttons, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, ExtCtrls, ComCtrls, DBCtrls, ToolWin, wwdblook, Mask;

type
  TFUnosKontakta = class(TFUnosTemplate)
    tKontakti: TTable;
    tKontaktiSifra_Kontakta: TAutoIncField;
    tKontaktiSifra_partnera: TSmallintField;
    tKontaktiIme_kontakta: TStringField;
    tKontaktiPrezime_kontakta: TStringField;
    tKontaktiTelefon: TStringField;
    tKontaktiMobitel: TStringField;
    tKontaktiEmail: TStringField;
    tKontaktiDatum_promjene: TDateTimeField;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label8: TLabel;
    tPartner: TTable;
    dsPartner: TDataSource;
    tPartnerSifra_partnera: TAutoIncField;
    tPartnerIme_partnera: TStringField;
    tPartnerMjesto: TStringField;
    tKontaktilook_Partner: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUnosKontakta: TFUnosKontakta;

implementation

{$R *.DFM}

end.
