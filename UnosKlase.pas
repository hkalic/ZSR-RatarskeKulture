unit UnosKlase;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UnosTemplate, DBTables, Db, RxQuery, StdCtrls, Buttons, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, ExtCtrls, ComCtrls, DBCtrls, ToolWin, Mask;

type
  TFUnosKlasa = class(TFUnosTemplate)
    tKlase: TTable;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    tKlaseSifra: TAutoIncField;
    tKlaseNazivKlase: TStringField;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    tKlaseDatum_Promjene: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUnosKlasa: TFUnosKlasa;

implementation

{$R *.DFM}

end.
