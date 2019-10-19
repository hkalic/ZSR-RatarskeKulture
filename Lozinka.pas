unit Lozinka;

interface

uses WinTypes, WinProcs, Classes, Graphics, Forms, Dialogs, Controls, StdCtrls,
  Buttons, Mask, ExtCtrls, jpeg, Db, DBTables;

type
  TPasswordDlg = class(TForm)
    Label1: TLabel;
    EdLozinka: TEdit;
    OKBtn: TBitBtn;
    CancelBtn: TBitBtn;
    Label3: TLabel;
    Image1: TImage;
    Korisnici: TTable;
    Label2: TLabel;
    EdName: TEdit;
    KorisniciSifra: TAutoIncField;
    KorisniciLoginName: TStringField;
    KorisniciLozinka: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Kpress(Sender: TObject; var Key: Char);
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    BrojPokusaja:integer;
  public
    { Public declarations }
  end;

var
  PasswordDlg: TPasswordDlg;

implementation

uses BazeModul, SysUtils;

{$R *.DFM}

procedure TPasswordDlg.FormCreate(Sender: TObject);
begin
     BrojPokusaja:=1;
end;

procedure TPasswordDlg.Kpress(Sender: TObject; var Key: Char);
begin
 if key =#13 then
  begin
     selectnext(sender as twincontrol,true,true);key:=#0;
  end;
end;

procedure TPasswordDlg.OKBtnClick(Sender: TObject);
begin
     SifraKorisnika:=0;
     Korisnici.Active:=True;
     if Korisnici.Locate('LoginName',EdName.Text,[]) then
     begin
          if KorisniciLozinka.Value=EdLozinka.Text then
          begin
               ModalResult:=MrOk;
               SifraKorisnika:=KorisniciSifra.AsInteger;
          end
          else
          begin
               ShowMessage('Krivo korisnièko ime ili lozinka.');
               BrojPokusaja:=BrojPokusaja+1;
               if BrojPokusaja>3 then CancelBtnClick(Sender)
               else
               begin
                    EdLozinka.Text:='';
                    EdName.SetFocus;
               end;
          end
     end
     else
     begin
          ShowMessage('Krivo korisnièko ime ili lozinka.');
          BrojPokusaja:=BrojPokusaja+1;
          if BrojPokusaja>3 then CancelBtnClick(Sender)
          else
          begin
               EdLozinka.Text:='';
               EdName.SetFocus;
          end;
     end;
end;

procedure TPasswordDlg.CancelBtnClick(Sender: TObject);
begin
     ModalResult:=MrCancel;
end;

procedure TPasswordDlg.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key =#27 then CancelBtnClick(Sender);
end;
end.

