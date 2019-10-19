unit SviBrojeviDlg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, Db, Wwdatsrc, DBTables, Wwtable;

type
  TFSviBrojeviDlg = class(TForm)
    wwDBGrid1: TwwDBGrid;
    TBrUvjerenja: TwwTable;
    TBrUvjerenjaDatum: TDateField;
    TBrUvjerenjaDodatak: TStringField;
    TBrUvjerenjaPraviBrojUvjerenja: TStringField;
    wwDataSource1: TwwDataSource;
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSviBrojeviDlg: TFSviBrojeviDlg;

implementation
Uses BazeModul, StrUtils;
{$R *.DFM}

procedure TFSviBrojeviDlg.FormCreate(Sender: TObject);
begin
TBrUvjerenja.open;
end;

procedure TFSviBrojeviDlg.wwDBGrid1DblClick(Sender: TObject);
VAr a:Integer;
    s:String;
begin
  a := NPos('/',TBrUvjerenjaPraviBrojUvjerenja.asstring,1);
  s := copy(TBrUvjerenjaPraviBrojUvjerenja.asstring,1,a-1);

  if not FileExists(PathUvjerenja+s+'.frp') then begin
    MessageDlg('Ne postoji snimljeno uvjerenje br. '+TBrUvjerenjaPraviBrojUvjerenja.asstring, mtWarning, [mbOK], 0);
    exit;
  End;

end;

end.
