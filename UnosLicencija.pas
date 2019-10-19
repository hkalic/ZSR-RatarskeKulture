unit UnosLicencija;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UnosTemplate, Db, DBTables, RxQuery, StdCtrls, Buttons, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, ExtCtrls, ComCtrls, DBCtrls, ToolWin, wwdblook, Mask,
  wwdbdatetimepicker, FR_PTabl;

type
  TFUnosLicencija = class(TFUnosTemplate)
    tLicencije: TTable;
    tLicencijeSifra_licencije: TAutoIncField;
    tLicencijeUvjeti_dodjele: TStringField;
    tLicencijeBroj_ugovora: TStringField;
    tLicencijeDatum_ugovora: TDateField;
    tLicencijeDatum_prestanka: TDateField;
    tLicencijeTrajanje_licencije: TStringField;
    tLicencijeOpseg_licencije: TStringField;
    tPartner: TTable;
    tPartnerIme_partnera: TStringField;
    tPartnerMjesto: TStringField;
    tPartnerSifra_partnera: TAutoIncField;
    dsPartner: TDataSource;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    tLicencijelook_ImePartnera: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    DBEdit5: TDBEdit;
    tSorta: TTable;
    DataSource1: TDataSource;
    tSortaSifra_zahtjeva: TAutoIncField;
    tSortaOznaka_sorte: TStringField;
    tSortaIme_sorte: TStringField;
    Label9: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    tLicencijelook_ImeSorte: TStringField;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    tLicencijeDatum_promjene: TDateTimeField;
    tSortaSifra_vrste: TIntegerField;
    tLicencijeSifra_partnera: TIntegerField;
    tLicencijeSifra_sorte: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUnosLicencija: TFUnosLicencija;

implementation

{$R *.DFM}

end.
