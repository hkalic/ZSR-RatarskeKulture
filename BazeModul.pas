unit BazeModul;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DB, DbiTypes, DBTables, Math, servisi, ExtCtrls, ImgList, Menus,
  Placemnt, DbPrgrss, AppEvent,RXShell, Wwintl, FR_Shape, FR_Desgn,
  FR_Class, FRD_Mngr, FR_DCtrl, FR_RRect, Wwtable, Wwdatsrc, lmdcompo,
  lmdclass, lmdnwgui, Registry;

type
  TPodaci = class(TDataModule)
    Croatian: TwwIntl;
    Database1: TDatabase;
    TabSetUp: TTable;
    TabSetUpNaziv1: TStringField;
    TabSetUpNaziv2: TStringField;
    TabSetUpAdresa1: TStringField;
    TabSetUpAdresa2: TStringField;
    TabSetUpTelefon: TStringField;
    TabSetUpPathHDD: TStringField;
    TabSetUpPathFloppy: TStringField;
    TabSetUpINIpath: TStringField;
    TabSetUpReportpath: TStringField;
    TabSetUpZadnjiputSnimano: TDateTimeField;
    TabSetUpPathUvjerenja: TStringField;
    TabSetUpPDV: TSmallintField;
    TabSetUpRjesenje1: TStringField;
    TabSetUpRjesenje2: TStringField;
    TabSetUpRjesenje3: TStringField;
    TabSetUpRjesenje4: TStringField;
    TabSetUpRjesenje5: TStringField;
    TabSetUpNN1: TStringField;
    TabSetUpNN2: TStringField;
    TabSetUpNN3: TStringField;
    TabSetUpNN4: TStringField;
    TabSetUpNN5: TStringField;
    tPravoNaModule: TTable;
    tPravoNaVrste: TTable;
    tModuli: TTable;
    tNivoPrava: TTable;
    frReport1: TfrReport;
    procedure PodaciCreate(Sender: TObject);
  private
    varAdresaCl:String;
    StanjeSalda :Currency;
    procedure PopRaviBaze;
    procedure AutoUpgradeEXE(UpgradePATH:String);
    procedure AutoUpgradeDB;
    function  TrebaLiUpdateDB: Boolean;

  public
    NazivPrograma:String;
    SrchFld: TField;

    Procedure Otvoriindex(s:string);
    procedure OtvoriBazeMaster;
    function  PopuniNule(X:String;Koliko:Integer): String;
    Function  DodajredniBroj:Integer;

    Procedure ProvDB(upit:Boolean);// Provjeri strukture baza sa DBS datotekom tj. obriši u registry KEY i izaði iz programa
  end;

  function Confirm(Msg: string): Boolean;

  Procedure Odabir(F:TformClass;Field:Tfield);

  Procedure OtvoriJu(baza,FilterJe,IndexJe:String);

  procedure ChkBool(Value: Boolean; const Msg: String);
  function  ExecWait(const Cmd: String): Integer;
  procedure PozivKontrole;
  function  IsInteger(const s: string): boolean;

