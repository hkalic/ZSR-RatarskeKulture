unit UnosDrzava;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UnosTemplate, FR_PTabl, Db, DBTables, RxQuery, StdCtrls, Buttons,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, ExtCtrls, ComCtrls, DBCtrls, ToolWin,
  Mask;

type
  TFUnosDrzava = class(TFUnosTemplate)
    tDrzava: TTable;
    tDrzavaSifra: TAutoIncField;
    tDrzavaNaziv_Drzave: TStringField;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUnosDrzava: TFUnosDrzava;

implementation

{$R *.DFM}

end.
