unit UnosKorisnika;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UnosTemplate, Db, DBTables, RxQuery, StdCtrls, Buttons, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, ExtCtrls, ComCtrls, DBCtrls, ToolWin, Mask;

type
  TFUnosKorisnika = class(TFUnosTemplate)
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    tKorisnici: TTable;
    tKorisniciSifra: TAutoIncField;
    tKorisniciImePrezime: TStringField;
    tKorisniciLoginName: TStringField;
    tKorisniciLozinka: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUnosKorisnika: TFUnosKorisnika;

implementation

{$R *.DFM}

end.