const
  {Declare constants we're interested in}
  DigitChars = ['0'..'9'];
//  AlphaChars = ['A'..'Z','a'..'z'];
  AlphaChars = ['A'..'Z'];
  eKeyViol = 9729;
  eRequiredFieldMissing = 9732;
  eForeignKey = 9733;
  eDetailsExist = 9734;
  cInsert = 3;
  cEdit = 4;
  cDelete = 5;
  cOpen = 6;
  daaa  = 23834;    //True
  neee  = 31431;    //False
  cNeovlasteno = 'Pokušaj neovlaštenog pristupa !'+#13+#13+
                 'Niste ovlašteni da pristupite ovoj opciji.';

var
  Podaci: TPodaci;
  SifraKorisnika, PravaNaModul: Integer;
  drugi: Boolean;
  rad: Boolean;          //radnaverzija
  Zoran: String;
  izPopravka: Boolean;
  //ListaStatusa:TstringList;
  PutHDD, PutDisketa:String;
  PutanjaPrograma, RadnaGodina:String;
  Rje1, Rje2, Rje3, Rje4, Rje5:String;
  NN1, NN2, NN3, NN4, NN5:String;

  vObradaSjeme:Boolean;
  vObradaSjeme2:Integer;
  vObradaJM:Integer;
  vpoljeObrade:Integer;
  PathFRF, PathBIN, PathUvjerenja:string;
  Osoba,Godina:String;
  jmo:String;
  KojaOTPR:Integer;


implementation

uses Main, StrUtils, PBZConsts, UnosTemplate, DateUtil, MakeDBStatus,
     fileutil, RekDlg, Lozinka;

{$R *.DFM}

function Confirm(Msg: string): Boolean;
begin
  Result := MessageDlg(Msg, mtConfirmation, [mbYes, mbNo], 0) = mrYes;
end;

Procedure  Odabir(F:TformClass;Field:Tfield);
  var Dlg: TForm;
begin
  UnosStyle:=FsNormal;
  Application.CreateForm(F, Dlg);
  With DLG As TfUnosTemplate do
   try
   //Sifra:=Field.Value;
   Visible:=False;
   ShowModal;
   //IF ShowModal in [mrOk, mrYes] Then
   //Field.Value:=Sifra;
  finally
    Dlg.Free;
  end;
 end;

function TPodaci.PopuniNule(X:String;Koliko:Integer): String;
Var i:Integer;
Begin
  Result := '';
  if Length(X) = Koliko then Result := X
  Else Begin
    for i := 1 to (Koliko-Length(X)) do Result := result + '0';
    Result := Result + x;
  End;
End;

Procedure TPodaci.Otvoriindex(s:string);
begin                (* *)
end;

Procedure OtvoriJu(baza,FilterJe,IndexJe:String);
Begin
End;

{The following code fragment will execute any program, DOS
or 32-bit, and wait until the called program has finished
running.
----------------------------------------------------------- }
procedure ChkBool(Value: Boolean; const Msg: String);
begin
  If (Value = false) then raise exception.create(Msg);
end;

{ Source: Dmitriy Anisimkov <ts@quadrat.omsk.su> }
function ExecWait(const Cmd: String): Integer;
var
  ProcessInfo: TProcessInformation;
  hProcess: THandle;
  ReturnCode: Integer;
  StartupInfo: TStartupInfo;
begin
  FillChar(StartupInfo, SizeOf(StartupInfo), 0);
  ChkBool(CreateProcess(nil, PChar(Cmd), nil, nil, False,
          CREATE_DEFAULT_ERROR_MODE + NORMAL_PRIORITY_CLASS,
          NIL, NIL, StartupInfo, ProcessInfo),
          'Error during CreateProcess');
  hProcess := ProcessInfo.hProcess; // save the process handle
  //Close the thread handle as soon as it is no longer needed
  CloseHandle(ProcessInfo.hThread);
  ReturnCode := WaitForSingleObject(hProcess, INFINITE);
  ChkBool(dword(ReturnCode) <> WAIT_FAILED, 'Error in WaitForSingleObject');
  // The process terminated
  ChkBool(GetExitCodeProcess(hProcess, dword(Result)), 'Error in GetExitCodeProcess');
  // Close the process handle as soon as it is no longer needed
  ChkBool(CloseHandle(hProcess), 'Error in process Close Handle');
end;

procedure TPodaci.OtvoriBazeMaster;
Begin
 // otvori baze koje ti trebaju
    Database1.Open;
    TabSetUp.Open;
End;

procedure TPodaci.PopRaviBaze;
begin
  izPopravka := True;
  Try
      Application.CreateForm(TFMakeDBStatus,FMakeDBStatus);
      FMakeDBStatus.ShowModal;
  Finally
    Screen.Cursor := crDefault;
  end;
End;

procedure PozivKontrole;
Begin
  ExecWait(Format('%s -R1 "/A%s" "/P%s"',[ExtractFilePath(Application.ExeName)+'Pdxrbld.exe',
  Podaci.Database1.Aliasname,chr(90)+chr(77)+chr(77)+chr(79)+chr(75)+chr(73)]))// < 0  // errors have been detected ..
End;

procedure TPodaci.PodaciCreate(Sender: TObject);
Var i:Integer;
    daKontr:Boolean;
    a:String;
begin
 Application.CreateForm(TpasswordDlg,PasswordDlg);
 If PasswordDlg.Showmodal <> MrOk then Application.Terminate;
 PasswordDlg.Release;

 frLocale.LoadDll('FR_Eng.dll');       // load english resources

 drugi:= false;
 for I := 1 to ParamCount do if ParamStr(i) = 'DRUGI' then drugi := True;

 a:='';
 a:= ParamStr(1);
 RadnaGodina := a;
 try
   i := strtoint(a);
 except
   on E: Exception do
   begin
      MessageDlg('Program je potrebno pozvati sa parametrom radne godine!  (npr. 2000)'+#13+#13+
                 'Takoðer je potrebno da postoji direktoriji  BAZE+radna godina (u kojem se nalaze baze).',mtWarning,[mbOK],0);
      Application.Terminate;
   End;
 end;

 // or (not FileExists(ExtractFilePath(ParamStr(0))+'BAZE'+a+'\setup.db'))
 if not drugi then
  if (a = '') or (i<2000) or (not FileExists(ExtractFilePath(ParamStr(0))+'BAZE'+a+'\setup.db')) then
  begin
     MessageDlg('Program je potrebno pozvati sa parametrom radne godine!  (npr. 2000)'+#13+#13+
                'Takoðer je potrebno da postoji direktoriji  BAZE+radna godina (u kojem se nalaze baze).',mtWarning,[mbOK],0);
     Application.Terminate;
  end;

 PutanjaPrograma := ExtractFilePath(Application.ExeName);
 Croatian.IniFileName := PutanjaPrograma+'Voc_v1.ini';
 Zoran := chr(90)+chr(77)+chr(77)+chr(79)+chr(75)+chr(73);

 Podaci.Database1.Close;

 if drugi then
 begin
   if not session.IsAlias('Rat_Kult'+a) then
   begin
     MessageDlg('U BDE potrebno je kreirati ALIAS npr. Rat_Kult'+a+'   PATH  \\server\baze'+a,mtWarning,[mbOK],0);
     Application.Terminate;
   End
 end
 else if not session.IsAlias('Rat_Kult'+a) then
      begin
        session.ConfigMode := cmAll;
        session.AddStandardAlias('Rat_Kult'+a, ExtractFilePath(ParamStr(0))+'BAZE'+a, 'PARADOX');
        session.SaveConfigFile;
      End;
 session.addpassword(ZORAN);

 Podaci.Database1.AliasName := 'Rat_Kult'+a;
 //_______________________________Sredit
// AutoUpgradeEXE('');

 //----------------------
 if not drugi and FileExists(ExtractFilePath(Application.ExeName)+'bazeDEf.txt')
 and not Application.Terminated then AutoUpgradeDB;
 //----------------------

 Podaci.Database1.Open;

 MainForm.Caption:= 'ZSR '+a+'   ';

 for I := 1 to ParamCount do if ParamStr(i) = 'PRIVATEDIR' then
    Session.PrivateDir := ExtractFilePath(ParamStr(0))+'TMP\';

 if ParamStr(2) = ZORAN then Rad := True
 Else Rad := False;

 for I := 1 to ParamCount do if ParamStr(i) = 'KONTROLA' then dakontr := True;
 //0 = glavni

 OtvoriBazeMaster;
 izPopravka := False;

 PutHDD      := TabSetUpPathHDD.AsString;
 PutDisketa  := TabSetUpPathFloppy.AsString;
 PathBIN     := TabSetUpINIpath.AsString;
 PathFRF     := TabSetUpReportpath.AsString;

 ZahtSQL:=TStringList.Create;         // uèitavanje query fajlova
 if FileExists(PathBIN+'ZahtPriznanje.sql') then
    ZahtSQL.LoadFromFile(PathBIN+'ZahtPriznanje.sql')
 else
 begin
    ShowMessage('Nedostaje datoteka '+PathBIN+'ZahtPriznanje.sql');
    Application.Terminate;
 end;
 ZahtPravo:=TStringList.Create;
 if FileExists(PathBIN+'ZahtPravo.sql') then
    ZahtPravo.LoadFromFile(PathBIN+'ZahtPravo.sql')
 else
 begin
    ShowMessage('Nedostaje datoteka '+PathBIN+'ZahtPravo.sql');
    Application.Terminate;
 end;
 PravoDetail:=TStringList.Create;
 if FileExists(PathBIN+'PravoDetail.sql') then
    PravoDetail.LoadFromFile(PathBIN+'PravoDetail.sql')
 else
 begin
    ShowMessage('Nedostaje datoteka '+PathBIN+'PravoDetail.sql');
    Application.Terminate;
 end;

 Rje1:=TabSetUpRjesenje1.AsString;
 Rje2:=TabSetUpRjesenje2.AsString;
 Rje3:=TabSetUpRjesenje3.AsString;
 Rje4:=TabSetUpRjesenje4.AsString;
 Rje5:=TabSetUpRjesenje5.AsString;
 NN1:=TabSetUpNN1.AsString;
 NN2:=TabSetUpNN2.AsString;
 NN3:=TabSetUpNN3.AsString;
 NN4:=TabSetUpNN4.AsString;
 NN5:=TabSetUpNN5.AsString;

     // postavi prava na MenuIteme
     // sve je po defaultu zabranjeno osim Menu - Prozori
     with tPravoNaModule do
     begin
          Filter:='SifraKorisnika='+IntToStr(SifraKorisnika);
          Filtered:=True;
          Active:=True;

          for i:=0 to MainForm.ComponentCount -1 do
          begin
               if MainForm.Components[i].ClassName='TMenuItem' then
                    if Locate('SifraModula', MainForm.Components[i].Tag, []) then
                         if FieldByName('NivoPrava').AsInteger<>0 then
                              (MainForm.Components[i] as TMenuItem).Enabled:=True;
          end;
     end;
end;

Function SveBrojevi(Txt:String):Boolean;
Begin
   result := (txt[1] in DigitChars) and (txt[length(txt)] in DigitChars);
End;

function IsInteger(const s: string): boolean;
var
 E: Integer;
 NotUsed: integer;
begin
  Val(S, NotUsed, E);
  result := E = 0;
end;

Function TPodaci.DodajredniBroj:Integer;
Begin
  TabSetUp.edit;
  TabSetUp.fieldByName('RedniBroj').value := Podaci.TabSetUp.fieldByName('RedniBroj').value +1;
  TabSetUp.Post;
  result := TabSetUp.fieldByName('RedniBroj').asInteger;
End;
//---------------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------  SISTEMSKI DODACI
//---------------------------------------------------------------------------------------------------------
procedure TPodaci.AutoUpgradeEXE(UpgradePATH:String);
begin
end;
// *** end AutoUpgradeEXE ********************************************

procedure TPodaci.AutoUpgradeDB;
begin
end;  // *** end AutoUpgradeDB ********************************************

function TPodaci.TrebaLiUpdateDB: Boolean;
begin
  Result := False;
end; // *** end TrebaLiUpdateDB ********************************************

Procedure TPodaci.ProvDB(upit:Boolean);// Provjeri strukture baza sa DBS datotekom tj. obriši u registry KEY i izaði iz programa
begin
End;
end.

