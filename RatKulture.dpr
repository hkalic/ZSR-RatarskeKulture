program RatKulture;

uses
  Forms,
  BazeModul in 'BazeModul.pas' {Podaci: TDataModule},
  Lozinka in 'Lozinka.pas' {PasswordDlg},
  Main in 'Main.pas' {MainForm},
  PostavkeDlg in 'PostavkeDlg.pas' {FPostavkeDlg},
  PojamUnit in 'PojamUnit.pas' {PojamForm},
  ZahtjevRatarstvo in 'ZahtjevRatarstvo.pas' {FZahtjevRatarstvo},
  PozivSifDlg in 'PozivSifDlg.pas' {FPozivSifDlg},
  OdabirUnit in 'OdabirUnit.pas' {Odabir},
  Makedb in 'MakeDB.pas',
  FaktureUnit in 'FaktureUnit.pas' {FFakture},
  PrijaveGRID in 'PrijaveGRID.pas' {FPrijaveGRID},
  OdabirPrikazaDlg in 'OdabirPrikazaDlg.pas' {FOdabirPrikazaDlg},
  ZahtjevPravo in 'ZahtjevPravo.pas' {FZahtjevPravo},
  Upisnik in 'Upisnik.pas' {FUpisnik},
  UnosTemplate in 'UnosTemplate.pas' {FUnosTemplate},
  UnisNamjena in 'UnisNamjena.pas' {UnosNamjena},
  UnosKontakta in 'UnosKontakta.pas' {FUnosKontakta},
  UnosVrste in 'UnosVrste.pas' {FUnosVrste},
  UnosVCU in 'UnosVCU.pas' {FUnosVCU},
  UnosDUS in 'UnosDUS.pas' {FUnosDUS},
  UnosSorte in 'UnosSorte.pas' {FUnosSorte},
  UnosPartneri in 'UnosPartneri.pas' {FUnosPartneri},
  UnosLicencija in 'UnosLicencija.pas' {FUnosLicencija},
  UnosKlase in 'UnosKlase.pas' {FUnosKlasa},
  UnosOdjela in 'UnosOdjela.pas' {FUnosOdjela},
  UnosKorisnika in 'UnosKorisnika.pas' {FUnosKorisnika},
  PravoZaModule in 'PravoZaModule.pas' {FPravoNaModule},
  PravoZaVrste in 'PravoZaVrste.pas' {FPravoNaVrste},
  UnosDrzava in 'UnosDrzava.pas' {FUnosDrzava};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'ZSR - Ratarske kulture';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TFPostavkeDlg, FPostavkeDlg);
  Application.CreateForm(TPodaci, Podaci);
  Application.CreateForm(TPojamForm, PojamForm);
  Application.CreateForm(TFPozivSifDlg, FPozivSifDlg);
  Application.CreateForm(TOdabir, Odabir);
  Application.CreateForm(TFPravoNaVrste, FPravoNaVrste);
  Application.Run;
end.
