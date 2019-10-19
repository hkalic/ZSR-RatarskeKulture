unit ZahtjevPravo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, DBCtrls, ExtCtrls, ToolWin, Grids, StdCtrls, wwcheckbox,
  dxCntner, dxEditor, dxEdLib, Mask, wwdbedit, dxDBGrid, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, ImgList, DBTables, Db,
  wwSpeedButton, wwDBNavigator, wwclearpanel, Wwdbigrd, Wwdbgrid,
  wwdblook, Wwdatsrc, Wwtable, wwDialog, wwrcdvw, wwdbdatetimepicker,
  Wwdotdot, Wwdbcomb, Wwquery, wwrcdpnl, Wwdbdlg, wwidlg, variants, DBGrids,
  RXDBCtrl;

type
  TFZahtjevPravo = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ToolBar2: TToolBar;
    wwDBNavigator1: TwwDBNavigator;
    wwNavButton2: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    wwNavButton7: TwwNavButton;
    wwNavButton8: TwwNavButton;
    Splitter1: TSplitter;
    DBNavigator1: TDBNavigator;
    Print: TToolButton;
    ToolBar1: TToolBar;
    wwDBNavigator2: TwwDBNavigator;
    btNovi: TwwNavButton;
    btIzmjena: TwwNavButton;
    btObnovi: TwwNavButton;
    dxDBGrid1: TdxDBGrid;
    Panel3: TPanel;
    wwDBLookupCombo9: TwwDBLookupCombo;
    wwDBLookupCombo10: TwwDBLookupCombo;
    wwDBEdit25: TwwDBEdit;
    dxEdit83: TdxEdit;
    dxEdit84: TdxEdit;
    wwDBDateTimePicker23: TwwDBDateTimePicker;
    dxEdit85: TdxEdit;
    dxEdit86: TdxEdit;
    dxEdit87: TdxEdit;
    dxEdit89: TdxEdit;
    wwDBEdit32: TwwDBEdit;
    dxEdit113: TdxEdit;
    dxEdit114: TdxEdit;
    wwDBEdit33: TwwDBEdit;
    wwDBLookupCombo13: TwwDBLookupCombo;
    wwDBEdit37: TwwDBEdit;
    dxEdit123: TdxEdit;
    dxEdit88: TdxEdit;
    wwCheckBox8: TwwCheckBox;
    Panel4: TPanel;
    dxEdit90: TdxEdit;
    dxEdit91: TdxEdit;
    wwDBDateTimePicker24: TwwDBDateTimePicker;
    dxEdit92: TdxEdit;
    wwDBEdit28: TwwDBEdit;
    wwCheckBox9: TwwCheckBox;
    wwCheckBox10: TwwCheckBox;
    dxEdit93: TdxEdit;
    wwDBEdit29: TwwDBEdit;
    dxEditStyleController1: TdxEditStyleController;
    Images: TImageList;
    wwT: TwwTable;
    ds: TwwDataSource;
    qMax: TQuery;
    Zahtjev_Master: TQuery;
    dsZahtjev_Master: TDataSource;
    Zahtjev_MasterUpisni_broj: TStringField;
    Zahtjev_MasterDatum_prijavljivanja: TDateTimeField;
    Zahtjev_MasterIme_sorte: TStringField;
    Zahtjev_MasterVrsta_hrv: TStringField;
    Zahtjev_MasterVrsta_lat: TStringField;
    Zahtjev_MasterIme_partnera: TStringField;
    Zahtjev_MasterSifra_zahtjeva: TIntegerField;
    Zahtjev_MasterOznaka_sorte: TStringField;
    dxDBGrid1Upisni_broj: TdxDBGridMaskColumn;
    dxDBGrid1Datum_prijavljivanja: TdxDBGridDateColumn;
    dxDBGrid1Ime_sorte: TdxDBGridMaskColumn;
    dxDBGrid1Vrsta_hrv: TdxDBGridMaskColumn;
    dxDBGrid1Vrsta_lat: TdxDBGridMaskColumn;
    dxDBGrid1Ime_partnera: TdxDBGridMaskColumn;
    dxDBGrid1Sifra_zahtjeva: TdxDBGridMaskColumn;
    dxDBGrid1Oznaka_sorte: TdxDBGridMaskColumn;
    wwTSifra_zahtjeva: TAutoIncField;
    wwTSifra_dok: TSmallintField;
    wwTUpisni_broj: TStringField;
    wwTDatum_prijavljivanja: TDateTimeField;
    wwTKoristena_prodavana: TBooleanField;
    wwTKoja_zemlja: TStringField;
    wwTDatum_kor_prod: TDateField;
    wwTKoji_uvjeti: TStringField;
    wwTPodnositeljev_pristanak: TBooleanField;
    wwTPravo_za_zahtjev: TBooleanField;
    wwTKoji_zahtjev: TStringField;
    wwTDokumenti: TStringField;
    wwTDatum_promjene: TDateTimeField;
    wwTMaticna_zemlja: TStringField;
    tPartner1: TTable;
    tPartner1Ime_partnera: TStringField;
    tPartner1Adresa: TStringField;
    tPartner1Mjesto: TStringField;
    dsPartner1: TDataSource;
    dsPartner2: TDataSource;
    tPartner2: TTable;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    wwTlook_ImePodnositelja: TStringField;
    wwTlook_ImeOplemenjivaca: TStringField;
    tZahtPB: TTable;
    dsZahtPB: TDataSource;
    tZahtPBSifra_zahtjeva: TAutoIncField;
    tZahtPBSifra_dok: TSmallintField;
    tZahtPBUpisni_broj: TStringField;
    tZahtPBOznaka_sorte: TStringField;
    tZahtPBIme_sorte: TStringField;
    tVrsta: TTable;
    tVrstaVrsta_hrv: TStringField;
    tVrstaVrsta_lat: TStringField;
    tVrstaSifra_vrste: TAutoIncField;
    dsVrsta: TDataSource;
    tZahtPBlook_Vrsta_HR: TStringField;
    tZahtPBlook_Vrsta_LAT: TStringField;
    wwTlook_ImeSorte: TStringField;
    wwTlook_OznakaSorte: TStringField;
    wwTlook_VrstaHR: TStringField;
    dsQZemlje: TDataSource;
    qZemlje: TQuery;
    qZemljeRegistarski_broj: TStringField;
    qZemljeIme: TStringField;
    qZemljeDatum_promjene: TDateTimeField;
    tUpisnikDetail: TTable;
    wwTIme_zastupnika: TStringField;
    wwTAdresa_zastupnika: TStringField;
    wwDBEdit1: TwwDBEdit;
    dxEdit1: TdxEdit;
    wwDBEdit2: TwwDBEdit;
    tZahtPBSifra_vrste: TIntegerField;
    tDrzava: TTable;
    AutoIncField4: TAutoIncField;
    StringField4: TStringField;
    dsDrzava: TDataSource;
    qZemljelook_NazivDrzave: TStringField;
    qZemljeDrzava: TIntegerField;
    dxDBGrid2: TdxDBGrid;
    tPartner1Sifra_partnera: TAutoIncField;
    qZemljeSifra_zahtjeva: TIntegerField;
    wwTSifra_podnositelja: TIntegerField;
    wwTSifra_oplemenjivaca: TIntegerField;
    wwTMjesto_zastupnika: TStringField;
    wwTSifra_ZPriznavanja: TIntegerField;
    wwTSifra_druga_zemlja: TIntegerField;
    wwDBLookupCombo12: TwwDBLookupCombo;
    tDrzava2: TTable;
    dsDrzava2: TDataSource;
    tDrzava2Sifra: TAutoIncField;
    tDrzava2Naziv_Drzave: TStringField;
    wwTSifra_MaticnaZemlja: TIntegerField;
    wwTSifra_KojaZemlja: TIntegerField;
    wwTlook_MaticnaZemlja: TStringField;
    wwDBLookupCombo1: TwwDBLookupCombo;
    tDrzava3: TTable;
    AutoIncField2: TAutoIncField;
    StringField5: TStringField;
    dsDrzava3: TDataSource;
    wwTlook_KojaZemlja: TStringField;
    dxDBGrid2look_NazivDrzave: TdxDBGridLookupColumn;
    dxDBGrid2Datum: TdxDBGridDateColumn;
    dxDBGrid2Registarski_broj: TdxDBGridMaskColumn;
    dxDBGrid2Ime: TdxDBGridMaskColumn;
    dxDBGrid2Drzava: TdxDBGridMaskColumn;
    dxDBGrid2Datum_promjene: TdxDBGridDateColumn;
    dxDBGrid2Sifra_zahtjeva: TdxDBGridMaskColumn;
    qZemljeDatum: TDateField;
    procedure btObnoviClick(Sender: TObject);
    procedure UpisniBrojEnter(Sender: TObject);
    procedure UpisniBrojExit(Sender: TObject);
    procedure wwTAfterInsert(DataSet: TDataSet);
    procedure wwTPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure PageControl1Change(Sender: TObject);
    procedure dxDBGrid1DblClick(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DelLookup(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DelTimePick(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure wwCheckBox8Click(Sender: TObject);
    procedure wwCheckBox10Click(Sender: TObject);
    procedure qZemljeAfterOpen(DataSet: TDataSet);
    procedure qZemljeAfterPost(DataSet: TDataSet);
    procedure qZemljeBeforePost(DataSet: TDataSet);
    procedure wwDBGrid5Exit(Sender: TObject);
    procedure wwTAfterPost(DataSet: TDataSet);
    procedure wwDBEdit29KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qZemljeBeforeInsert(DataSet: TDataSet);
    procedure wwDBLookupCombo13MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FZahtjevPravo: TFZahtjevPravo;
  procedure ObrisiField(tip: String; Sender: TObject);

implementation

Uses BazeModul, Main, wwFrame;

{$R *.DFM}

procedure TFZahtjevPravo.btObnoviClick(Sender: TObject);
begin
    Zahtjev_Master.Active:=False;
    Zahtjev_Master.SQL:=ZahtPravo;    // Uèitaj query iz memorije
    Zahtjev_Master.SQL.Add('WHERE Zahtjev_Pravo.Sifra_dok=17'); // i dodaj filter za tip dokumenta
    Zahtjev_Master.Open;
    Zahtjev_Master.Locate('Sifra_zahtjeva',wwT.FieldByName('Sifra_zahtjeva').AsInteger,[]);
end;

procedure TFZahtjevPravo.UpisniBrojEnter(Sender: TObject);
begin
    wwDBEdit25.Frame.NonFocusBorders:=[efLeftBorder,efTopBorder,efRightBorder,efBottomBorder];
    wwDBEdit25.Frame.NonFocusStyle:=efsFrameBox;
end;

procedure TFZahtjevPravo.UpisniBrojExit(Sender: TObject);
begin
    wwDBEdit25.Frame.NonFocusBorders:=[efBottomBorder];
    wwDBEdit25.Frame.NonFocusStyle:=efsFrameRaised;
end;

procedure TFZahtjevPravo.wwTAfterInsert(DataSet: TDataSet);
var naj_broj    :String;
begin
    wwTSifra_dok.Value:=17;  // za zapisnik o.prava
    try // traži najveæi broj zahtjeva i vrati +1, na kraju dodaj 0-e
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

//    wwTUpisni_broj.Value:='000000';
//    wwTTip_zahtjeva.Value:=TipSorte;
//    ShowMessage(IntToStr(SifSorta)); //sorta - zahtjev kod inserta ????
end;

procedure TFZahtjevPravo.wwTPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
var poruka  :String;
begin
    poruka:='';
    if wwTDatum_prijavljivanja.IsNull then poruka:=poruka+'Niste upisali DATUM PRIJAVLJIVANJA!';
    if wwTSifra_ZPriznavanja.IsNull then poruka:=poruka+#13+'Niste odabrali SORTU!';
    if wwTSifra_podnositelja.IsNull then poruka:=poruka+#13+'Niste odabrali PODNOSITELJA!';
    if wwTSifra_oplemenjivaca.IsNull then poruka:=poruka+#13+'Niste odabrali OPLEMENJIVAÈA!';

    if poruka<>'' then e.Message:=poruka;
    Action:=daFail;
end;

procedure TFZahtjevPravo.PageControl1Change(Sender: TObject);
begin
    If PageControl1.ActivePage=TabSheet1 Then
    begin
        if wwT.State in DsEditModes then
            if MessageDlg('Da li hoæete zapamtiti promjene?', mtConfirmation, [mbYes,mbCancel], 0) = mrYes then
                wwT.Post else wwT.Cancel;
        btObnoviClick(Sender);  // Refrešaj query
    end
    else If PageControl1.ActivePage=TabSheet2 Then
        wwT.Locate('Sifra_zahtjeva', Zahtjev_Master.FieldByName('Sifra_zahtjeva').AsInteger,[]);
end;

procedure TFZahtjevPravo.dxDBGrid1DblClick(Sender: TObject);
begin
    PageControl1.ActivePage:=TabSheet2;
    PageControl1Change(PageControl1);
end;

procedure TFZahtjevPravo.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key=13) and (Shift=[]) then dxDBGrid1DblClick(Sender);
end;

procedure TFZahtjevPravo.FormActivate(Sender: TObject);
begin
    dxDBGrid1.IniFileName:=PathBIN+'dxDbgZP.ini';
    dxDBGrid1.LoadFromIniFile(dxDBGrid1.IniFileName);
end;

procedure TFZahtjevPravo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    if wwT.State<>dsInsert then
        if tUpisnikDetail.State in DsEditModes then tUpisnikDetail.Post;
    Action:=caFree;
end;

procedure TFZahtjevPravo.FormCreate(Sender: TObject);
begin
    PageControl1.ActivePage := TabSheet1;
    btObnoviClick(Sender);  // Refrešaj query
end;

procedure ObrisiField(tip: String; Sender: TObject);
begin
    if tip='Lookup' then
    begin
        if not ((Sender as TwwDBLookupCombo).DataSource.State=dsEdit) then
            (Sender as TwwDBLookupCombo).DataSource.Edit;
        (Sender as TwwDBLookupCombo).DataSource.DataSet.FieldByName((Sender as TwwDBLookupCombo).DataSource.DataSet.FieldByName((Sender as TwwDBLookupCombo).DataField).KeyFields).Value:=Null;
    end
    else if tip='TimePick' then
    begin
        if not ((Sender as TwwDBDateTimePicker).DataSource.State=dsEdit) then
            (Sender as TwwDBDateTimePicker).DataSource.Edit;
        (Sender as TwwDBDateTimePicker).DataSource.DataSet.FieldByName((Sender as TwwDBDateTimePicker).DataField).Value:=Null;
    end
    else if tip='Edit' then
    begin
        if not ((Sender as TwwDBEdit).DataSource.State=dsEdit) then
            (Sender as TwwDBEdit).DataSource.Edit;
        (Sender as TwwDBEdit).DataSource.DataSet.FieldByName((Sender as TwwDBEdit).DataField).Value:=Null;
    end;
end;

procedure TFZahtjevPravo.DelLookup(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key=VK_DELETE then ObrisiField('Lookup', Sender);
end;

procedure TFZahtjevPravo.DelTimePick(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key=VK_DELETE then ObrisiField('TimePick', Sender);
end;

procedure TFZahtjevPravo.dsDataChange(Sender: TObject; Field: TField);
begin
    if wwTKoristena_prodavana.Value then Panel4.Visible:=True else Panel4.Visible:=False;
end;

procedure TFZahtjevPravo.wwCheckBox8Click(Sender: TObject);
begin
    if wwCheckBox8.Checked then Panel4.Visible:=True else Panel4.Visible:=False;
end;

procedure TFZahtjevPravo.wwCheckBox10Click(Sender: TObject);
begin
    if wwCheckBox10.Checked then
    begin
        wwDBEdit29.Visible:=True;
        dxEdit93.Visible:=True;
    end
    else
    begin
        wwDBEdit29.Visible:=False;
        dxEdit93.Visible:=False;
    end;
end;

procedure TFZahtjevPravo.qZemljeAfterOpen(DataSet: TDataSet);
begin
    if DataSet.IsEmpty then
        dxDBGrid2.Color:=clMenu
    else dxDBGrid2.Color:=clWindow;
end;

procedure TFZahtjevPravo.qZemljeAfterPost(DataSet: TDataSet);
begin
    if ((qZemljeDrzava.IsNull) or (qZemljeDrzava.Value=0)) then qZemlje.Delete;
end;

procedure TFZahtjevPravo.qZemljeBeforePost(DataSet: TDataSet);
begin
//     DataSet.FieldByName('Sifra_zahtjeva').Value:=wwTSifra_zahtjeva.AsInteger;
//       ShowMessage(wwTSifra_zahtjeva.AsString);
     DataSet.FieldByName('Datum_promjene').Value:=Now;
end;

procedure TFZahtjevPravo.wwDBGrid5Exit(Sender: TObject);
var Stvarno_polje: TField;
begin
    if qZemlje.State=dsInsert then
    begin
        Stvarno_polje:=qZemlje.FieldByName('Sifra_zahtjeva');
        if (Stvarno_polje.IsNull) or (Stvarno_polje.Value='') then qZemlje.Cancel
        else qZemlje.Post;
    end
    else if qZemlje.State=dsEdit then qZemlje.Post;  // ovdje možda ide kontrola za DELETE
end;

procedure TFZahtjevPravo.wwTAfterPost(DataSet: TDataSet);
begin
    with tUpisnikDetail do
    begin
        Open;
        if not Locate('Sifra_upisnika',wwTSifra_zahtjeva.AsInteger,[]) then  // provjera za svaki sluèaj
        begin
            Insert;
            FieldByName('Sifra_upisnika').AsInteger:=wwTSifra_zahtjeva.AsInteger;
            FieldByName('Jedinstvena_oznaka').AsString:=IntToStr(tZahtPBSifra_dok.AsInteger)+' '+tZahtPBUpisni_broj.AsString;
            Post;
        end;
        Close;
    end;
end;

procedure TFZahtjevPravo.wwDBEdit29KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=VK_F1 then dxDBGrid2.SetFocus
    else if key=VK_DELETE then ObrisiField('Edit', Sender);
end;

procedure TFZahtjevPravo.wwDBGrid5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var i:  Integer;
    s:  String;
begin
    if key=VK_F1 then
    begin
        if not (wwT.State in DsEditModes) then wwT.Edit;
        wwTPravo_za_zahtjev.AsBoolean:=True;
        wwCheckBox10Click(wwCheckBox10);
        s:='';
        for i:=0 to qZemlje.FieldCount-1 do
            if qZemlje.Fields[i].Visible then s:=s+qZemlje.Fields[i].AsString+', ';
        SetLength(s, Length(s)-2); // obriši zadnji ', '
        wwTKoji_zahtjev.AsString:=s;
        wwDBEdit29.SetFocus;
    end;
end;

procedure TFZahtjevPravo.qZemljeBeforeInsert(DataSet: TDataSet);
begin
     if wwT.State in DsEditModes then wwT.Post;
end;

procedure TFZahtjevPravo.wwDBLookupCombo13MouseLeave(Sender: TObject);
begin
//    wwTUpisni_broj.Value:=tZahtPBUpisni_broj.Value;
end;

end.
