unit Upisnik;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwtable, Wwdatsrc, ImgList, dxCntner, Grids, Wwdbigrd,
  Wwdbgrid, StdCtrls, wwcheckbox, wwdbdatetimepicker, dxEditor, dxEdLib,
  Mask, wwdbedit, wwdblook, ExtCtrls, ComCtrls, DBCtrls, dxTL, dxDBCtrl,
  dxDBGrid, wwSpeedButton, wwDBNavigator, wwclearpanel, ToolWin, dxDBTLCl,
  dxGrClms, FR_Class, FR_DSet, FR_DBSet, Menus, Wwquery;

type
  TFUpisnik = class(TForm)
    dxEditStyleController1: TdxEditStyleController;
    Images: TImageList;
    ds: TwwDataSource;
    wwT: TwwTable;
    dsQmaster: TDataSource;
    qUpisnik_master: TQuery;
    wwTSifra_detail: TAutoIncField;
    wwTJedinstvena_oznaka: TStringField;
    wwTPredaja_zahtjeva: TDateTimeField;
    wwTPrimljen_zahtjev: TDateTimeField;
    wwTDatum_objave: TDateField;
    wwTPromjene_zahtjeva_ZS: TMemoField;
    wwTDatum_zaklj_obust: TDateField;
    wwTDatum_rje_zast: TDateField;
    wwTDatum_rje_odbi: TDateField;
    wwTSud_predaja_zaht: TMemoField;
    wwTBroj_rje_SOP: TStringField;
    wwTDatum_rje_SOP: TDateField;
    wwTBroj_ispr_SOP: TStringField;
    wwTDatum_ispr_SOP: TDateField;
    wwTDatum_prest_zast: TDateField;
    wwTBroj_ukidanja_SOP: TStringField;
    wwTDatum_ukidanja_SOP: TDateField;
    wwTSud_OP: TMemoField;
    wwTPromjene_upisnika_OP: TMemoField;
    wwTUpotpunosti_OP: TStringField;
    wwTBroj_ugovora_POP: TStringField;
    wwTDatum_ugovora_POP: TDateField;
    qUpisnik_masterUpisni_broj: TStringField;
    qUpisnik_masterDatum_prijavljivanja: TDateTimeField;
    qUpisnik_masterIme_sorte: TStringField;
    qUpisnik_masterIme_partnera: TStringField;
    qUpisnik_masterSifra_zahtjeva: TIntegerField;
    qUpisnik_masterOznaka_sorte: TStringField;
    qUpisnik_masterVrsta_hrv: TStringField;
    tZahtPravo: TTable;
    dsZPravo: TDataSource;
    tZahtPravoSifra_zahtjeva: TAutoIncField;
    tZahtPravoUpisni_broj: TStringField;
    tZahtPravoDatum_prijavljivanja: TDateTimeField;
    tZahtPravoMaticna_zemlja: TStringField;
    tZahtPravoKoristena_prodavana: TBooleanField;
    tZahtPravoKoja_zemlja: TStringField;
    tZahtPravoDatum_kor_prod: TDateField;
    tZahtPravoKoji_uvjeti: TStringField;
    tZahtPravoPodnositeljev_pristanak: TBooleanField;
    tZahtPravoPravo_za_zahtjev: TBooleanField;
    tZahtPravoKoji_zahtjev: TStringField;
    tZahtPravoDokumenti: TStringField;
    tZahtPravoDatum_promjene: TDateTimeField;
    tPartner1: TTable;
    dsPartner1: TDataSource;
    tZahtPravolook_Podnositelj: TStringField;
    tPartner2: TTable;
    dsPartner2: TDataSource;
    tZahtPravolook_Oplemenjivac: TStringField;
    tPartner3: TTable;
    tPartner1Ime_partnera: TStringField;
    tPartner1Adresa: TStringField;
    tPartner1Mjesto: TStringField;
    tPartner1Sifra_partnera: TAutoIncField;
    dsPartner3: TDataSource;
    wwTlook_NositeljOP: TStringField;
    wwTlook_NositOPAdresa: TStringField;
    wwTlook_NositOPMjesto: TStringField;
    tLicencije: TTable;
    dsLicencija: TDataSource;
    tLicencijeSifra_licencije: TAutoIncField;
    tLicencijeUvjeti_dodjele: TStringField;
    tLicencijeBroj_ugovora: TStringField;
    tLicencijeDatum_ugovora: TDateField;
    tLicencijeDatum_prestanka: TDateField;
    tLicencijeTrajanje_licencije: TStringField;
    tLicencijeOpseg_licencije: TStringField;
    tLicencijeDatum_promjene: TDateTimeField;
    tPartner4: TTable;
    dsPartner4: TDataSource;
    tLicencijelook_ImePartnera: TStringField;
    wwTlook_ImeLicence: TStringField;
    qUpisnikPrint: TQuery;
    FRdsUpisnik: TfrDBDataSet;
    tZahtPravoIme_zastupnika: TStringField;
    tZahtPravoAdresa_zastupnika: TStringField;
    wwTBroj_objave: TStringField;
    wwTSadrzaj_POP: TStringField;
    tPartner5: TTable;
    dsPartner5: TDataSource;
    wwTlook_2Osoba: TStringField;
    wwTlook_2OsobaAdresa: TStringField;
    wwTlook_2OsobaMjesto: TStringField;
    tPartner5Sifra_partnera: TAutoIncField;
    tPartner5Ime_partnera: TStringField;
    tPartner5Adresa: TStringField;
    tPartner5Mjesto: TStringField;
    tPartner5Drzava: TStringField;
    wwTBroj_ugovora_POP3: TStringField;
    wwTDatum_ugovora_POP3: TDateField;
    wwTNaknada_ustup_OP: TCurrencyField;
    tPartner6: TTable;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    AutoIncField1: TAutoIncField;
    StringField4: TStringField;
    dsPartner6: TDataSource;
    wwTlook_2osobaUstup: TStringField;
    wwTlook_2oUstupAdresa: TStringField;
    wwTlook_2oUstupMjesto: TStringField;
    wwTDjelomicno_OP: TStringField;
    PopupMenu1: TPopupMenu;
    Printanje1: TMenuItem;
    Dizajn1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    PopupMenu3: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    PopupMenu4: TPopupMenu;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    tZahtPravolook_PodnositeljAdresa: TStringField;
    tZahtPravolook_PodnositeljMjesto: TStringField;
    tZahtPravolook_OplemenjAdresa: TStringField;
    tZahtPravolook_OplemenjMjesto: TStringField;
    tZahtPravoMjesto_zastupnika: TStringField;
    tLicencijelook_AdresaPartnera: TStringField;
    tLicencijelook_MjestoPartnera: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Upisni_broj: TdxDBGridMaskColumn;
    dxDBGrid1Datum_prijavljivanja: TdxDBGridDateColumn;
    dxDBGrid1Ime_sorte: TdxDBGridMaskColumn;
    dxDBGrid1Ime_partnera: TdxDBGridMaskColumn;
    dxDBGrid1Vrsta_hrv: TdxDBGridMaskColumn;
    dxDBGrid1Sifra_zahtjeva: TdxDBGridMaskColumn;
    dxDBGrid1Oznaka_sorte: TdxDBGridMaskColumn;
    TabSheet2: TTabSheet;
    ToolBar2: TToolBar;
    wwDBNavigator1: TwwDBNavigator;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    wwNavButton7: TwwNavButton;
    wwNavButton8: TwwNavButton;
    Splitter1: TSplitter;
    DBNavigator1: TDBNavigator;
    Print: TToolButton;
    Panel3: TPanel;
    wwDBEdit25: TwwDBEdit;
    dxEdit83: TdxEdit;
    dxEdit84: TdxEdit;
    wwDBDateTimePicker23: TwwDBDateTimePicker;
    wwDBEdit32: TwwDBEdit;
    dxEdit86: TdxEdit;
    dxEdit87: TdxEdit;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    dxEdit1: TdxEdit;
    wwDBEdit3: TwwDBEdit;
    dxEdit2: TdxEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    dxEdit3: TdxEdit;
    wwDBEdit4: TwwDBEdit;
    dxEdit4: TdxEdit;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    dxEdit5: TdxEdit;
    wwDBEdit5: TwwDBEdit;
    dxEdit6: TdxEdit;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    dxEdit7: TdxEdit;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    wwDBDateTimePicker5: TwwDBDateTimePicker;
    dxEdit8: TdxEdit;
    dxEdit9: TdxEdit;
    wwDBEdit6: TwwDBEdit;
    dxEdit10: TdxEdit;
    DBMemo1: TDBMemo;
    wwDBEdit35: TwwDBEdit;
    dxEdit42: TdxEdit;
    dxEdit63: TdxEdit;
    wwDBEdit53: TwwDBEdit;
    dxEdit64: TdxEdit;
    wwDBEdit56: TwwDBEdit;
    wwDBEdit58: TwwDBEdit;
    wwDBEdit59: TwwDBEdit;
    wwDBEdit60: TwwDBEdit;
    wwDBEdit61: TwwDBEdit;
    wwDBEdit62: TwwDBEdit;
    wwDBEdit63: TwwDBEdit;
    TabSheet3: TTabSheet;
    ToolBar3: TToolBar;
    wwDBNavigator3: TwwDBNavigator;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton9: TwwNavButton;
    wwNavButton10: TwwNavButton;
    Splitter2: TSplitter;
    DBNavigator2: TDBNavigator;
    ToolButton1: TToolButton;
    Panel1: TPanel;
    dxEdit11: TdxEdit;
    wwDBEdit7: TwwDBEdit;
    dxEdit12: TdxEdit;
    wwDBEdit8: TwwDBEdit;
    wwDBEdit9: TwwDBEdit;
    dxEdit13: TdxEdit;
    wwDBEdit10: TwwDBEdit;
    dxEdit14: TdxEdit;
    wwDBEdit11: TwwDBEdit;
    wwDBLookupCombo10: TwwDBLookupCombo;
    dxEdit15: TdxEdit;
    dxEdit16: TdxEdit;
    wwDBEdit12: TwwDBEdit;
    wwDBEdit13: TwwDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    dxEdit17: TdxEdit;
    wwDBEdit14: TwwDBEdit;
    dxEdit18: TdxEdit;
    wwDBDateTimePicker6: TwwDBDateTimePicker;
    dxEdit19: TdxEdit;
    wwDBEdit15: TwwDBEdit;
    wwDBDateTimePicker7: TwwDBDateTimePicker;
    dxEdit20: TdxEdit;
    wwDBEdit16: TwwDBEdit;
    wwDBDateTimePicker8: TwwDBDateTimePicker;
    dxEdit21: TdxEdit;
    dxEdit22: TdxEdit;
    dxEdit23: TdxEdit;
    wwDBDateTimePicker9: TwwDBDateTimePicker;
    dxEdit24: TdxEdit;
    wwDBEdit17: TwwDBEdit;
    wwDBDateTimePicker10: TwwDBDateTimePicker;
    dxEdit25: TdxEdit;
    wwDBEdit18: TwwDBEdit;
    dxEdit69: TdxEdit;
    wwDBEdit57: TwwDBEdit;
    wwDBEdit64: TwwDBEdit;
    wwDBEdit65: TwwDBEdit;
    wwDBEdit66: TwwDBEdit;
    wwDBEdit67: TwwDBEdit;
    wwDBEdit68: TwwDBEdit;
    wwDBEdit69: TwwDBEdit;
    dxEdit70: TdxEdit;
    dxEdit71: TdxEdit;
    wwDBEdit70: TwwDBEdit;
    wwDBEdit71: TwwDBEdit;
    TabSheet4: TTabSheet;
    ToolBar4: TToolBar;
    wwDBNavigator4: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton11: TwwNavButton;
    wwNavButton12: TwwNavButton;
    Splitter3: TSplitter;
    DBNavigator3: TDBNavigator;
    ToolButton2: TToolButton;
    Panel2: TPanel;
    dxEdit26: TdxEdit;
    wwDBEdit19: TwwDBEdit;
    dxEdit27: TdxEdit;
    wwDBEdit20: TwwDBEdit;
    wwDBEdit21: TwwDBEdit;
    dxEdit28: TdxEdit;
    wwDBEdit22: TwwDBEdit;
    dxEdit30: TdxEdit;
    dxEdit31: TdxEdit;
    wwDBEdit24: TwwDBEdit;
    wwDBEdit26: TwwDBEdit;
    wwDBEdit27: TwwDBEdit;
    dxEdit33: TdxEdit;
    wwDBDateTimePicker11: TwwDBDateTimePicker;
    dxEdit34: TdxEdit;
    wwDBEdit28: TwwDBEdit;
    wwDBDateTimePicker12: TwwDBDateTimePicker;
    dxEdit35: TdxEdit;
    wwDBEdit29: TwwDBEdit;
    wwDBDateTimePicker13: TwwDBDateTimePicker;
    dxEdit36: TdxEdit;
    dxEdit37: TdxEdit;
    dxEdit38: TdxEdit;
    wwDBDateTimePicker14: TwwDBDateTimePicker;
    dxEdit39: TdxEdit;
    wwDBEdit30: TwwDBEdit;
    wwDBDateTimePicker15: TwwDBDateTimePicker;
    wwDBEdit23: TwwDBEdit;
    dxEdit29: TdxEdit;
    wwDBEdit31: TwwDBEdit;
    wwDBDateTimePicker16: TwwDBDateTimePicker;
    dxEdit32: TdxEdit;
    wwDBEdit33: TwwDBEdit;
    wwDBEdit34: TwwDBEdit;
    dxEdit40: TdxEdit;
    dxEdit41: TdxEdit;
    wwDBLookupCombo2: TwwDBLookupCombo;
    dxEdit43: TdxEdit;
    dxEdit44: TdxEdit;
    dxEdit45: TdxEdit;
    dxEdit46: TdxEdit;
    wwDBEdit36: TwwDBEdit;
    wwDBEdit37: TwwDBEdit;
    dxEdit47: TdxEdit;
    wwDBEdit38: TwwDBEdit;
    dxEdit48: TdxEdit;
    wwDBEdit39: TwwDBEdit;
    dxEdit72: TdxEdit;
    wwDBEdit72: TwwDBEdit;
    dxEdit73: TdxEdit;
    wwDBEdit73: TwwDBEdit;
    wwDBEdit74: TwwDBEdit;
    wwDBEdit75: TwwDBEdit;
    TabSheet5: TTabSheet;
    ToolBar5: TToolBar;
    wwDBNavigator5: TwwDBNavigator;
    wwNavButton13: TwwNavButton;
    wwNavButton14: TwwNavButton;
    wwNavButton15: TwwNavButton;
    wwNavButton16: TwwNavButton;
    Splitter4: TSplitter;
    DBNavigator4: TDBNavigator;
    ToolButton3: TToolButton;
    Panel4: TPanel;
    dxEdit49: TdxEdit;
    wwDBEdit40: TwwDBEdit;
    dxEdit50: TdxEdit;
    wwDBEdit41: TwwDBEdit;
    wwDBEdit42: TwwDBEdit;
    dxEdit51: TdxEdit;
    wwDBEdit43: TwwDBEdit;
    dxEdit52: TdxEdit;
    dxEdit53: TdxEdit;
    wwDBEdit44: TwwDBEdit;
    wwDBEdit45: TwwDBEdit;
    wwDBEdit46: TwwDBEdit;
    dxEdit54: TdxEdit;
    wwDBDateTimePicker17: TwwDBDateTimePicker;
    dxEdit55: TdxEdit;
    wwDBEdit47: TwwDBEdit;
    wwDBDateTimePicker18: TwwDBDateTimePicker;
    dxEdit56: TdxEdit;
    wwDBEdit48: TwwDBEdit;
    wwDBDateTimePicker19: TwwDBDateTimePicker;
    dxEdit57: TdxEdit;
    dxEdit58: TdxEdit;
    dxEdit59: TdxEdit;
    wwDBDateTimePicker20: TwwDBDateTimePicker;
    dxEdit60: TdxEdit;
    wwDBEdit49: TwwDBEdit;
    wwDBDateTimePicker21: TwwDBDateTimePicker;
    wwDBEdit50: TwwDBEdit;
    wwDBLookupCombo3: TwwDBLookupCombo;
    dxEdit65: TdxEdit;
    dxEdit66: TdxEdit;
    dxEdit67: TdxEdit;
    dxEdit68: TdxEdit;
    wwDBEdit54: TwwDBEdit;
    wwDBEdit55: TwwDBEdit;
    dxEdit61: TdxEdit;
    wwDBEdit51: TwwDBEdit;
    dxEdit62: TdxEdit;
    wwDBEdit52: TwwDBEdit;
    wwDBEdit76: TwwDBEdit;
    wwDBEdit77: TwwDBEdit;
    wwDBEdit78: TwwDBEdit;
    wwDBEdit79: TwwDBEdit;
    dxEdit74: TdxEdit;
    wwDBEdit80: TwwDBEdit;
    wwDBEdit81: TwwDBEdit;
    dxEdit75: TdxEdit;
    dxEdit76: TdxEdit;
    wwDBEdit82: TwwDBEdit;
    dxEdit77: TdxEdit;
    dxEdit78: TdxEdit;
    wwDBEdit83: TwwDBEdit;
    wwDBEdit84: TwwDBEdit;
    wwTSifra_upisnika: TIntegerField;
    wwTSifra_nositelja_OP: TIntegerField;
    wwTSifra_2osoba_prenos: TIntegerField;
    wwTSifra_2osoba_ustup: TIntegerField;
    wwTSifra_licencije: TIntegerField;
    qUpisnik_masterSifra_upisnika: TIntegerField;
    tZahtPravoSifra_podnositelja: TIntegerField;
    tZahtPravoSifra_oplemenjivaca: TIntegerField;
    tZahtPravoSifra_ZPriznavanja: TIntegerField;
    tZahtPravoSifra_druga_zemlja: TIntegerField;
    tZahtPravoSifra_dok: TIntegerField;
    tLicencijeSifra_partnera: TIntegerField;
    tLicencijeSifra_sorte: TIntegerField;
    dxEdit79: TdxEdit;
    wwDBEdit85: TwwDBEdit;
    wwDBEdit86: TwwDBEdit;
    TabSheet6: TTabSheet;
    tZastupnik: TTable;
    dsZastupnik: TDataSource;
    tZastupnikSifra_zastupnika: TAutoIncField;
    tZastupnikSifra_partnera: TIntegerField;
    tZastupnikSifra_upisnika: TIntegerField;
    tZastupnikPredmet_zastupanja: TStringField;
    tZastupnikSadrzaj_zastupanja: TStringField;
    tZastupnikPromjene_upisa: TStringField;
    tPartner7: TTable;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    AutoIncField2: TAutoIncField;
    StringField8: TStringField;
    dsP7: TDataSource;
    tZastupniklookImeZastupnika: TStringField;
    ToolBar6: TToolBar;
    wwDBNavigator6: TwwDBNavigator;
    wwNavButton17: TwwNavButton;
    wwNavButton18: TwwNavButton;
    wwNavButton19: TwwNavButton;
    wwNavButton20: TwwNavButton;
    Splitter5: TSplitter;
    DBNavigator5: TDBNavigator;
    ToolButton4: TToolButton;
    Panel5: TPanel;
    dxEdit80: TdxEdit;
    wwDBEdit87: TwwDBEdit;
    wwDBEdit88: TwwDBEdit;
    dxEdit81: TdxEdit;
    dxEdit82: TdxEdit;
    wwDBEdit89: TwwDBEdit;
    dxEdit85: TdxEdit;
    wwDBEdit90: TwwDBEdit;
    dxEdit88: TdxEdit;
    dxEdit91: TdxEdit;
    wwDBEdit93: TwwDBEdit;
    dxEdit92: TdxEdit;
    wwDBDateTimePicker22: TwwDBDateTimePicker;
    dxEdit93: TdxEdit;
    dxEdit89: TdxEdit;
    dxEdit90: TdxEdit;
    wwDBLookupCombo5: TwwDBLookupCombo;
    wwDBEdit91: TwwDBEdit;
    wwDBEdit92: TwwDBEdit;
    dxEdit94: TdxEdit;
    dxEdit98: TdxEdit;
    dxEdit99: TdxEdit;
    wwDBEdit96: TwwDBEdit;
    wwDBEdit95: TwwDBEdit;
    wwDBEdit97: TwwDBEdit;
    dxEdit95: TdxEdit;
    dxEdit96: TdxEdit;
    wwDBEdit99: TwwDBEdit;
    wwDBEdit98: TwwDBEdit;
    dxEdit97: TdxEdit;
    wwDBEdit100: TwwDBEdit;
    wwDBEdit94: TwwDBEdit;
    tZastupniklookAdresaZastupnika: TStringField;
    tZastupniklookMjestoZastupnika: TStringField;
    wwTVrstaUgovoraPP: TStringField;
    wwDBEdit101: TwwDBEdit;
    dxEdit100: TdxEdit;
    wwDBEdit102: TwwDBEdit;
    dxEdit101: TdxEdit;
    wwDBEdit103: TwwDBEdit;
    PopupMenu5: TPopupMenu;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    ToolBar1: TToolBar;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton21: TwwNavButton;
    wwNavButton22: TwwNavButton;
    wwNavButton23: TwwNavButton;
    Button1: TButton;
    PopupMenu6: TPopupMenu;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    frReport1: TfrReport;
    procedure dtKlik(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PageControl1Change(Sender: TObject);
    procedure btObnoviClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DelLookup(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrintClick(Sender: TObject);
    procedure wwTBeforePost(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUpisnik: TFUpisnik;

implementation

uses BazeModul, Main, ZahtjevPravo;

{$R *.DFM}

procedure TFUpisnik.dtKlik(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key=VK_DELETE then ObrisiField('TimePick', Sender);
end;

procedure TFUpisnik.dxDBGrid1DblClick(Sender: TObject);
begin
    PageControl1.ActivePage:=TabSheet2;
    PageControl1Change(PageControl1);
end;

procedure TFUpisnik.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=13 then dxDBGrid1DblClick(Sender);
end;

procedure TFUpisnik.PageControl1Change(Sender: TObject);
var BrUpisnika: Integer;
begin
    BrUpisnika:=qUpisnik_master.FieldByName('Sifra_upisnika').AsInteger;

    If PageControl1.ActivePage=TabSheet1 Then
    begin
        if wwT.State in DsEditModes then
            if MessageDlg('Da li hoæete zapamtiti promjene?', mtConfirmation, [mbYes,mbCancel], 0) = mrYes then
                wwT.Post else wwT.Cancel;
        btObnoviClick(Sender);  // Refrešaj query
        qUpisnik_master.Locate('Sifra_upisnika', BrUpisnika,[]);
    end
    else wwT.Locate('Sifra_upisnika', BrUpisnika,[]);
end;

procedure TFUpisnik.btObnoviClick(Sender: TObject);
begin
    qUpisnik_master.Active:=False;
    qUpisnik_master.SQL:=PravoDetail;    // Uèitaj query iz memorije
    qUpisnik_master.Open;
    qUpisnik_master.Locate('Sifra_upisnika',wwT.FieldByName('Sifra_upisnika').AsInteger,[]);
end;

procedure TFUpisnik.FormCreate(Sender: TObject);
begin
    PageControl1.ActivePage := TabSheet1;
    btObnoviClick(Sender);  // Refrešaj query
end;

procedure TFUpisnik.FormActivate(Sender: TObject);
begin
    dxDBGrid1.IniFileName:=PathBIN+'dxDbgDP.ini';
    dxDBGrid1.LoadFromIniFile(dxDBGrid1.IniFileName);
end;

procedure TFUpisnik.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TFUpisnik.DelLookup(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key=VK_DELETE then ObrisiField('Lookup', Sender);
end;

procedure TFUpisnik.PrintClick(Sender: TObject);
var datoteka, p: string;
    a: integer;
    design: boolean;
begin
    design:=False;
    a:=(Sender as TMenuItem).Tag;
    if a>10 then
    begin
        design:=True;
        a:=a-10;
    end;
    case a of
        1: datoteka:='ZSOP.frf';
        2: datoteka:='OP.frf';
        3: datoteka:='POP.frf';
        4: datoteka:='UOP.frf';
        5: datoteka:='Zastupnik.frf';
        6: datoteka:='IspravaOP.frf';
    else Close;
    end;

    if not FileExists(PathFRF + datoteka) then
    begin
        MessageDlg('Ne postoji datoteka naloga -> '+datoteka, mtWarning, [mbOK], 0);
        exit;
    End
    Else frReport1.LoadFromFile(PathFRF + datoteka);

  if design then frReport1.DesignReport else frReport1.ShowReport;
end;

procedure TFUpisnik.wwTBeforePost(DataSet: TDataSet);
begin
// Zaštita da se nemože upisati u isto vrijeme Ustupljeno i Preneseno OP
//    if (not wwTSifra_2osoba_prenos.IsNull) and (not wwTSifra_2osoba_ustup.IsNull) then
//    begin
//        ShowMessage('Oplemenjivaèko pravo sorte se nemože'+#13+'u isto vrijeme ustupati i prenositi!'
//                    +#13+#13+'Obrišite pravni subjekt kojem se ustupa ili prenosi'+#13+'oplemenjivaèko pravo.');
//        Abort;
//    end;
end;

procedure TFUpisnik.Button1Click(Sender: TObject);
begin
    PopupMenu6.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

end.
