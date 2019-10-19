unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, DB, DBTables, ComCtrls, ToolWin, Grids, DBGrids, RXDBCtrl,
  StdCtrls, ExtCtrls, DBCtrls, Mask, Tabnotbk, RxDBComb, RXLookup,
  RXShell, AppEvent, Placemnt, BDEUtils, RXCtrls, ImgList, lmdctrl,
  lmdeditb, lmdeditc, LMDEdit, lmdclass, lmdnwgui, lmdextcS, lmdstdcS,
  lmdnonvS, ZipMstr, FileCtrl, FileUtil, Wwintl, lmdcompo, lmdcctrl,
  LMDGlobalHotKey, LMDCustomComponent, LMDOneInstance, FR_DSet,
  FR_DBSet, MemTable;

type
  TMainForm = class(TForm)
    LMDOneInstance1: TLMDOneInstance;
    ZipMaster1: TZipMaster;
    MainMenu1: TMainMenu;
    Datoteka1: TMenuItem;
    Reindexbazapodataka1: TMenuItem;
    Kontrolabazapodataka1: TMenuItem;
    N3: TMenuItem;
    Arhiviranjepodataka1: TMenuItem;
    SvkodnevnoHDD1: TMenuItem;
    Periodinodisketa1: TMenuItem;
    N2: TMenuItem;
    Izlazizprograma1: TMenuItem;
    Zahtjevi1: TMenuItem;
    ifarnici1: TMenuItem;
    Partneri1: TMenuItem;
    Programskeosnovne1: TMenuItem;
    Window1: TMenuItem;
    Cascade1: TMenuItem;
    Tile1: TMenuItem;
    TileVertical1: TMenuItem;
    Arangeicons1: TMenuItem;
    MinimizeAll1: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton6: TToolButton;
    ToolButton10: TToolButton;
    LMDGlobalHotKey1: TLMDGlobalHotKey;
    Pregledobrada1: TMenuItem;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ProvjeristrukturebazasaDBS1: TMenuItem;
    N4: TMenuItem;
    Pregledpartnera1: TMenuItem;
    Evidencijapodataka2: TMenuItem;
    Slanjepodataka1: TMenuItem;
    Sorte1: TMenuItem;
    N1: TMenuItem;
    Vrste1: TMenuItem;
    N5: TMenuItem;
    StatusVCU1: TMenuItem;
    StatusDUSa1: TMenuItem;
    zapriznavanjepoljoprivrednogbilja1: TMenuItem;
    zapriznavanjevoa1: TMenuItem;
    Nalogzafakturiranje1: TMenuItem;
    Trokovipriznavanja1: TMenuItem;
    Fakturiranje1: TMenuItem;
    N6: TMenuItem;
    Namjene1: TMenuItem;
    Kontaktipartnera1: TMenuItem;
    frDBDataSet1: TfrDBDataSet;
    qTemp: TQuery;
    dsTemp: TDataSource;
    tTemp: TMemoryTable;
    dsTTemp: TDataSource;
    qTempcijena_stavke: TCurrencyField;
    qTempavans: TSmallintField;
    qTempsifra_naloga: TIntegerField;
    qTempsifra_stavke: TIntegerField;
    qTempoznaka_sorte: TStringField;
    tTempcijena_stavke: TCurrencyField;
    tTempavans: TSmallintField;
    tTempsifra_naloga: TIntegerField;
    tTempsifra_stavke: TIntegerField;
    tTempoznaka_sorte: TStringField;
    tTempkom: TIntegerField;
    qOpis: TQuery;
    qTempsifra_placanja: TStringField;
    tTempsifra_placanja: TStringField;
    tTempiznos: TCurrencyField;
    tVrsta: TTable;
    DataSource1: TDataSource;
    tTemplookVrstaHR: TStringField;
    tTempopis: TStringField;
    N7: TMenuItem;
    Dizajnnaloga1: TMenuItem;
    tPartner: TTable;
    dsPartner: TDataSource;
    tTemplookNazivPartnera: TStringField;
    tTemplookMjesto: TStringField;
    tTemplookAdresa: TStringField;
    qTempgodina_naloga: TStringField;
    tTempgodina_naloga: TStringField;
    qTempdatum_izdavanja: TDateField;
    tTempdatum_izdavanja: TDateField;
    qTempbroj_naloga: TIntegerField;
    tTempbroj_naloga: TIntegerField;
    qTempnapomena: TStringField;
    tTempnapomena: TStringField;
    zastjecanjeoplemenjivakogprava1: TMenuItem;
    Zatita1: TMenuItem;
    UpisnikzahtjevazastjecanjeOP1: TMenuItem;
    N9: TMenuItem;
    Licencije1: TMenuItem;
    Klasa1: TMenuItem;
    Odjelipartnera1: TMenuItem;
    Pravakorisnika1: TMenuItem;
    Korisnici1: TMenuItem;
    Pravanamodule1: TMenuItem;
    Pravanavrste1: TMenuItem;
    qTempsifra_vrste: TIntegerField;
    N8: TMenuItem;
    Drave1: TMenuItem;
    Pregledvrsta1: TMenuItem;
    Kontaktipartnera2: TMenuItem;
    Odjelipartnera2: TMenuItem;
    qTempsifra_podnositelja: TIntegerField;
    tTempsifra_vrste: TIntegerField;
    tTempsifra_podnositelja: TIntegerField;
    procedure UpdateMenuItems(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MENIClick(Sender: TObject);

    procedure ZipMaster1Message(Sender: TObject; ErrCode: Integer;Message: String);
    procedure ZipMaster1Progress(Sender: TObject; ProgrType: ProgressType;Filename: String; FileSize: Integer);
    procedure Tile1Click(Sender: TObject);
    procedure TileVertical1Click(Sender: TObject);
    procedure Arangeicons1Click(Sender: TObject);
    procedure MinimizeAll1Click(Sender: TObject);
    procedure Cascade1Click(Sender: TObject);
    procedure LMDGlobalHotKey1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qTempAfterOpen(DataSet: TDataSet);
    procedure tTempCalcFields(DataSet: TDataSet);

  private
    { Private declarations }
    procedure testdatoteka;
    Function  PorukaIzlaz:Boolean;
    procedure KontrolaBaza;
    procedure KopijaBaza(koja:Integer;Pitaj:Boolean);
    Function  Otvorena(naziv:string):Boolean;
    procedure JedMjObrada;

  public
    { Public declarations }
     TotalSize1, TotalProgress1, TotalSize2, TotalProgress2: Int64;
    procedure IspisiNalog(broj,godina:string; design:Boolean);
  end;

  function PristupOpciji(modul: String): Boolean;

var
  MainForm: TMainForm;
  SifSorta, SifPartner, TipSorte: Integer;
  ZahtSQL, ZahtPravo, PravoDetail: TStringList;

implementation
uses BazeModul, AppUtils,  UnosTemplate, Servisi, MakeDBStatus, ZahtjevPravo,
     PostavkeDlg, MsgUnit, Pricekaj, UnosPartneri, UnosSorte, ZahtjevRatarstvo,
     PrijaveGRID, NacinObradeDlg, PozivSifDlg, UnosVrste, UnosVCU, UnosDUS,
     FaktureUnit, UnisNamjena, UnosKontakta, Upisnik, UnosLicencija, UnosKlase,
     UnosOdjela, OdabirPrikazaDlg, UnosKorisnika, PravoZaModule, PravoZaVrste,
     UnosDrzava;

{$R *.DFM}
//{$R ZipMsgYU.res}

procedure TMainForm.FormCreate(Sender: TObject);
begin
  CurrencyString:='';  NegCurrFormat:=2;
  ThousandSeparator:='.';  DecimalSeparator:=',';
  CurrencyDecimals:=2;  DateSeparator:='.';
  ShortDateFormat:='dd.mm.yyyy';  TimeSeparator:=':';

  Screen.OnActiveFormChange := UpdateMenuItems;
end;

procedure TMainForm.UpdateMenuItems(Sender: TObject);
begin
  Cascade1.Enabled := MDIChildCount > 0;
  Tile1.Enabled := MDIChildCount > 0;
  TileVertical1.Enabled := MDIChildCount > 0;
  Arangeicons1.Enabled := MDIChildCount > 0;
  MinimizeAll1.Enabled := MDIChildCount > 0;

  Reindexbazapodataka1.enabled := not drugi;
  Kontrolabazapodataka1.enabled := not drugi;
  Arhiviranjepodataka1.enabled := not drugi;
end;


procedure TMainForm.FormDestroy(Sender: TObject);
begin
  Screen.OnActiveFormChange := nil;
  ZahtSQL.Free;
  ZahtPravo.Free;
  PravoDetail.Free;
end;

procedure TMainForm.testdatoteka;
Var i : integer;
begin
if MessageDlg('VAŽNA NAPOMENA !!!'+#13+
              'Kod ove opcije svi korisnici na mreži (ako ih ima) trebaju izaèi iz programa DOK.'+#13+#13+
       'Da li želite nastaviti ?', mtConfirmation, [mbYes,mbCancel], 0) = mrYes then
begin
 Try
  For i := 0 to MdiChildCount-1 do MdiChildren[i].Close;
  Application.CreateForm(TFMakeDBStatus,FMakeDBStatus);
  FMakeDBStatus.ShowModal;
 Finally
  Screen.Cursor := crDefault;
 end;
End;
end;

Function TMainForm.PorukaIzlaz:Boolean;
Var i : integer;
begin
  Result := False;
  if MessageDlg('VAŽNA NAPOMENA !!!'+#13+
                'Kod ove opcije svi korisnici na mreži (ako ih ima) trebaju izaèi iz programa DOK.'+#13+#13+
                'Izvršavanjem ove opcije izaæi æe te iz programa, a ako želite nastaviti raditi'+#13+
                'potrebno je da ponovo pokrenete program DOK.'+#13+#13+
       'Da li želite nastaviti ?', mtConfirmation, [mbYes,mbCancel], 0) = mrYes then begin
    For i := 0 to MdiChildCount-1 do MdiChildren[i].Close;
    Result := True;
  End;
End;

procedure TMainForm.KontrolaBaza;
begin
  if PorukaIzlaz then
  begin
    FileExecute(ExtractFilePath(Application.ExeName)+'Pdxrbld.exe',
    Format(' -R1 "/A%s" "/P%s"',[Podaci.Database1.Aliasname,chr(90)+chr(77)+chr(77)+chr(79)+chr(75)+chr(73)]), '', esNormal);
    Application.Terminate;
  End;
end;

function PristupOpciji(modul:String): Boolean;
begin
     with Podaci do
     begin
          tPravoNaModule.Filter:='SifraKorisnika='+IntToStr(SifraKorisnika)+' AND SifraModula='+modul;
          tPravoNaModule.Filtered:=True;
          tPravoNaModule.Active:=True;

          if tPravoNaModule.Locate('SifraModula', modul, []) then
          begin
               PravaNaModul:=tPravoNaModule.FieldByName('NivoPrava').AsInteger;
               if PravaNaModul=0 then Result:=False
               else Result:=True;
          end
          else Result:=False;
     end;
end;

procedure TMainForm.MENIClick(Sender: TObject);
Var tagg:Integer;
    broj, godina:String;
    Year,Month,Day:word;
begin
 UnosStyle:=FsMDIChild;
 tagg:=0;
 if Sender.ClassName = 'TMenuItem' then Tagg := (Sender as TMenuItem).Tag
 Else if Sender.ClassName = 'TToolButton' then Tagg := (Sender as TToolButton).Tag;

     Case Tagg of
        10,11,18,19,20,21:
        If PristupOpciji('10200') then
        Begin
            FZahtjevRatarstvo:=TFZahtjevRatarstvo(FindShowForm(TFZahtjevRatarstvo,'')); // Otvori
            FZahtjevRatarstvo.Cursor:=crSQLWait;
            FZahtjevRatarstvo.wwT.Filtered:=False;
            FZahtjevRatarstvo.tVrsta.Filtered:=False;

            if Tagg=10 then // za poljoprivredno bilje
            begin
                TipSorte:=1;
                FZahtjevRatarstvo.ToolButton1.Visible:=False;
                FZahtjevRatarstvo.wwT.Filter:='Tip_zahtjeva=1';
                FZahtjevRatarstvo.tVrsta.Filter:='Tip_vrste=1';
                FZahtjevRatarstvo.Panel2.Visible:=False; // sakrij povræe
                FZahtjevRatarstvo.Panel1.Visible:=True;  // pokaži poljoprivredu
                FZahtjevRatarstvo.Caption:='Unos zahtjeva za priznavanje sorti poljoprivrednog bilja';
            end else
            if Tagg=11 then // za povræe
            begin
                TipSorte:=2;
                FZahtjevRatarstvo.ToolButton1.Visible:=True;
                FZahtjevRatarstvo.wwT.Filter:='Tip_zahtjeva=2';
                FZahtjevRatarstvo.tVrsta.Filter:='Tip_vrste=2';
                FZahtjevRatarstvo.Panel2.Visible:=True;  // pokaži povræe
                FZahtjevRatarstvo.Panel1.Visible:=False; // sakrij poljoprivredu
                FZahtjevRatarstvo.Caption:='Unos zahtjeva za priznavanje sorti povræa';
            end else
            if Tagg=18 then // za ukrasno bilje
            begin
                TipSorte:=3;
                FZahtjevRatarstvo.ToolButton1.Visible:=False;
                FZahtjevRatarstvo.wwT.Filter:='Tip_zahtjeva=3';
                FZahtjevRatarstvo.tVrsta.Filter:='Tip_vrste=3';
                FZahtjevRatarstvo.Panel2.Visible:=False; // sakrij povræe
                FZahtjevRatarstvo.Panel1.Visible:=True;  // pokaži poljoprivredu
                FZahtjevRatarstvo.Caption:='Unos zahtjeva za ukrasno bilje';
            end else
            if Tagg=19 then // za voæne vrste
            begin
                TipSorte:=4;
                FZahtjevRatarstvo.ToolButton1.Visible:=False;
                FZahtjevRatarstvo.wwT.Filter:='Tip_zahtjeva=4';
                FZahtjevRatarstvo.tVrsta.Filter:='Tip_vrste=4';
                FZahtjevRatarstvo.Panel2.Visible:=False; // sakrij povræe
                FZahtjevRatarstvo.Panel1.Visible:=True;  // pokaži poljoprivredu
                FZahtjevRatarstvo.Caption:='Unos zahtjeva za voæne vrste';
            end else
            if Tagg=20 then // za vinovu lozu
            begin
                TipSorte:=5;
                FZahtjevRatarstvo.ToolButton1.Visible:=False;
                FZahtjevRatarstvo.wwT.Filter:='Tip_zahtjeva=5';
                FZahtjevRatarstvo.tVrsta.Filter:='Tip_vrste=5';
                FZahtjevRatarstvo.Panel2.Visible:=False; // sakrij povræe
                FZahtjevRatarstvo.Panel1.Visible:=True;  // pokaži poljoprivredu
                FZahtjevRatarstvo.Caption:='Unos zahtjeva za vinovu lozu';
            end else
            if Tagg=21 then // za šumsko bilje
            begin
                TipSorte:=6;
                FZahtjevRatarstvo.ToolButton1.Visible:=False;
                FZahtjevRatarstvo.wwT.Filter:='Tip_zahtjeva=6';
                FZahtjevRatarstvo.tVrsta.Filter:='Tip_vrste=6';
                FZahtjevRatarstvo.Panel2.Visible:=False; // sakrij povræe
                FZahtjevRatarstvo.Panel1.Visible:=True;  // pokaži poljoprivredu
                FZahtjevRatarstvo.Caption:='Unos zahtjeva za šumsko bilje';
            end else ShowMessage('Nešto nevalja!');

            FZahtjevRatarstvo.wwNavButton4Click(Sender);  // Refrešaj query
            FZahtjevRatarstvo.wwT.Filtered:=True;
            FZahtjevRatarstvo.tVrsta.Filtered:=True;
            FZahtjevRatarstvo.WindowState:=wsMaximized;
            FZahtjevRatarstvo.Cursor:=crDefault;
        end;

        12: Begin // Fakturiranje
                FFakture:=TFFakture.Create(self);
                FFakture.ShowModal;
            end;

        13: begin
              Application.CreateForm(TFPrijaveGRID,FPrijaveGRID);
              FPrijaveGRID.StartPregled('Pregled vrsta', 12);
            End;

        14: Begin // Ispis naloga
                DecodeDate(Date,Year,Month,Day);
                godina:=IntToStr(Year);
                if InputQuery('Upit','Upišite godinu naloga (kao 2005)',godina) then
                begin
                    if InputQuery('Upit', 'Upišite broj naloga', broj) then
                    begin
                        if (Sender as TMenuItem).tag=14 then IspisiNalog(broj, godina, True)
                        else IspisiNalog(broj, godina, False);
                    end;
                end;
            end;

        15: Begin   // Zahtjev za stjecanje oplemenjivaèkog prava
                if Otvorena('FZahtjevRatarstvo') then FZahtjevRatarstvo.Close;
                with FZahtjevPravo do
                begin
                    FZahtjevPravo:=TFZahtjevPravo(FindShowForm(TFZahtjevPravo,''));
                    //WindowState:=wsMaximized;
                    PageControl1.ActivePage:=TabSheet1;
                    //TipSorte:=17; // za Pravo
                    btObnoviClick(Sender);  // Refrešaj query
                    Caption:='Unos zahtjeva za stjecanje oplemenjivaèkog prava';
                end;
            end;

        16: Begin   // Upisnici
                if Otvorena('FZahtjevPravo') then FZahtjevPravo.Close;
                with FUpisnik do
                begin
                    FUpisnik:=TFUpisnik(FindShowForm(TFUpisnik,''));
                    PageControl1.ActivePage:=TabSheet1;
                    btObnoviClick(Sender);  // Refrešaj query
                end;
            end;

        17: FUnosLicencija:=TFUnosLicencija(FindShowForm(TFUnosLicencija,''));  // Licencije

        50: FUnosPartneri:= TFUnosPartneri(FindShowForm(TFUnosPartneri,''));
        56: FUnosKontakta:= TFUnosKontakta(FindShowForm(TFUnosKontakta,''));
        57: FUnosOdjela:= TFUnosOdjela(FindShowForm(TFUnosOdjela,''));

        51: FUnosSorte:= TFUnosSorte(FindShowForm(TFUnosSorte,''));
        52: FUnosVrste:= TFUnosVrste(FindShowForm(TFUnosVrste,''));
        49: FUnosKlasa:= TFUnosKlasa(FindShowForm(TFUnosKlasa,''));
        53: FUnosVCU:= TFUnosVCU(FindShowForm(TFUnosVCU,''));
        54: FUnosDUS:= TFUnosDUS(FindShowForm(TFUnosDUS,''));
        55: UnosNamjena:= TUnosNamjena(FindShowForm(TUnosNamjena,''));
        58: FUnosDrzava:= TFUnosDrzava(FindShowForm(TFUnosDrzava,''));

       100: testdatoteka;
       101: KontrolaBaza;
       102: Close;
       131: KopijaBaza(131,True);
       132: KopijaBaza(132,True);
       144: Podaci.ProvDB(true);
       110: ShowDialog(TFPostavkeDlg);

       178: begin
              Application.CreateForm(TFPrijaveGRID,FPrijaveGRID);
              FPrijaveGRID.StartPregled('Evidencija podataka',18);
            End;

       179: begin
              Application.CreateForm(TFNacinObradeDlg,FNacinObradeDlg);
              FNacinObradeDlg.ShowModal;

              vObradaJM := FNacinObradeDlg.RadioGroup1.ItemIndex;
              JedMjObrada;

              vObradaSjeme2 := FNacinObradeDlg.RadioGroup1.ItemIndex;
              vpoljeObrade  := FNacinObradeDlg.RadioGroup2.ItemIndex;

              FNacinObradeDlg.Free;
              Application.CreateForm(TFPrijaveGRID,FPrijaveGRID);
              FPrijaveGRID.StartPregled('Analiza po kolièinama',15);
            End;

       180: begin
              Application.CreateForm(TFNacinObradeDlg,FNacinObradeDlg);
              Application.CreateForm(TFPrijaveGRID,FPrijaveGRID);

              FPrijaveGRID.StartPregled('Analiza po kolièinama',16);
            End;

       181: begin
              Application.CreateForm(TFPrijaveGRID, FPrijaveGRID);
              FPrijaveGRID.StartPregled('Pregled partnera', 1);
            End;

       182: begin
              Application.CreateForm(TFPrijaveGRID, FPrijaveGRID);
              FPrijaveGRID.StartPregled('Pregled kontakta partnera', 2);
            End;

       183: begin
              Application.CreateForm(TFPrijaveGRID, FPrijaveGRID);
              FPrijaveGRID.StartPregled('Pregled kontakta partnera', 3);
            End;

       185: begin
              Application.CreateForm(TFPrijaveGRID, FPrijaveGRID);
              FPrijaveGRID.StartPregled('Pregled sorti', 10);
            End;

       186: begin
              Application.CreateForm(TFPrijaveGRID,FPrijaveGRID);
              FPrijaveGRID.StartPregled('Pregled vrsta', 11);
            End;

     10151: // unos novih korisnika
            FUnosKorisnika:= TFUnosKorisnika(FindShowForm(TFUnosKorisnika,''));

     10152: // Prava na module
            FPravoNaModule:=TFPravoNaModule(FindShowForm(TFPravoNaModule,''));

     10153: // Prava na vrste
            FPravoNaVrste:=TFPravoNaVrste(FindShowForm(TFPravoNaVrste,''));

     End;
end;

procedure TMainForm.JedMjObrada;
begin
  case vObradaJM of
            0: Jmo := 'kg';
            1: Jmo := 'zrna';
            2: Jmo := 'kom';
            3: Jmo := 'g';
  End;
end;

procedure TMainForm.ZipMaster1Message(Sender: TObject; ErrCode: Integer; Message: String);
begin
   MsgForm.RichEdit1.Lines.Append( Message );
   PostMessage( MsgForm.RichEdit1.Handle, EM_SCROLLCARET, 0, 0 );
   Application.ProcessMessages;
   if ErrCode > 0 then ShowMessage( 'Poruka o grešci: ' + Message );
end;

procedure TMainForm.ZipMaster1Progress(Sender: TObject; ProgrType: ProgressType; Filename: String; FileSize: Integer);
begin
   case ProgrType of
      TotalFiles2Process: ZipMaster1Message( self, 0, 'Ukupno datoteka za arhiviranje = ' + IntToStr( FileSize ) );
      EndOfBatch: ZipMaster1Message( self, 0, '***Kraj posla***' );
   end;
end;

procedure TMainForm.KopijaBaza(koja:Integer;Pitaj:Boolean);
Var KudaIdu,Fajl:String;
    i:integer;
begin
  For i := 0 to MdiChildCount-1 do MdiChildren[i].Close;
  if pitaj then if not Confirm('Da li stvarno želite napraviti rezervnu kopiju podataka ?') then exit;
  if koja = 131 then KudaIdu := PutHDD
  Else KudaIdu := PutDisketa;
  Podaci.Database1.CloseDatasets;
  ZipMaster1.Load_Zip_Dll;
  ZipMaster1.Load_Unz_Dll;
  Application.CreateForm(TMsgform,Msgform);
  try
    fajl := kudaidu+'KopijaBaza'+RadnaGodina;

    if not DirectoryExists(ExtractFilePath(Application.ExeName)+'TMP') then ForceDirectories(ExtractFilePath(Application.ExeName)+'TMP');
    if koja = 131 then begin
      if not DirectoryExists(KudaIdu) then ForceDirectories(KudaIdu);
      if FileExists(fajl+'.bak') then
        if not Deletefile(fajl+'.bak') then begin messagedlg('Greška u brisanju .bak datoteke !!!',mtInformation,[mbOk],0); Exit; End;
      if FileExists(fajl+'.Zip') then
       if not RenameFile(fajl+'.Zip',fajl+'.bak') then messagedlg('Greška u preimenovanju datoteke !!!',mtInformation,[mbOk],0);
    End;

    MsgForm.RichEdit1.Clear;
    MsgForm.Show;
    with ZipMaster1 do
    begin
      AddOptions := [];
      if koja = 132 then AddOptions := [AddDiskSpanErase];

      TempDir := ExtractFilePath(Application.ExeName)+'TMP';
      ZipFilename := Fajl+'.zip';
      ZipMaster1Message( self, 0, 'DATOTEKA: ' + ZipFilename );

      FSpecArgs.Clear;
      FSpecArgs.add(GetAliasPath(Podaci.Database1.Aliasname)+'\*.DB');
      FSpecArgs.add(GetAliasPath(Podaci.Database1.Aliasname)+'\*.MB');
      try
         Add;
      except
         ShowMessage( 'Greška u dodavanju; Fatal DLL Exception u Osnovnom' );
         Exit;
      end;
      ShowMessage( IntToStr( SuccessCnt ) + ' datoteka arhivirano.' );
   end;
  finally
    ZipMaster1.Unload_Zip_Dll;
    ZipMaster1.Unload_Unz_Dll;
    Podaci.Database1.Open;
    Podaci.OtvoriBazeMaster;
    Podaci.TabSetUp.Edit;
    Podaci.TabSetUp.FieldByName('ZadnjiputSnimano').Value := Date;
    Podaci.TabSetUp.Post;
    MsgForm.Release;
  End;
End;


procedure TMainForm.Tile1Click(Sender: TObject);
begin
  TileMode := tbHorizontal; Tile;
end;
procedure TMainForm.TileVertical1Click(Sender: TObject);
begin
  TileMode := tbVertical; Tile;
end;

procedure TMainForm.Arangeicons1Click(Sender: TObject);
begin
  ArrangeIcons;
end;

procedure TMainForm.MinimizeAll1Click(Sender: TObject);
var
  I: Integer;
begin
  for I := MDIChildCount - 1 downto 0 do MDIChildren[I].WindowState := wsMinimized;
end;

Function TMainForm.Otvorena(naziv:string):Boolean;
Var i:integer;
begin
  Result := true;
  For i := 0 to MdiChildCount-1 do
    if MdiChildren[i].name = naziv then exit;
  Result := False;
End;

procedure TMainForm.Cascade1Click(Sender: TObject);
begin
  Cascade;
end;

procedure TMainForm.LMDGlobalHotKey1KeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
    //ShowDialog(TFPozivSifDlg);
end;

procedure TMainForm.IspisiNalog(broj,godina:String;design:Boolean);
var datoteka,p: string;
    a: integer;
begin
  datoteka:='Nalog.frf';
  if not FileExists(PathFRF + datoteka) then
  begin
    MessageDlg('Ne postoji datoteka naloga -> '+datoteka, mtWarning, [mbOK], 0);
    exit;
  End
  Else Podaci.frReport1.LoadFromFile(PathFRF + datoteka);

  qTemp.ParamByName('nalog').Value:=StrToInt(broj);
  qTemp.ParamByName('godina').Value:=godina;
  qTemp.Prepare;
  qTemp.Open;
  if qTemp.IsEmpty then ShowMessage('Nalog '+broj+'/'+godina+' ne postoji!')
  else  // ako nije onda popuni varijable iz FReporta
  begin
    p:=tTemplookMjesto.AsString;
    a:=Podaci.frReport1.Dictionary.Variables.IndexOf('mjesto');
    Podaci.frReport1.Dictionary.Variables.Value[a]:=chr(39)+p+chr(39);
    p:=tTemplookNazivPartnera.AsString;
    a:=Podaci.frReport1.Dictionary.Variables.IndexOf('naziv');
    Podaci.frReport1.Dictionary.Variables.Value[a]:=chr(39)+p+chr(39);
    p:=tTemplookAdresa.AsString;
    a:=Podaci.frReport1.Dictionary.Variables.IndexOf('adresa');
    Podaci.frReport1.Dictionary.Variables.Value[a]:=chr(39)+p+chr(39);
    p:=tTempgodina_naloga.AsString;
    a:=Podaci.frReport1.Dictionary.Variables.IndexOf('godina');
    Podaci.frReport1.Dictionary.Variables.Value[a]:=chr(39)+p+chr(39);
    p:=tTempdatum_izdavanja.AsString;
    a:=Podaci.frReport1.Dictionary.Variables.IndexOf('datum');
    Podaci.frReport1.Dictionary.Variables.Value[a]:=chr(39)+p+chr(39);
    p:=tTempbroj_naloga.AsString;
    a:=Podaci.frReport1.Dictionary.Variables.IndexOf('broj');
    Podaci.frReport1.Dictionary.Variables.Value[a]:=chr(39)+p+chr(39);
    p:=tTempnapomena.AsString;
    a:=Podaci.frReport1.Dictionary.Variables.IndexOf('napomena');
    Podaci.frReport1.Dictionary.Variables.Value[a]:=chr(39)+p+chr(39);

    if design then Podaci.frReport1.DesignReport else Podaci.frReport1.ShowReport;
  end;
  qTemp.Close;
end;

procedure TMainForm.qTempAfterOpen(DataSet: TDataSet);
    function DajOpis(vrsta,nalog,avans:Integer;cijena:Double;plac:String;
        Izvjesce:Boolean):String;
    begin
        Result:='';
        with qOpis do
        begin
            SQL.Clear;
            if Izvjesce then SQL.Add(' SELECT b.oznaka_sorte || '', '' opis')
            else SQL.Add(' SELECT b.oznaka_sorte || '' ('' || SUBSTRING(s.sifra_placanja FROM 2) || ''), '' opis');
            SQL.Add(
                ' FROM stavke_naloga s, priznanje_PB b'+
                ' WHERE b.sifra_zahtjeva=s.sifra_zahtjeva'+
                ' AND s.sifra_naloga='+IntToStr(nalog)+
                ' AND b.sifra_vrste='+IntToStr(vrsta)+
                ' AND s.cijena_stavke='+CurrToStr(cijena)+
                ' AND s.avans='+IntToStr(avans)+
                ' AND SUBSTRING(s.sifra_placanja FROM 1 FOR 1)='''+plac+'''');
            if Izvjesce then
                SQL.Add('AND CAST(SUBSTRING(s.sifra_placanja FROM 2) AS INTEGER)=0')
            else SQL.Add('AND CAST(SUBSTRING(s.sifra_placanja FROM 2) AS INTEGER)>0');
            Open;
            while not Eof do
            begin
                Result:=Result+FieldByName('opis').AsString;
                Next;
            end;
            Close;
        end;
    end;

    function DajKom(str:string):Integer;
    begin
        Result:=0;
        while Pos(',',str)>0 do
        begin
            str[Pos(',',str)]:='_';
            Result:=Result+1;
        end;
    end;

var i: boolean;
    s,r,dod: string;
begin
    FFakture.KopirajUMemo(DataSet, tTemp);
    with tTemp do
    begin
        DisableControls;
        First;
        while not Eof do
        begin
            Edit;
            if FieldByName('sifra_placanja').AsString='DI' then i:=True else i:=False;
            s:=FieldByName('sifra_placanja').AsString;
            SetLength(s,1);
            r:=DajOpis(FieldByName('sifra_vrste').AsInteger,
                FieldByName('sifra_naloga').AsInteger,
                FieldByName('avans').AsInteger,
                FieldByName('cijena_stavke').AsFloat, s, i);
            FieldByName('kom').AsInteger:=DajKom(r);

            r:=Copy(r,0,Length(r)-2);
            if i then dod:='Troškovi DUS izvješæa - '
            else
            begin
                if s='V' then dod:='Troškovi priznavanja (VCU) - '
                else dod:='Troškovi priznavanja (DUS) - ';
            end;
            if FieldByName('avans').AsInteger=50 then dod:=dod+'predujam za kultivare '
            else dod:=dod+'100% za kultivare ';
            FieldByName('opis').AsString:=
                dod+TrimRight(FieldByName('lookVrstaHR').AsString)+': '+r+'.';
            Post;
            Next;
        end;
        EnableControls;
    end;
end;

procedure TMainForm.tTempCalcFields(DataSet: TDataSet);
begin
    tTempiznos.Value:=tTempcijena_stavke.Value*tTempkom.Value*tTempavans.Value/100;
end;

End.
