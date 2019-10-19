  unit UnosVrste;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UnosTemplate, Db, DBTables, RxQuery, StdCtrls, Buttons, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, ExtCtrls, ComCtrls, DBCtrls, ToolWin, Mask, wwdblook;

type
  TFUnosVrste = class(TFUnosTemplate)
    Vrsta: TTable;
    VrstaSifra_vrste: TAutoIncField;
    VrstaVrsta_hrv: TStringField;
    VrstaVrsta_lat: TStringField;
    VrstaVrsta_eng: TStringField;
    VrstaNapomena: TMemoField;
    VrstaDatum_promjene: TDateTimeField;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    VrstaTip_vrste: TSmallintField;
    VrstaVCU1_cijena: TCurrencyField;
    VrstaVCU2_cijena: TCurrencyField;
    VrstaVCU3_cijena: TCurrencyField;
    VrstaDUS1_cijena: TCurrencyField;
    VrstaDUS2_cijena: TCurrencyField;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    VrstaDIzv_cijena: TCurrencyField;
    Label12: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    tTipSorte: TTable;
    dsTipSorte: TDataSource;
    Vrstalook_TipVrste: TStringField;
    tTipSorteSifra_tipa_sorte: TSmallintField;
    tTipSorteNaziv_tipa_sorte: TStringField;
    VrstaKlasa: TSmallintField;
    tKlase: TTable;
    DataSource1: TDataSource;
    Label13: TLabel;
    wwDBLookupCombo2: TwwDBLookupCombo;
    tKlaseSifra: TAutoIncField;
    tKlaseNazivKlase: TStringField;
    VrstalookKlasa: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUnosVrste: TFUnosVrste;

implementation

{$R *.DFM}

end.
