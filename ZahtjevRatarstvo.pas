unit ZahtjevRatarstvo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, wwSpeedButton, wwDBNavigator, wwclearpanel,
  Grids, Wwdbigrd, Wwdbgrid, wwdblook, Db, Wwdatsrc, DBTables, Wwtable,
  wwDialog, wwrcdvw, Placemnt, FR_Desgn, FR_DSet, FR_DBSet, FR_Class,
  ToolWin, Mask, wwdbedit, Wwdotdot, Wwdbcomb, Menus, FR_PTabl,
  Buttons, Wwquery, dxDBTLCl, dxGrClms, dxDBGrid, dxTL, dxDBCtrl, dxCntner,
  dxEditor, dxExEdtr, dxEdLib, dxDBELib, wwrcdpnl, DBCtrls,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDBaseEdit,
  LMDCustomEdit, LMDCustomMaskEdit, LMDDBMaskEdit, LMDCustomComponent,
  LMDContainerComponent, LMDBaseDialog, LMDCalendarDlg, ToolEdit, RXDBCtrl,
  dxDBEdtr, Wwdbdlg, RxLookup, DBGrids, wwidlg, wwcheckbox,
  wwdbdatetimepicker, ImgList, IniFiles;

type
  TFZahtjevRatarstvo = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel6: TPanel;
    ToolBar2: TToolBar;
    ToolBar1: TToolBar;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    dxDBGrid1: TdxDBGrid;
    tPartner: TTable;
    dsPartner: TDataSource;
    tPartnerMjesto: TStringField;
    wwDBNavigator1: TwwDBNavigator;
    wwNavButton2: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    Splitter1: TSplitter;
    wwNavButton7: TwwNavButton;
    DBNavigator1: TDBNavigator;
    wwNavButton8: TwwNavButton;
    tPartner2: TTable;
    AutoIncField2: TAutoIncField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    DateTimeField2: TDateTimeField;
    dsPartner2: TDataSource;
    dsDrugiZ: TDataSource;
    dsPriznataU: TDataSource;
    tPartner3: TTable;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    DateTimeField1: TDateTimeField;
    dsPartner3: TDataSource;
    qDrugiZ: TQuery;
    qPriznataU: TQuery;
    wwT: TwwTable;
    ds: TwwDataSource;
    wwTSifra_zahtjeva: TAutoIncField;
    wwTUpisni_broj: TStringField;
    wwTDatum_prijavljivanja: TDateField;
    wwTTehnicki_upitnik: TBooleanField;
    wwTlook_ImePodn: TStringField;
    wwTlook_ImeOplem: TStringField;
    wwTlook_ImeVlasnik: TStringField;
    qPriznataUGodina: TStringField;
    Panel1: TPanel;
    lookVlasnik: TwwDBLookupCombo;
    lookOplemenjivac: TwwDBLookupCombo;
    UpisniBroj: TwwDBEdit;
    dxEdit1: TdxEdit;
    dxEditStyleController1: TdxEditStyleController;
    dxEdit2: TdxEdit;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    qPriznataUDatum_promjene: TDateTimeField;
    dxEdit3: TdxEdit;
    dxEdit4: TdxEdit;
    dxEdit5: TdxEdit;
    dxEdit6: TdxEdit;
    qZasticenaU: TQuery;
    dsZasticenaU: TDataSource;
    qZasticenaUIme: TStringField;
    qZasticenaUGodina: TStringField;
    qZasticenaUDatum_promjene: TDateTimeField;
    Zahtjev_Master: TQuery;
    dsZahtjev_Master: TDataSource;
    Zahtjev_MasterUpisni_broj: TStringField;
    Zahtjev_MasterDatum_prijavljivanja: TDateField;
    Zahtjev_MasterIme_partnera: TStringField;
    Zahtjev_MasterSifra_zahtjeva: TIntegerField;
    dxEdit7: TdxEdit;
    dxEdit8: TdxEdit;
    dxEdit9: TdxEdit;
    dxEdit10: TdxEdit;
    wwCheckBox1: TwwCheckBox;
    dxEdit11: TdxEdit;
    dxEdit12: TdxEdit;
    tDUS: TTable;
    dsDUS: TDataSource;
    dxEdit13: TdxEdit;
    dxEdit14: TdxEdit;
    dxEdit15: TdxEdit;
    dxEdit16: TdxEdit;
    dxEdit17: TdxEdit;
    tVCU: TTable;
    dsVCU: TDataSource;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    dsPriznavanje: TDataSource;
    dsOdrzavanje: TDataSource;
    tPriznavanje: TTable;
    tOdrzavanje: TTable;
    dxEdit18: TdxEdit;
    wwDBEdit4: TwwDBEdit;
    dxEdit19: TdxEdit;
    dxEdit20: TdxEdit;
    wwDBEdit6: TwwDBEdit;
    dxEdit21: TdxEdit;
    dxEdit22: TdxEdit;
    dxEdit23: TdxEdit;
    dxEdit24: TdxEdit;
    dxEdit25: TdxEdit;
    wwDBEdit8: TwwDBEdit;
    dxEdit27: TdxEdit;
    dxEdit28: TdxEdit;
    wwDBEdit10: TwwDBEdit;
    dxEdit29: TdxEdit;
    tBrisanje: TTable;
    tPravo: TTable;
    dsPravo: TDataSource;
    dsBrisanje: TDataSource;
    tPravoSifra_prava: TAutoIncField;
    tPravoBroj_prava: TStringField;
    tPravoDatum_prava: TDateField;
    tPravoDatum_promjene: TDateTimeField;
    tBrisanjeSifra_brisanja: TAutoIncField;
    tBrisanjeBroj_brisanja: TStringField;
    tBrisanjeDatum_brisanja: TDateField;
    tBrisanjeDatum_promjene: TDateTimeField;
    tOdrzavanjeSifra_odrzavanje: TAutoIncField;
    tOdrzavanjeBroj_rjesenja: TStringField;
    tOdrzavanjeDatum_rjesenja: TDateField;
    tPriznavanjeSifra_priznavanja: TAutoIncField;
    tPriznavanjeDatum_priznavanja: TDateField;
    tPriznavanjeDatum_promjene: TDateTimeField;
    tVCUVCU1: TMemoField;
    tVCUVCU2: TMemoField;
    tVCUVCU3: TMemoField;
    tVCUDatum_promjene: TDateTimeField;
    tDUSDatum_promjene: TDateTimeField;
    dxEdit30: TdxEdit;
    qNaknada: TQuery;
    dsNaknada: TDataSource;
    dxEdit32: TdxEdit;
    wwDBEdit12: TwwDBEdit;
    Print: TToolButton;
    Images: TImageList;
    PopupMenu1: TPopupMenu;
    Ispis1: TMenuItem;
    Ureivanje1: TMenuItem;
    frDBDataSet1: TfrDBDataSet;
    qReport: TQuery;
    Zahtjev_MasterOznaka_sorte: TStringField;
    wwDBEdit13: TwwDBEdit;
    wwTSifra_dok: TSmallintField;
    qMax: TQuery;
    tDUSI_godina: TMemoField;
    tDUSII_godina: TMemoField;
    DBMemo4: TDBMemo;
    DBMemo5: TDBMemo;
    dxEdit34: TdxEdit;
    dxEdit35: TdxEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBGrid4: TwwDBGrid;
    wwDBGrid4IButton: TwwIButton;
    wwDBDateTimePicker3: TwwDBDateTimePicker;
    wwDBDateTimePicker4: TwwDBDateTimePicker;
    wwDBDateTimePicker5: TwwDBDateTimePicker;
    tVrsta: TTable;
    dsVrsta: TDataSource;
    tVrstaSifra_vrste: TAutoIncField;
    tVrstaVrsta_lat: TStringField;
    tVrstaVrsta_eng: TStringField;
    tVrstaNapomena: TMemoField;
    tVrstaDatum_promjene: TDateTimeField;
    Zahtjev_MasterVrsta_hrv: TStringField;
    Zahtjev_MasterVrsta_lat: TStringField;
    dxEdit26: TdxEdit;
    wwDBDateTimePicker6: TwwDBDateTimePicker;
    dxEdit31: TdxEdit;
    wwDBEdit2: TwwDBEdit;
    dxEdit33: TdxEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBEdit9: TwwDBEdit;
    dxEdit36: TdxEdit;
    tPravoNN: TStringField;
    tBrisanjeNN: TStringField;
    tOdrzavanjeNN: TStringField;
    tPriznavanjeNN: TStringField;
    qNaknadaSifra_odrzavanja: TAutoIncField;
    qNaknadaGod1: TStringField;
    qNaknadaGod2: TStringField;
    qNaknadaGod3: TStringField;
    qNaknadaGod4: TStringField;
    qNaknadaGod5: TStringField;
    qNaknadaGod6: TStringField;
    qNaknadaGod7: TStringField;
    qNaknadaGod8: TStringField;
    qNaknadaGod9: TStringField;
    qNaknadaGod10: TStringField;
    qNaknadaGod11: TStringField;
    qNaknadaGod12: TStringField;
    qNaknadaGod13: TStringField;
    qNaknadaGod14: TStringField;
    qNaknadaGod15: TStringField;
    qNaknadaGod16: TStringField;
    qNaknadaGod17: TStringField;
    qNaknadaGod18: TStringField;
    qNaknadaGod19: TStringField;
    qNaknadaGod20: TStringField;
    qNaknadaDatum_promjene: TDateTimeField;
    dxEdit37: TdxEdit;
    tSdus: TTable;
    dsSdus: TDataSource;
    wwDBLookupCombo1: TwwDBLookupCombo;
    dxEdit38: TdxEdit;
    wwDBLookupCombo2: TwwDBLookupCombo;
    tSvcu: TTable;
    dsSvcu: TDataSource;
    dxEdit39: TdxEdit;
    DBMemo6: TDBMemo;
    qNaknadaPrekid: TStringField;
    tDUSKupljen: TBooleanField;
    wwCheckBox2: TwwCheckBox;
    wwTPunomoc: TBooleanField;
    wwTTip_zahtjeva: TSmallintField;
    wwCheckBox3: TwwCheckBox;
    tDetPovrce: TTable;
    dsDetPov: TDataSource;
    qOtpornost: TQuery;
    dsOtpornost: TDataSource;
    qOtpornostBolest_stetnik: TStringField;
    qOtpornostTolerantnost: TBooleanField;
    qOtpornostRezistentnost: TBooleanField;
    Panel2: TPanel;
    dxEdit41: TdxEdit;
    wwDBLookupCombo3: TwwDBLookupCombo;
    dxEdit42: TdxEdit;
    dxEdit43: TdxEdit;
    wwDBEdit15: TwwDBEdit;
    dxEdit44: TdxEdit;
    wwDBEdit16: TwwDBEdit;
    dxEdit45: TdxEdit;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwCheckBox4: TwwCheckBox;
    wwCheckBox5: TwwCheckBox;
    wwCheckBox6: TwwCheckBox;
    dxEdit50: TdxEdit;
    wwDBEdit19: TwwDBEdit;
    dxEdit51: TdxEdit;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    wwDBEdit20: TwwDBEdit;
    dxEdit52: TdxEdit;
    DBMemo7: TDBMemo;
    DBMemo8: TDBMemo;
    wwCheckBox7: TwwCheckBox;
    dxEdit53: TdxEdit;
    wwDBEdit22: TwwDBEdit;
    dxEdit54: TdxEdit;
    dxEdit55: TdxEdit;
    dxEdit56: TdxEdit;
    dxEdit81: TdxEdit;
    tDUSKada_uradjen: TStringField;
    wwDBEdit14: TwwDBEdit;
    tVrstaVrsta_hrv: TStringField;
    tVrstaTip_vrste: TSmallintField;
    wwDBLookupCombo5: TwwDBLookupCombo;
    wwTOznaka_sorte: TStringField;
    wwTIme_sorte: TStringField;
    wwTNamjena: TMemoField;
    wwTNamPov1: TBooleanField;
    wwTNamPov2: TBooleanField;
    wwTNamPov3: TBooleanField;
    wwTRegistriranu_u: TStringField;
    wwTDok_registracije: TStringField;
    wwTDatum_promjene: TDateTimeField;
    wwTlook_Vrsta_hr: TStringField;
    wwTlook_Vrsta_LAT: TStringField;
    wwDBLookupCombo6: TwwDBLookupCombo;
    wwDBEdit5: TwwDBEdit;
    dxEdit40: TdxEdit;
    wwDBEdit11: TwwDBEdit;
    tSvcuVCU_oznaka: TStringField;
    tSvcuVCU_Status: TStringField;
    tSdusDUS_oznaka: TStringField;
    tSdusDUS_Status: TStringField;
    wwTVCU_oznaka: TStringField;
    wwTDUS_oznaka: TStringField;
    Zahtjev_MasterVCU: TStringField;
    tPartnerIme_partnera: TStringField;
    tPartnerAdresa: TStringField;
    tPartnerSifra_partnera: TAutoIncField;
    tOdrzavanjeDatum_promjene: TDateTimeField;
    dsKontakti: TDataSource;
    qKontakti: TQuery;
    dxEdit82: TdxEdit;
    wwDBLookupCombo7: TwwDBLookupCombo;
    Zahtjev_MasterIme_sorte: TStringField;
    dsS17: TDataSource;
    dxEdit83: TdxEdit;
    wwDBLookupCombo8: TwwDBLookupCombo;
    Zahtjev_MasterDUS: TStringField;
    dxEdit48: TdxEdit;
    dxEdit49: TdxEdit;
    dxEdit57: TdxEdit;
    dxEdit58: TdxEdit;
    wwDBLookupCombo9: TwwDBLookupCombo;
    wwCheckBox8: TwwCheckBox;
    wwCheckBox9: TwwCheckBox;
    dxEdit59: TdxEdit;
    wwDBEdit24: TwwDBEdit;
    dxEdit60: TdxEdit;
    dxEdit61: TdxEdit;
    wwDBDateTimePicker7: TwwDBDateTimePicker;
    dxEdit62: TdxEdit;
    wwDBEdit25: TwwDBEdit;
    wwDBEdit26: TwwDBEdit;
    dxEdit63: TdxEdit;
    wwDBDateTimePicker8: TwwDBDateTimePicker;
    dxEdit64: TdxEdit;
    wwDBEdit27: TwwDBEdit;
    dxEdit65: TdxEdit;
    dxEdit66: TdxEdit;
    dxEdit67: TdxEdit;
    wwDBEdit28: TwwDBEdit;
    dxEdit68: TdxEdit;
    wwDBDateTimePicker9: TwwDBDateTimePicker;
    dxEdit69: TdxEdit;
    wwDBEdit29: TwwDBEdit;
    wwDBEdit30: TwwDBEdit;
    dxEdit70: TdxEdit;
    wwDBDateTimePicker10: TwwDBDateTimePicker;
    dxEdit71: TdxEdit;
    wwDBEdit31: TwwDBEdit;
    dxEdit72: TdxEdit;
    dxEdit73: TdxEdit;
    Panel3: TPanel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Bevel10: TBevel;
    dxEdit84: TdxEdit;
    dxEdit85: TdxEdit;
    dxEdit86: TdxEdit;
    dxEdit87: TdxEdit;
    dxEdit88: TdxEdit;
    dxEdit89: TdxEdit;
    dxEdit90: TdxEdit;
    dxEdit91: TdxEdit;
    dxEdit92: TdxEdit;
    dxEdit93: TdxEdit;
    dxEdit94: TdxEdit;
    dxEdit95: TdxEdit;
    dxEdit96: TdxEdit;
    dxEdit97: TdxEdit;
    wwDBDateTimePicker23: TwwDBDateTimePicker;
    wwDBDateTimePicker24: TwwDBDateTimePicker;
    wwDBDateTimePicker25: TwwDBDateTimePicker;
    wwDBDateTimePicker26: TwwDBDateTimePicker;
    wwDBDateTimePicker27: TwwDBDateTimePicker;
    wwDBDateTimePicker28: TwwDBDateTimePicker;
    wwDBDateTimePicker29: TwwDBDateTimePicker;
    wwDBDateTimePicker30: TwwDBDateTimePicker;
    wwDBDateTimePicker31: TwwDBDateTimePicker;
    wwDBDateTimePicker32: TwwDBDateTimePicker;
    wwDBDateTimePicker33: TwwDBDateTimePicker;
    wwDBDateTimePicker34: TwwDBDateTimePicker;
    wwDBDateTimePicker35: TwwDBDateTimePicker;
    wwDBDateTimePicker36: TwwDBDateTimePicker;
    wwDBDateTimePicker37: TwwDBDateTimePicker;
    wwDBDateTimePicker38: TwwDBDateTimePicker;
    dxEdit98: TdxEdit;
    dxEdit99: TdxEdit;
    dxEdit100: TdxEdit;
    dxEdit101: TdxEdit;
    dxEdit102: TdxEdit;
    dxEdit103: TdxEdit;
    dxEdit104: TdxEdit;
    dxEdit105: TdxEdit;
    dxEdit80: TdxEdit;
    gStetnici: TwwDBGrid;
    dxEdit79: TdxEdit;
    wwDBEdit23: TwwDBEdit;
    ToolButton1: TToolButton;
    tVrstaKlasa: TSmallintField;
    wwTSifra_klase: TSmallintField;
    wwTlook_Klasa: TSmallintField;
    qPredIme: TQuery;
    tPartner4: TTable;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    AutoIncField3: TAutoIncField;
    DataSource1: TDataSource;
    wwTlook_ImeOdrzivaca: TStringField;
    dxEdit74: TdxEdit;
    dxEdit75: TdxEdit;
    wwDBEdit32: TwwDBEdit;
    dxEdit76: TdxEdit;
    wwDBDateTimePicker11: TwwDBDateTimePicker;
    dxEdit77: TdxEdit;
    wwDBEdit33: TwwDBEdit;
    tNePriznavanje: TTable;
    dsNePriznavanje: TDataSource;
    tNePriznavanjeSifra_priznavanja: TAutoIncField;
    tNePriznavanjeBroj_priznavanja: TStringField;
    tNePriznavanjeDatum_priznavanja: TDateField;
    tNePriznavanjeNN: TStringField;
    tNePriznavanjeDatum_promjene: TDateTimeField;
    dxEdit106: TdxEdit;
    dxEdit107: TdxEdit;
    wwDBEdit34: TwwDBEdit;
    dxEdit108: TdxEdit;
    wwDBDateTimePicker12: TwwDBDateTimePicker;
    dxEdit109: TdxEdit;
    wwDBEdit35: TwwDBEdit;
    dxEdit78: TdxEdit;
    dxEdit110: TdxEdit;
    wwDBLookupCombo10: TwwDBLookupCombo;
    tSvcuBoja: TStringField;
    BojaVCU: TQuery;
    wwTSifra_vrste: TIntegerField;
    qPravoNaVrste: TQuery;
    qS17: TQuery;
    qS17oznaka_sorte: TStringField;
    qS17ime_sorte: TStringField;
    qS17sifra_zahtjeva: TIntegerField;
    qS17sifra_vrste: TIntegerField;
    tPartner2Drzava: TStringField;
    tPartner3Drzava: TStringField;
    DBMemo9: TDBMemo;
    wwTNapomena: TMemoField;
    dxEdit111: TdxEdit;
    DBMemo10: TDBMemo;
    dxEdit112: TdxEdit;
    tDrzava: TTable;
    dsDrzava: TDataSource;
    wwDBLookupCombo11: TwwDBLookupCombo;
    tDUSGdje_uradjen: TIntegerField;
    tDUSlookNazivDrzave: TStringField;
    tDrzavaSifra: TAutoIncField;
    tDrzavaNaziv_Drzave: TStringField;
    wwDBLookupCombo12: TwwDBLookupCombo;
    qDrugiZPodneseni_zahtjevi: TIntegerField;
    qDrugiZGodina: TStringField;
    qDrugiZDatum_promjene: TDateTimeField;
    tDrzava2: TTable;
    AutoIncField4: TAutoIncField;
    StringField4: TStringField;
    dsDrzava2: TDataSource;
    qDrugiZlookNazivDrzave: TStringField;
    dxDBGrid2: TdxDBGrid;
    dstDrzava3: TDataSource;
    tDrzava3: TTable;
    AutoIncField5: TAutoIncField;
    StringField12: TStringField;
    qPriznataUlookNazivDrzave: TStringField;
    dxDBGrid3: TdxDBGrid;
    qPriznataUSifra_priznata: TAutoIncField;
    tDrzava4: TTable;
    AutoIncField6: TAutoIncField;
    StringField20: TStringField;
    dstDrzava4: TDataSource;
    qZasticenaUDrzava: TIntegerField;
    qZasticenaUlookNazivDrzave: TStringField;
    dxDBGrid4: TdxDBGrid;
    qZasticenaUSifra_zasticena: TAutoIncField;
    dxDBGrid5: TdxDBGrid;
    dxDBGrid6: TdxDBGrid;
    dxDBGrid7: TdxDBGrid;
    dxEdit113: TdxEdit;
    wwDBLookupCombo13: TwwDBLookupCombo;
    dxEdit46: TdxEdit;
    dsOdjel: TDataSource;
    dxEdit47: TdxEdit;
    wwTKontakt: TIntegerField;
    dxDBGrid1sifra_dok: TdxDBGridMaskColumn;
    dxDBGrid1Upisni_broj: TdxDBGridMaskColumn;
    dxDBGrid1Datum_prijavljivanja: TdxDBGridDateColumn;
    dxDBGrid1Vrsta_hrv: TdxDBGridMaskColumn;
    dxDBGrid1Oznaka_sorte: TdxDBGridMaskColumn;
    dxDBGrid1Ime_sorte: TdxDBGridMaskColumn;
    dxDBGrid1Ime_partnera: TdxDBGridMaskColumn;
    dxDBGrid1VCU: TdxDBGridMaskColumn;
    dxDBGrid1DUS: TdxDBGridMaskColumn;
    lookPodnositelj: TwwDBLookupCombo;
    qKontaktisifra_kontakta: TIntegerField;
    qKontaktiime: TStringField;
    qDrugiZSifra_zahtjeva: TIntegerField;
    qPriznataUDrzava: TIntegerField;
    qPriznataUSifra_zahtjeva: TIntegerField;
    qZasticenaUSifra_zahtjeva: TIntegerField;
    qNaknadaSifra_zahtjeva: TIntegerField;
    qOtpornostSifra_zahtjeva: TIntegerField;
    tDUSSifra_zahtjeva: TIntegerField;
    tPriznavanjeSifra_zahtjeva: TIntegerField;
    tPriznavanjeBroj_priznavanja: TStringField;
    tNePriznavanjeSifra_zahtjeva: TIntegerField;
    tVCUSifra_zahtjeva: TIntegerField;
    tOdrzavanjeSifra_zahtjeva: TIntegerField;
    tBrisanjeSifra_zahtjeva: TIntegerField;
    tPravoSifra_zahtjeva: TIntegerField;
    Zahtjev_Mastersifra_dok: TSmallintField;
    wwTSifra_podnositelja: TIntegerField;
    wwTSifra_oplemenjivaca: TIntegerField;
    wwTSifra_druga_zemlja: TIntegerField;
    wwTSifra_priznata_u: TIntegerField;
    wwTSifra_priznata: TIntegerField;
    wwTSifra_zasticena: TIntegerField;
    wwTSifra_vlasnik: TIntegerField;
    wwTSifra_odrzivac: TIntegerField;
    wwTlook_Kontakt: TStringField;
    wwTOdjel: TIntegerField;
    wwDBLookupCombo14: TwwDBLookupCombo;
    qOdjel: TQuery;
    qOdjelsifra: TIntegerField;
    qOdjelnaziv_odjela: TStringField;
    wwTlook_Odjel: TStringField;
    wwDBLookupCombo15: TwwDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure wwRecordViewDialog1CloseDialog(Form: TwwRecordViewForm);
    procedure wwRecordViewDialog1BeforeCreateControl(
      Form: TwwRecordViewForm; curField: TField; var Accept: Boolean);
    procedure wwDBGrid2CalcTitleAttributes(Sender: TObject;
      AFieldName: String; AFont: TFont; ABrush: TBrush;
      var ATitleAlignment: TAlignment);
    procedure FormActivate(Sender: TObject);
    procedure wwNavButton4Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure wwDBLookupCombo2Click(Sender: TObject);
    procedure Preskoci(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrijePosta(DataSet: TDataSet);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure PosljePosta(DataSet: TDataSet);
    procedure GridIzlaz(Upit:TDataSource;Polje:String);
    procedure wwDBGrid2Exit(Sender: TObject);
    procedure wwDBGrid3Exit(Sender: TObject);
    procedure Ureivanje1Click(Sender: TObject);
    procedure wwTAfterInsert(DataSet: TDataSet);
    procedure wwDBGrid4Enter(Sender: TObject);
    procedure wwDBGrid4Exit(Sender: TObject);
    procedure wwDBGrid4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwTAfterCancel(DataSet: TDataSet);
    procedure wwTAfterPost(DataSet: TDataSet);
    procedure UpisniBrojEnter(Sender: TObject);
    procedure UpisniBrojExit(Sender: TObject);
    procedure wwDBEdit1Exit(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure lookPodnositeljKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FakturiranjeClick(Sender: TObject);
    procedure GridStateChange(Sender: TObject);
    procedure qDrugiZAfterOpen(DataSet: TDataSet);
    procedure dsPriznataUStateChange(Sender: TObject);
    procedure qPriznataUAfterOpen(DataSet: TDataSet);
    procedure dsZasticenaUStateChange(Sender: TObject);
    procedure qZasticenaUAfterOpen(DataSet: TDataSet);
    procedure qOtpornostAfterOpen(DataSet: TDataSet);
    procedure dsOtpornostStateChange(Sender: TObject);
    procedure gStetniciExit(Sender: TObject);
    procedure dsStateChange(Sender: TObject);
    procedure DBMemo6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwTPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure DelLookup(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DelTimePick(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DajBrojRjesenja(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton1Click(Sender: TObject);
    procedure wwTSifra_vrsteChange(Sender: TField);
    procedure ProvjeriIme;
    procedure SrediPrava(Prava:Integer);
    procedure PravoNaVrstu(korisnik: Integer);
    procedure OtvoriKucice;
    procedure ZatvoriKucice;
    procedure BojaVCUAfterOpen(DataSet: TDataSet);
    procedure wwDBLookupCombo2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure dxDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure wwTAfterOpen(DataSet: TDataSet);
    procedure wwTBeforeClose(DataSet: TDataSet);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure wwTBeforePost(DataSet: TDataSet);
    procedure dxDBGrid1ChangeColumn(Sender: TObject; Node: TdxTreeListNode;
      Column: Integer);
    procedure qOdjelAfterOpen(DataSet: TDataSet);
    procedure onKeyGrid(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PostajMastera(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FZahtjevRatarstvo: TFZahtjevRatarstvo;
  iniRjesenje:  TIniFile;

implementation

Uses BazeModul, Main, AppUtils, StrUtils, PostavkeDlg, wwFrame,
     UnosSorte, OdabirUnit, UnisNamjena, ZahtjevPravo, PojamUnit;
{$R *.DFM}

procedure TFZahtjevRatarstvo.FormCreate(Sender: TObject);
begin
     PageControl1.ActivePage := TabSheet1;
//     wwNavButton4Click(Sender);  // Refrešaj query
     SrediPrava(PravaNaModul);
end;

procedure TFZahtjevRatarstvo.SrediPrava(Prava:Integer);
var i: integer;
begin
     case Prava of
     1: // Sva prava
     Begin
          // sve default
     end;

     2: // Samo za DUS i VCU
     begin
          // zabranjen Insert u tablicu
          wwNavButton2.Enabled:=False;

          // read only na sve TField od wwT
          For i:=0 to wwT.FieldCount -1 do
               wwT.Fields[i].ReadOnly:=True;
          wwT.FieldByName('VCU_oznaka').ReadOnly:=False;
          wwT.FieldByName('DUS_oznaka').ReadOnly:=False;

          // RO za gridove
          dxDBGrid5.OptionsBehavior:=dxDBGrid5.OptionsBehavior-[edgoEditing]; // qDrugiZ
          dxDBGrid6.OptionsBehavior:=dxDBGrid6.OptionsBehavior-[edgoEditing]; // qPriznataU
          dxDBGrid7.OptionsBehavior:=dxDBGrid7.OptionsBehavior-[edgoEditing]; // qZasticenaU
          wwDBGrid4.OnKeyDown:=nil; // qNaknade
          dxDBGrid2.OptionsBehavior:=dxDBGrid2.OptionsBehavior-[edgoEditing]; // qDrugiZ povræe
          dxDBGrid3.OptionsBehavior:=dxDBGrid3.OptionsBehavior-[edgoEditing]; // qPriznataU povræe
          dxDBGrid4.OptionsBehavior:=dxDBGrid4.OptionsBehavior-[edgoEditing]; // qZasticenaU povræe
          gStetnici.ReadOnly:=True; // qOtpornost

          // RO za lookupComboe
          wwDBLookupCombo3.Enabled:=False;
          wwDBLookupCombo4.Enabled:=False;
          wwDBLookupCombo5.Enabled:=False;
          wwDBLookupCombo6.Enabled:=False;
          wwDBLookupCombo7.Enabled:=False;
          wwDBLookupCombo14.Enabled:=False;
          wwDBLookupCombo8.Enabled:=False;
          wwDBLookupCombo9.Enabled:=False;
          wwDBLookupCombo10.Enabled:=False;
          lookVlasnik.Enabled:=False;
          lookOplemenjivac.Enabled:=False;
          lookPodnositelj.Enabled:=False;

          // Sve ostale TTable na read only osim tDUS, tVCU i default RO
          tDetPovrce.ReadOnly:=True;
          tDetPovrce.Active:=True;
          tPriznavanje.ReadOnly:=True;
          tPriznavanje.Active:=True;
          tNePriznavanje.ReadOnly:=True;
          tNePriznavanje.Active:=True;
          tOdrzavanje.ReadOnly:=True;
          tOdrzavanje.Active:=True;
          tBrisanje.ReadOnly:=True;
          tBrisanje.Active:=True;
          tPravo.ReadOnly:=True;
          tPravo.Active:=True;
     end;

     else // sve ostalo ako zaluta
     begin
          Close;
     end;

     end;
end;

procedure TFZahtjevRatarstvo.wwRecordViewDialog1CloseDialog(Form: TwwRecordViewForm);
begin
    MainForm.LMDGlobalHotKey1.Active := False;
    WindowState := wsMaxiMized;
end;

procedure TFZahtjevRatarstvo.wwRecordViewDialog1BeforeCreateControl(Form: TwwRecordViewForm; curField: TField; var Accept: Boolean);
begin
    MainForm.LMDGlobalHotKey1.Active := True;
end;

procedure TFZahtjevRatarstvo.wwDBGrid2CalcTitleAttributes(Sender: TObject;
  AFieldName: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment);
begin
    Abrush.color := $00F0CAA6;
end;

procedure TFZahtjevRatarstvo.FormActivate(Sender: TObject);
begin
    dxDBGrid1.IniFileName:=PathBIN+'dxDbG1.ini';
    dxDBGrid1.LoadFromIniFile(dxDBGrid1.IniFileName);
end;

procedure TFZahtjevRatarstvo.wwNavButton4Click(Sender: TObject);
begin
    Zahtjev_Master.Active:=False;
    Zahtjev_Master.SQL:=ZahtSQL;    // Uèitaj query iz memorije
    Zahtjev_Master.SQL.Add('WHERE Priznanje_pb.Tip_zahtjeva='+IntToStr(TipSorte)); // i dodaj filter za tip dokumenta
    Zahtjev_Master.Open;
    if wwT.Active then Zahtjev_Master.Locate('Sifra_zahtjeva', wwT.FieldByName('Sifra_zahtjeva').AsInteger,[]);
end;

procedure TFZahtjevRatarstvo.PageControl1Change(Sender: TObject);
begin
    If PageControl1.ActivePage=TabSheet1 Then
    begin
        if wwT.State in DsEditModes then
            if MessageDlg('Da li hoæete zapamtiti promjene?', mtConfirmation, [mbYes,mbCancel], 0) = mrYes then
                wwT.Post else wwT.Cancel;
        wwNavButton4Click(Sender);  // Refrešaj query
    end
    else
    If PageControl1.ActivePage=TabSheet2 Then
    begin
        if not wwT.Active then wwT.Open;
        wwT.Locate('Sifra_zahtjeva', Zahtjev_Master.FieldByName('Sifra_zahtjeva').AsInteger,[]);
        PravoNaVrstu(SifraKorisnika);
    end;
end;

procedure TFZahtjevRatarstvo.dxDBGrid1DblClick(Sender: TObject);
begin
    PageControl1.ActivePage:=TabSheet2;
    PageControl1Change(PageControl1);
end;

procedure TFZahtjevRatarstvo.wwDBLookupCombo2Click(Sender: TObject);
begin
    dxDBGrid1.Visible:=True;
end;

procedure TFZahtjevRatarstvo.Preskoci(Sender: TObject);
begin
    SelectNext(Sender as TwinControl, False, True);
end;

procedure TFZahtjevRatarstvo.dxDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if (key=13) and (Shift=[]) then dxDBGrid1DblClick(Sender);
end;

procedure TFZahtjevRatarstvo.PrijePosta(DataSet: TDataSet);
begin
    case DataSet.Tag of
    1..3: begin
        DataSet.FieldByName('Sifra_zahtjeva').Value:=qDrugiZ.ParamByName('sifra_zahtjeva').Value;
        DataSet.FieldByName('Datum_promjene').Value:=Now;
       end;
    4..10,13:
       begin
        DataSet.FieldByName('Sifra_zahtjeva').Value:=wwTSifra_zahtjeva.AsInteger;
        DataSet.FieldByName('Datum_promjene').Value:=Now;
       end;
   11,12:
       begin
        DataSet.FieldByName('Sifra_zahtjeva').Value:=wwTSifra_zahtjeva.AsInteger;
       end;
    end;
end;

procedure TFZahtjevRatarstvo.PosljePosta(DataSet: TDataSet);
begin
  try
    case DataSet.Tag of
    1: if ((qDrugiZPodneseni_zahtjevi.IsNull) or (qDrugiZPodneseni_zahtjevi.Value=0)) then qDrugiZ.Delete;
    2: if ((qPriznataUDrzava.IsNull) or (qPriznataUDrzava.Value=0)) then qPriznataU.Delete;
    3: if ((qZasticenaUDrzava.IsNull) or (qZasticenaUDrzava.Value=0)) then qZasticenaU.Delete;
    4,5:
        begin
            if DataSet.FieldByName('Sifra_zahtjeva').AsInteger=0 then
            begin
                DataSet.Edit;
                DataSet.Delete;
                DataSet.Post;
            end;
        end;
    6,7,9,10:
        begin
          if DataSet.Tag=6 then ProvjeriIme;

          if DataSet.FieldByName('Sifra_zahtjeva').AsInteger=0 then
          begin
                DataSet.Edit;
                DataSet.Delete;
                DataSet.Post;
          end;
        end;
//    8: if ((qNaknadaSifra_zahtjeva.IsNull) or (qNaknadaSifra_zahtjeva.Value=0)) then qNaknada.Delete;
   12: if ((qOtpornostBolest_stetnik.IsNull) or (qOtpornostBolest_stetnik.Value='')) then qOtpornost.Delete;
    end;
  except
    ShowMessage('Pojavila se greška!'+#13+'Prvo morate prihvatiti izmjene na MASTER tablici.');
  end;
end;

procedure TFZahtjevRatarstvo.GridIzlaz(Upit:TDataSource;Polje:String);
var Stvarno_polje: TField;
begin
    if Upit.DataSet.State=dsInsert then
    begin
        Stvarno_polje:=Upit.DataSet.FieldByName(Polje);
        if (Stvarno_polje.IsNull) or (Stvarno_polje.Value=0) then Upit.DataSet.Cancel
        else Upit.DataSet.Post;
    end
    else if Upit.DataSet.State=dsEdit then Upit.DataSet.Post;  // ovdje možda ide kontrola za DELETE
end;

procedure TFZahtjevRatarstvo.wwDBGrid1Exit(Sender: TObject);
begin
    GridIzlaz(dsDrugiZ,'Podneseni_zahtjevi');
end;

procedure TFZahtjevRatarstvo.wwDBGrid2Exit(Sender: TObject);
begin
    GridIzlaz(dsPriznataU,'Drzava');
end;

procedure TFZahtjevRatarstvo.wwDBGrid3Exit(Sender: TObject);
begin
    GridIzlaz(dsZasticenaU,'Drzava');
end;

procedure TFZahtjevRatarstvo.Ureivanje1Click(Sender: TObject);
begin
  Podaci.frReport1.LoadFromFile(PathFRF + 'Zahtjev.frf');

  if (Sender as TMenuItem).Tag = 1 then Podaci.frReport1.ShowReport
  else if (Sender as TMenuItem).Tag = 2 then Podaci.frReport1.DesignReport;
end;

procedure TFZahtjevRatarstvo.wwTAfterInsert(DataSet: TDataSet);
var naj_broj, sifra_dok:String;
begin
    if TipSorte=2 then sifra_dok:='1' else sifra_dok:=IntToStr(TipSorte);  // ratarske i povræe zajedno
    wwTSifra_dok.Value:=StrToInt(sifra_dok);  // za zapisnike
    try // traži najveæi broj zahtjeva i vrati +1, na kraju dodaj 0-e
        qMax.ParamByName('SDokk').AsInteger:=StrToInt(sifra_dok);
        qMax.Open;
        naj_broj:=IntToStr(qMax.Fields[0].AsInteger+1);
        if Length(naj_broj)>6 then
            ShowMessage('Premašili ste predviðeni broj zapisnika!'+#13+'Nazovite programera.');
        while Length(naj_broj)<6 do naj_broj:='0'+naj_broj;
        qMax.Close;
    except
        if MessageDlg('Da li je ovo prvi zahtjev?', mtConfirmation, [mbYes,mbCancel], 0) = mrYes then
            naj_broj:='000001'
        else naj_broj:='';
    end;
    wwTUpisni_broj.Value:=naj_broj;
    wwTTip_zahtjeva.Value:=TipSorte;
//    ShowMessage(IntToStr(SifSorta)); //sorta - zahtjev kod inserta ????
    // Dodaj novi record u Odrzavanje
    qNaknada.Insert;
end;

procedure TFZahtjevRatarstvo.wwDBGrid4Enter(Sender: TObject);
begin
    wwDBGrid4.Options:=wwDBGrid4.Options+[Wwdbigrd.dgAlwaysShowSelection];
end;

procedure TFZahtjevRatarstvo.wwDBGrid4Exit(Sender: TObject);
begin
    wwDBGrid4.Options:=wwDBGrid4.Options-[Wwdbigrd.dgAlwaysShowSelection];
    if qNaknada.State=dsEdit then qNaknada.Post;
end;

procedure TFZahtjevRatarstvo.wwDBGrid4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key=27 then Close
    else if key=13 then
    begin
      if qNaknada.State=dsBrowse then qNaknada.Edit;
      if wwDBGrid4.SelectedField.FieldName='Prekid' then
      begin
        if qNaknada.FieldByName('Prekid').AsString='-' then
           qNaknada.FieldByName('Prekid').AsString:='B'
        else if qNaknada.FieldByName('Prekid').AsString='B' then
                qNaknada.FieldByName('Prekid').AsString:='Pr'
        else if qNaknada.FieldByName('Prekid').AsString='Pr' then
                qNaknada.FieldByName('Prekid').AsString:='-';
      end
      else
      begin
        if qNaknada.FieldByName(wwDBGrid4.SelectedField.FieldName).AsString='-' then
           qNaknada.FieldByName(wwDBGrid4.SelectedField.FieldName).AsString:='P'
        else qNaknada.FieldByName(wwDBGrid4.SelectedField.FieldName).AsString:='-';
      end;
    end
    else if key=vk_Delete then
    begin
        qNaknada.FieldByName(wwDBGrid4.SelectedField.FieldName).AsString:='-';
    end
    else if key in [vk_Left, vk_Right, vk_Down, vk_Up] then // radi ništa
    else if key in [vk_Tab] then SelectNext(sender as twincontrol,true,true);
end;

procedure TFZahtjevRatarstvo.wwTAfterCancel(DataSet: TDataSet);
begin
    if qNaknada.State=dsInsert then qNaknada.Cancel;
end;

procedure TFZahtjevRatarstvo.wwTAfterPost(DataSet: TDataSet);
begin
//dodaj u naknadu VRSTU_DOK i BROJ_DOK
     qNaknada.Edit;
     qNaknadaDatum_promjene.Value:=Now;
     qNaknadaSifra_zahtjeva.Value:=wwTSifra_zahtjeva.Value;
     qNaknada.Post;

     ProvjeriIme;
end;

procedure TFZahtjevRatarstvo.ProvjeriIme;
begin
     qPredIme.Open;
     if qPredIme.RecordCount>1 then
     begin
          ShowMessage('Predloženo ime sorte '''+wwTIme_sorte.Value+''' veæ postoji u ovoj klasi!');
          ds.Edit;
          wwTIme_sorte.Value:='';
          if Panel2.Visible then wwDBEdit16.SetFocus
          else if Panel1.Visible then wwDBEdit3.SetFocus;
     end;
     qPredIme.Close;
end;

procedure TFZahtjevRatarstvo.UpisniBrojEnter(Sender: TObject);
begin
    wwDBEdit13.Frame.NonFocusBorders:=[efLeftBorder,efTopBorder,efRightBorder,efBottomBorder];
    wwDBEdit13.Frame.NonFocusStyle:=efsFrameBox;
end;

procedure TFZahtjevRatarstvo.UpisniBrojExit(Sender: TObject);
begin
    wwDBEdit13.Frame.NonFocusBorders:=[efBottomBorder];
    wwDBEdit13.Frame.NonFocusStyle:=efsFrameRaised;
end;

procedure TFZahtjevRatarstvo.wwDBEdit1Exit(Sender: TObject);
begin
//    GridIzlaz(dsDUS,'Sifra_zahtjeva');
end;

procedure TFZahtjevRatarstvo.DBMemo1Exit(Sender: TObject);
begin
//    GridIzlaz(dsVCU,'Sifra_zahtjeva');
end;

procedure TFZahtjevRatarstvo.lookPodnositeljKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var old: Double;
begin
    if key=VK_F12 then
    begin
        Odabir.qOdabir.SQL.Text:='SELECT Partner.Sifra_partnera, Partner.Ime_partnera,'+
                ' Partner.Adresa, Partner.Mjesto, Partner.Drzava'+
                ' FROM Partner';
        case (Sender as TwwDBLookupCombo).Tag of
            0: old:=wwT.FieldByName('Sifra_podnositelja').Value;
            1: old:=wwT.FieldByName('Sifra_oplemenjivaca').Value;
            2: old:=wwT.FieldByName('Sifra_vlasnik').Value;
        end;
        Odabir.ShowModal;
        if old<>SifPartner then
        begin
            if wwT.State=dsBrowse then wwT.Edit;
            case (Sender as TwwDBLookupCombo).Tag of
                0: wwT.FieldByName('Sifra_podnositelja').Value:=SifPartner;
                1: wwT.FieldByName('Sifra_oplemenjivaca').Value:=SifPartner;
                2: wwT.FieldByName('Sifra_vlasnik').Value:=SifPartner;
            end;
        end;
    end
    else if key=VK_DELETE then ObrisiField('Lookup', Sender);
end;

procedure TFZahtjevRatarstvo.FakturiranjeClick(Sender: TObject);
begin
    ShowMessage('Ovdje idu detalji o fakturiranju');
end;

procedure TFZahtjevRatarstvo.GridStateChange(Sender: TObject);
begin
    if (Sender as TDataSource).DataSet.IsEmpty then
    begin
        dxDBGrid5.Color:=clMenu;
        dxDBGrid2.Color:=clMenu;
    end
    else
    begin
        dxDBGrid5.Color:=clWindow;
        dxDBGrid2.Color:=clWindow;
    end;
end;

procedure TFZahtjevRatarstvo.dsPriznataUStateChange(Sender: TObject);
begin
    if (Sender as TDataSource).DataSet.IsEmpty then
    begin
        dxDBGrid6.Color:=clMenu;
        dxDBGrid3.Color:=clMenu;
    end
    else
    begin
        dxDBGrid6.Color:=clWindow;
        dxDBGrid3.Color:=clWindow;
    end;
end;

procedure TFZahtjevRatarstvo.dsZasticenaUStateChange(Sender: TObject);
begin
    if (Sender as TDataSource).DataSet.IsEmpty then
    begin
        dxDBGrid7.Color:=clMenu;
        dxDBGrid4.Color:=clMenu;
    end
    else
    begin
        dxDBGrid7.Color:=clWindow;
        dxDBGrid4.Color:=clWindow;
    end;
end;

procedure TFZahtjevRatarstvo.qDrugiZAfterOpen(DataSet: TDataSet);
begin
    GridStateChange(dsDrugiZ);
end;

procedure TFZahtjevRatarstvo.qPriznataUAfterOpen(DataSet: TDataSet);
begin
    dsPriznataUStateChange(dsPriznataU);
end;

procedure TFZahtjevRatarstvo.qZasticenaUAfterOpen(DataSet: TDataSet);
begin
    dsZasticenaUStateChange(dsZasticenaU);
end;

procedure TFZahtjevRatarstvo.qOtpornostAfterOpen(DataSet: TDataSet);
begin
    dsOtpornostStateChange(dsOtpornost);
end;

procedure TFZahtjevRatarstvo.dsOtpornostStateChange(Sender: TObject);
begin
    if (Sender as TDataSource).DataSet.IsEmpty then
        gStetnici.Color:=clMenu else gStetnici.Color:=clWindow;
end;

procedure TFZahtjevRatarstvo.gStetniciExit(Sender: TObject);
begin
    GridIzlaz(dsOtpornost,'Bolest_stetnik');
end;

procedure TFZahtjevRatarstvo.dsStateChange(Sender: TObject);
begin
    if wwT.State=dsInsert then
    begin
        gStetnici.Enabled:=False;
        dxDBGrid5.Enabled:=False;
        dxDBGrid6.Enabled:=False;
        dxDBGrid7.Enabled:=False;
        wwDBGrid4.Enabled:=False;
    end
    else
    begin
        gStetnici.Enabled:=True;
        dxDBGrid4.Enabled:=True;
        dxDBGrid6.Enabled:=True;
        dxDBGrid7.Enabled:=True;
        wwDBGrid4.Enabled:=True;
    end;
end;

procedure TFZahtjevRatarstvo.DBMemo6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=VK_F1 then
    begin
        UnosNamjena:= TUnosNamjena(FindShowForm(TUnosNamjena,''));
        UnosNamjena.DBGrid11.OnDblClick:=UnosNamjena.NamjenaGridDBLClick;
        UnosNamjena.DBGrid11.OnKeyDown:=UnosNamjena.NamjenaGridKey;
    end;
end;

procedure TFZahtjevRatarstvo.wwTPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
var poruka  :String;
begin
    poruka:='';
    if wwTDatum_prijavljivanja.IsNull then poruka:=poruka+'Niste upisali DATUM PRIJAVLJIVANJA!';
    if wwTSifra_vrste.IsNull then poruka:=poruka+#13+'Niste odabrali VRSTU!';
    if wwTOznaka_sorte.IsNull then poruka:=poruka+#13+'Niste upisali OZNAKU SORTE!';
    if wwTSifra_podnositelja.IsNull then poruka:=poruka+#13+'Niste odabrali PODNOSITELJA!';
    if wwTSifra_oplemenjivaca.IsNull then poruka:=poruka+#13+'Niste odabrali OPLEMENJIVAÈA!';

    if poruka<>'' then e.Message:=poruka;
    Action:=daFail;
end;

procedure TFZahtjevRatarstvo.DelLookup(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key=VK_DELETE then ObrisiField('Lookup', Sender);
end;

procedure TFZahtjevRatarstvo.DelTimePick(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key=VK_DELETE then ObrisiField('TimePick', Sender);
end;

procedure TFZahtjevRatarstvo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    if wwT.State<>dsInsert then
    begin
        if tOdrzavanje.State in DsEditModes then tOdrzavanje.Post;
        if tPriznavanje.State in DsEditModes then tPriznavanje.Post;
        if tBrisanje.State in DsEditModes then tBrisanje.Post;
        if tPravo.State in DsEditModes then tPravo.Post;
        if tVCU.State in DsEditModes then tVCU.Post;
        if tDUS.State in DsEditModes then tDUS.Post;
    end;
    Action:=caFree;
end;

procedure TFZahtjevRatarstvo.DajBrojRjesenja(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key=VK_F1 then
    begin
        if not ((Sender as TwwDBEdit).DataSource.State in DsEditModes) then
            (Sender as TwwDBEdit).DataSource.DataSet.Edit;
//        ShowMessage(IntToStr((Sender as TwwDBEdit).Tag));
        case (Sender as TwwDBEdit).Tag of
        1: (Sender as TwwDBEdit).DataSource.DataSet.FieldByName((Sender as TwwDBEdit).DataField).AsString:=Rje1;
        2: (Sender as TwwDBEdit).DataSource.DataSet.FieldByName((Sender as TwwDBEdit).DataField).AsString:=Rje2;
        3: (Sender as TwwDBEdit).DataSource.DataSet.FieldByName((Sender as TwwDBEdit).DataField).AsString:=Rje3;
        4: (Sender as TwwDBEdit).DataSource.DataSet.FieldByName((Sender as TwwDBEdit).DataField).AsString:=Rje4;
        5: (Sender as TwwDBEdit).DataSource.DataSet.FieldByName((Sender as TwwDBEdit).DataField).AsString:=Rje5;
        6: (Sender as TwwDBEdit).DataSource.DataSet.FieldByName((Sender as TwwDBEdit).DataField).AsString:=NN1;
        7: (Sender as TwwDBEdit).DataSource.DataSet.FieldByName((Sender as TwwDBEdit).DataField).AsString:=NN2;
        8: (Sender as TwwDBEdit).DataSource.DataSet.FieldByName((Sender as TwwDBEdit).DataField).AsString:=NN3;
        9: (Sender as TwwDBEdit).DataSource.DataSet.FieldByName((Sender as TwwDBEdit).DataField).AsString:=NN4;
        10: (Sender as TwwDBEdit).DataSource.DataSet.FieldByName((Sender as TwwDBEdit).DataField).AsString:=NN5;
        end;
//            (Sender as TwwDBEdit).DataSource.DataSet.Post;
    end;
end;

procedure TFZahtjevRatarstvo.ToolButton1Click(Sender: TObject);
begin
    if ToolButton1.Caption=' Detalji povræa ' then
    begin
        Panel3.Visible:=True;
        ToolButton1.Caption:=' Zatvori detalje ';
    end
    else
    begin
        Panel3.Visible:=False;
        ToolButton1.Caption:=' Detalji povræa ';
    end;
end;

procedure TFZahtjevRatarstvo.wwTSifra_vrsteChange(Sender: TField);
begin
    wwTSifra_klase.Value:=wwTlook_Klasa.Value;
end;

procedure TFZahtjevRatarstvo.BojaVCUAfterOpen(DataSet: TDataSet);
begin
    if BojaVCU.IsEmpty then wwDBLookupCombo2.Color:=clWindow
    else wwDBLookupCombo2.Color:=BojaVCU.FieldByName('boja').AsInteger; // promjeni boju statusa VCU
end;

procedure TFZahtjevRatarstvo.wwDBLookupCombo2CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
    if modified then
    begin
        if wwTVCU_oznaka.Value='' then wwDBLookupCombo2.Color:=clWindow
        else wwDBLookupCombo2.Color:=tSvcu.FieldByName('boja').AsInteger; // promjeni boju statusa VCU
    end;
end;

procedure TFZahtjevRatarstvo.dxDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
var ima: Boolean;
      s: String;
begin
     if Key in ['A'..'Z','a'..'z','0'..'9','š','ð','è','æ','ž','Š','Ð','Ž','Æ','È','%'] then
          if (dxDBGrid1.FocusedField.FieldName='Oznaka_sorte')
              or (dxDBGrid1.FocusedField.FieldName='Ime_sorte')
              or (dxDBGrid1.FocusedField.FieldName='Upisni_broj') then
          begin
               PojamForm.Edit1.Text:=Key;
               PojamForm.Edit1.SelStart:=1;
               PojamForm.ShowModal;
               if PojamForm.ModRes then
               begin
                    s:=PojamForm.Edit1.Text;
                    if Pos('%', s) > 0 then ima:=True else ima:=False;
                    if ima then
                         while Pos('%', s) > 0 do Delete(s, Pos('%', s), 1);     // obriši sve '%'

//                    if ima then
                         Zahtjev_Master.Locate(dxDBGrid1.FocusedField.FieldName, s, [loPartialKey, loCaseInsensitive]);
//                    else Zahtjev_Master.Locate(dxDBGrid1.FocusedField.FieldName, s, [loCaseInsensitive]);
               end;
          end;
end;

procedure TFZahtjevRatarstvo.wwTAfterOpen(DataSet: TDataSet);
begin
     // otvori sve tablice sa MasterSource na wwT
     tDetPovrce.Open;
     tPriznavanje.Open;
     tNePriznavanje.Open;
     tOdrzavanje.Open;
     tBrisanje.Open;
     tPravo.Open;
     tDUS.Open;
     tVCU.Open;
end;

procedure TFZahtjevRatarstvo.wwTBeforeClose(DataSet: TDataSet);
begin
     // zatvori sve tablice sa MasterSource na wwT
     tDetPovrce.Close;
     tPriznavanje.Close;
     tNePriznavanje.Close;
     tOdrzavanje.Close;
     tBrisanje.Close;
     tPravo.Close;
     tDUS.Close;
     tVCU.Close;
end;

procedure TFZahtjevRatarstvo.OtvoriKucice;
begin
     // stavi sve DataSetove u write mode
     ds.AutoEdit:=True;
     dsDrugiZ.AutoEdit:=True;
     dsPriznataU.AutoEdit:=True;
     dsZasticenaU.AutoEdit:=True;
     dsOtpornost.AutoEdit:=True;
     dsNaknada.AutoEdit:=True;
     dsDUS.AutoEdit:=True;
     dsVCU.AutoEdit:=True;
     dsDetPov.AutoEdit:=True;
     dsPriznavanje.AutoEdit:=True;
     dsNePriznavanje.AutoEdit:=True;
     dsOdrzavanje.AutoEdit:=True;
     dsBrisanje.AutoEdit:=True;
     dsPravo.AutoEdit:=True;
     gStetnici.ReadOnly:=False;
     dxDBGrid5.OptionsBehavior:=dxDBGrid5.OptionsBehavior+[edgoEditing]; // qDrugiZ
     dxDBGrid6.OptionsBehavior:=dxDBGrid6.OptionsBehavior+[edgoEditing]; // qPriznataU
     dxDBGrid7.OptionsBehavior:=dxDBGrid7.OptionsBehavior+[edgoEditing];
     wwDBGrid4.OnKeyDown:=wwDBGrid4KeyDown;
     dxDBGrid2.OptionsBehavior:=dxDBGrid2.OptionsBehavior+[edgoEditing]; // qDrugiZ povræe
     dxDBGrid3.OptionsBehavior:=dxDBGrid3.OptionsBehavior+[edgoEditing]; // qPriznataU povræe
     dxDBGrid4.OptionsBehavior:=dxDBGrid4.OptionsBehavior+[edgoEditing];

     wwNavButton5.Enabled:=True;
     Splitter1.Color:=clGreen;
end;

procedure TFZahtjevRatarstvo.ZatvoriKucice;
begin
     // stavi sve DataSetove u read only mode
     ds.AutoEdit:=False;
     dsDrugiZ.AutoEdit:=False;
     dsPriznataU.AutoEdit:=False;
     dsZasticenaU.AutoEdit:=False;
     dsOtpornost.AutoEdit:=False;
     dsNaknada.AutoEdit:=False;
     dsDUS.AutoEdit:=False;
     dsVCU.AutoEdit:=False;
     dsDetPov.AutoEdit:=False;
     dsPriznavanje.AutoEdit:=False;
     dsNePriznavanje.AutoEdit:=False;
     dsOdrzavanje.AutoEdit:=False;
     dsBrisanje.AutoEdit:=False;
     dsPravo.AutoEdit:=False;
     gStetnici.ReadOnly:=True;
     dxDBGrid5.OptionsBehavior:=dxDBGrid5.OptionsBehavior-[edgoEditing]; // qDrugiZ povræe
     dxDBGrid6.OptionsBehavior:=dxDBGrid6.OptionsBehavior-[edgoEditing]; // qPriznataU povræe
     dxDBGrid7.OptionsBehavior:=dxDBGrid7.OptionsBehavior-[edgoEditing];
     wwDBGrid4.OnKeyDown:=nil;
     dxDBGrid2.OptionsBehavior:=dxDBGrid2.OptionsBehavior-[edgoEditing]; // qDrugiZ povræe
     dxDBGrid3.OptionsBehavior:=dxDBGrid3.OptionsBehavior-[edgoEditing]; // qPriznataU povræe
     dxDBGrid4.OptionsBehavior:=dxDBGrid4.OptionsBehavior-[edgoEditing];

     wwNavButton5.Enabled:=False;
     Splitter1.Color:=clRed;
end;

procedure TFZahtjevRatarstvo.PravoNaVrstu(korisnik: Integer);
begin
     qPravoNaVrste.ParamByName('skorisnik').AsInteger:=SifraKorisnika;
     qPravoNaVrste.ParamByName('svrsta').AsInteger:=wwTSifra_vrste.AsInteger;
     qPravoNaVrste.Prepare;
     qPravoNaVrste.Open;

     if PravaNaModul=1 then OtvoriKucice
     else
     if qPravoNaVrste.RecordCount>0 then OtvoriKucice // ako ima pravo na vrste
     else ZatvoriKucice; // ako nema pravo na vrste

     qPravoNaVrste.Close;
end;

procedure TFZahtjevRatarstvo.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
     PravoNaVrstu(SifraKorisnika);
end;

procedure TFZahtjevRatarstvo.wwTBeforePost(DataSet: TDataSet);
begin
     wwTSifra_klase.Value:=tVrstaKlasa.Value;
end;

procedure TFZahtjevRatarstvo.dxDBGrid1ChangeColumn(Sender: TObject;
  Node: TdxTreeListNode; Column: Integer);
begin
     if ((Sender as TdxDBGrid).FocusedField.FieldName='Oznaka_sorte')
     or ((Sender as TdxDBGrid).FocusedField.FieldName='Ime_sorte')
     or ((Sender as TdxDBGrid).FocusedField.FieldName='Upisni_broj') then
          (Sender as TdxDBGrid).OptionsBehavior:=(Sender as TdxDBGrid).OptionsBehavior+[edgoAutoSearch]
     else (Sender as TdxDBGrid).OptionsBehavior:=(Sender as TdxDBGrid).OptionsBehavior-[edgoAutoSearch];
end;

procedure TFZahtjevRatarstvo.qOdjelAfterOpen(DataSet: TDataSet);
begin
//ShowMessage('Open: '+qodjel.Fieldbyname('sifra').AsString+'-'+qodjel.Fieldbyname('naziv_odjela').AsString+', '+Inttostr(wwTOdjel.Value));
end;

procedure TFZahtjevRatarstvo.onKeyGrid(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
//    if (key=VK_Delete) and (Shift=ssCtrl) then ;
end;

procedure TFZahtjevRatarstvo.PostajMastera(DataSet: TDataSet);
begin
     if wwT.State in DsEditModes then wwT.Post;
end;

end.

