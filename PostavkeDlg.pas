unit PostavkeDlg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, wwdbdatetimepicker, StdCtrls, ExtCtrls, DBCtrls, Mask, DBTables,
  ComCtrls, Buttons, lmddlgex, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  dxDBELib, LMDCustomComponent, LMDContainerComponent, LMDBaseDialog,
  LMDDirDlg;

type
  TFPostavkeDlg = class(TForm)
    DataSource1: TDataSource;
    Panel2: TPanel;
    Btnizlaz: TBitBtn;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Label13: TLabel;
    Label14: TLabel;
    Label151: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    DBEdit9: TdxDBButtonEdit;
    DBEdit11: TdxDBButtonEdit;
    DBEdit7: TdxDBButtonEdit;
    LMDDirDlg1: TLMDDirDlg;
    TabSheet3: TTabSheet;
    dxDBButtonEdit1: TdxDBButtonEdit;
    Label17: TLabel;
    Label18: TLabel;
    dxDBButtonEdit2: TdxDBButtonEdit;
    Label19: TLabel;
    dxDBButtonEdit3: TdxDBButtonEdit;
    Label20: TLabel;
    dxDBButtonEdit4: TdxDBButtonEdit;
    Label21: TLabel;
    Label22: TLabel;
    dxDBButtonEdit5: TdxDBButtonEdit;
    dxDBButtonEdit6: TdxDBButtonEdit;
    dxDBButtonEdit7: TdxDBButtonEdit;
    dxDBButtonEdit8: TdxDBButtonEdit;
    Label23: TLabel;
    Label24: TLabel;
    dxDBButtonEdit9: TdxDBButtonEdit;
    dxDBButtonEdit10: TdxDBButtonEdit;
    procedure Kdown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnizlazClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit9ButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPostavkeDlg: TFPostavkeDlg;

implementation
Uses BazeModul, MAin;
{$R *.DFM}

procedure TFPostavkeDlg.Kdown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
Case Key of
      VK_Up:
           begin
             selectnext(sender as twincontrol,False,true);
             key:=0;
           End;
      VK_Down, VK_return:
           begin
             selectnext(sender as twincontrol,True,true);
             key:=0;
           End;
End;
end;

procedure TFPostavkeDlg.BtnizlazClick(Sender: TObject);
begin
  Close;
end;

procedure TFPostavkeDlg.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then Close;
end;

procedure TFPostavkeDlg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DataSource1.State in DsEditModes then
  if confirm('Da li želite snimiti izmjene ?') Then DataSource1.dataSet.Post
  Else DataSource1.dataSet.Cancel;
  Action := caFree;
end;

procedure TFPostavkeDlg.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet2;
end;

procedure TFPostavkeDlg.DBEdit9ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var dod: String;
begin
    if LMDDirDlg1.Execute then
    begin
        with DataSource1.DataSet do
        begin
            Edit;
            if (Sender as TdxDBButtonEdit).Tag=1 then dod:='\' else dod:='';
            FieldByName((Sender as TdxDBButtonEdit).DataField).Value:=LMDdirDlg1.Path+dod;
        end;
    end;
end;

procedure TFPostavkeDlg.FormShow(Sender: TObject);
begin
  if not Podaci.TabSetUp.Active then Podaci.TabSetUp.Open;
end;

end.
