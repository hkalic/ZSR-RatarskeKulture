unit UnosDUS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UnosTemplate, Db, DBTables, RxQuery, StdCtrls, Buttons, dxCntner, dxTL,
  dxDBCtrl, dxDBGrid, ExtCtrls, ComCtrls, DBCtrls, ToolWin, Mask;

type
  TFUnosDUS = class(TFUnosTemplate)
    Table1: TTable;
    Table1DUS_oznaka: TStringField;
    Table1DUS_Status: TStringField;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUnosDUS: TFUnosDUS;

implementation

{$R *.DFM}

end.
