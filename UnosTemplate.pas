unit UnosTemplate;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, DBTables, DB, StdCtrls, ExtCtrls, Grids, DBGrids, Buttons,
  DBCtrls, Mask, DBLists, Servisi, ToolEdit, Placemnt, RxQuery, ComCtrls,
  Tabnotbk, ToolWin, dxCntner, dxTL, dxDBCtrl, dxDBGrid, FR_PTabl,
  dxDBTLCl, dxGrClms;

type
  TFUnosTemplate = class(TObrijForm)
    Pregled: TPageControl;
    Tpregled: TTabSheet;
    Tunos: TTabSheet;
    TBar: TToolBar;
    DBNavigator3: TDBNavigator;
    BtnNovi: TToolButton;
    BtnIzmijeni: TToolButton;
    BtnIzlaz: TToolButton;
    BtnIspis: TToolButton;
    PanelGrid: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    BtnSpremi: TBitBtn;
    BtnCancel: TBitBtn;
    BtnPovratak: TBitBtn;
    LbLStanje: TLabel;
    ToolButton1: TToolButton;
    DBGrid11: TdxDBGrid;
    DQ: TDataSource;
    TQ: TRxQuery;
    dsTable: TDataSource;
    frPrintTable1: TfrPrintTable;
    procedure ModalOK(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid11CheckButton(Sender: TObject; ACol: Integer;
      Field: TField; var Enabled: Boolean);
    procedure PregledChange(Sender: TObject);
    procedure BtnNoviClick(Sender: TObject);
    procedure BtnIzmijeniClick(Sender: TObject);
    procedure BtnSpremiClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnIzlazClick(Sender: TObject);
    procedure BtnPovratakClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid11KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Kdown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure OEnter(Sender: TObject);
    procedure BtnObrisiClick(Sender: TObject);
    procedure DBGrid11GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure Kpress(Sender: TObject; var Key: Char);
    procedure aBeforeDelete(DataSet: TDataSet);
    procedure aBeforeEdit(DataSet: TDataSet);
    procedure aBeforeInsert(DataSet: TDataSet);
    procedure aBeforeOpen(DataSet: TDataSet);
    procedure aAfterPost(DataSet: TDataSet);
    procedure aAfterCancel(DataSet: TDataSet);
    procedure TsAfterEdit(DataSet: TDataSet);
    procedure TsAfterInsert(DataSet: TDataSet);
    procedure BtnIspisClick(Sender: TObject);
    procedure GridKey(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PregledChanging(Sender: TObject; var AllowChange: Boolean);
    procedure GridDBLClick(Sender: TObject);
  private
    BioEdit : Boolean;
    Procedure SelectPrvi;
    Procedure PostaviDBEdit;
  public
  end;

var
  FUnosTemplate: TFUnosTemplate;
  UnosStyle:TFormStyle;
implementation

uses Main, BazeModul, PojamUnit;
{$R *.DFM}

procedure TFUnosTemplate.ModalOK(Sender: TObject);
begin
 ModalResult := mrOK;
end;

Procedure TfUnosTemplate.PostaviDBEdit;
Var i:Integer;
begin
  For i:= 0 to Panel1.ControlCount -1 do
   if Panel1.Controls[i].ClassName = 'TDBEdit' then
   begin
        (Panel1.controls[i] as TDBedit).OnKeyDown:=KDown;
        (Panel1.controls[i] as TDBedit).OnEnter:=OEnter;
        (Panel1.controls[i] as TDBedit).OnClick:=OEnter;
   end;
end;

procedure TFUnosTemplate.FormCreate(Sender: TObject);
Var I:Integer;
    fromic, koje, tabli, vheric, main:String;
begin
 PostaviDBEdit;                 // kontrola surfanje po DBEdit-ima
 TBar.Parent := TPregled;       // postavljanje za CHILD TPregled TAB
 Pregled.ActivePage:=Tpregled;  // poèetno pokaži TPregled TAB
 FormStyle:=UnosStyle;
 BioEdit := False;

 main:=TTable(dsTable.DataSet).TableName;
 fromic:='';
 vheric:='1=1';
 Koje:='';

With dsTable.DataSet do
begin
 for I := 0 to FieldCount - 1 do   // proði kroz imena kolona od TTable
 begin
       if Fields[i].Visible then
       begin
          if Fields[i].FieldKind=fkLookup then
          begin
            tabli:=TTable(Fields[i].LookupDataSet).TableName;      // naði naziv lookup tablice
            koje:=Koje+', '+tabli+'.'+Fields[i].LookupResultField; // dodaj lTab.lField u SELECT
            if Pos(tabli, fromic)=0 then
            begin
                fromic:=fromic+', '+tabli+''; // dodaj naziv lTab u FROM
                vheric:=vheric+' AND '+tabli+'.'+Fields[i].LookupKeyFields+'='+main+'.'+Fields[i].KeyFields;
            end;
          end
          else koje:=Koje+', '+main+'.'+Fields[i].FieldName;
       end;
 end;
 Koje := copy(koje,3,length(koje)-2);               // Obriši višak ', '
 TQ.MacroByName('kolone').AsString := Koje;         // postavi string za SELECT u upitu
 TQ.MacroByName('tablica').AsString := main+fromic; // postavi string za FROM u upitu
 TQ.MacroByName('gdje').AsString := vheric;         // postavi string za WHERE u upitu
end;
tq.RealSQL.SaveToFile('c:\aaa.sql');
 TQ.Open;                                       // otvori upit
 with DBGrid11 do   // dodavanje naziva kolonu u Grid
 begin
    CreateDefaultColumns(TQ, DBGrid11);   // napravi sve kolone za dxDBGrid
    KeyField:=TTable(dsTable.DataSet).IndexFieldNames; // index na prvu kolonu zbog LoadAllRecords
    for i := 0 to ColumnCount -1 do  // postavi nazive kolona na Grid
        Columns[i].Caption:=TTable(dsTable.DataSet).FieldByName(Columns[i].FieldName).DisplayName;
 end;
end;

procedure TFUnosTemplate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=CaFree;
end;

procedure TFUnosTemplate.DBGrid11CheckButton(Sender: TObject; ACol: Integer;
  Field: TField; var Enabled: Boolean);
begin
    Enabled := (Field <> nil) and not (Field is TBlobField);
end;

Procedure TfUnosTemplate.SelectPrvi;
Var i:Integer;
begin
  For i:= 0 to Panel1.ControlCount -1 do
   if Panel1.Controls[i].Tag AND 128 = 128 then
    begin
//     ShowMessage(Panel1.Controls[i].Name);
     TwinControl(Panel1.Controls[i]).SetFocus;
     Exit;
    end;
end;

procedure TFUnosTemplate.PregledChange(Sender: TObject);
begin
  If Pregled.ActivePage = TUnos then
  begin
   if dsTable.State=dsEdit then LbLStanje.Color:=clRed else LbLStanje.Color:=clNavy;
   if dsTable.DataSet.Active=False then dsTable.DataSet.Active:=True;
   DBNavigator3.Visible := True;
   BtnNovi.Visible := True;
   BtnIzmijeni.Visible := True;
   TBar.Parent := TUnos;
   DBNavigator3.DataSource:=dsTable;
                    // Fields[0]
   dsTable.DataSet.Locate(DBGrid11.KeyField,TQ.FieldByName(DBGrid11.KeyField).Value,[]);
  end
  else if Pregled.ActivePage = Tpregled then
  begin
    DBGrid11.Parent := PanelGrid;
    DBNavigator3.Visible := True;
    BtnNovi.Visible := True;
    BtnIzmijeni.Visible := True;
//    if bioEdit then KeyChange(Nil);
    BioEdit := False;
    TBar.Parent := TPregled;
    DBNavigator3.DataSource:=DQ;

    TQ.Active:=False;
    TQ.Open;                                       // otvori upit
    TQ.Locate(DBGrid11.KeyField,dsTable.DataSet.Fields[0].Value,[]);  // uskladi sa TTable
  end;
end;

procedure TFUnosTemplate.BtnNoviClick(Sender: TObject);
begin
  If Pregled.ActivePage <> TUnos then
    begin
      Pregled.ActivePage := TUnos;
      PregledChange(nil);
    End;
  if not (dsTable.Dataset.Name='Sorta') then
  begin
    dsTable.Dataset.Append;
    LbLStanje.Color:=clRed;
  end
  else ShowMessage('Novu sortu možete dodati'+#13+'samo kroz zahtjev.');
end;

procedure TFUnosTemplate.BtnIzmijeniClick(Sender: TObject);
begin
  If  Pregled.ActivePage <> TUnos then
    begin
      Pregled.ActivePage := TUnos;
      PregledChange(nil);
    End;
  LbLStanje.Color:=clRed;
  dsTable.DataSet.Edit;
end;

procedure TFUnosTemplate.BtnSpremiClick(Sender: TObject);
begin
  dsTable.dataset.post;
  BioEdit := True;
  LbLStanje.Color:=clNavy;
  if FormStyle = FsNormal then ModalOK(Sender);
end;

procedure TFUnosTemplate.BtnCancelClick(Sender: TObject);
begin
  dsTable.DataSet.Cancel;
  LbLStanje.Color:=clNavy;
  if FormStyle = FsNormal then ModalOK(Sender);
end;

procedure TFUnosTemplate.BtnIzlazClick(Sender: TObject);
begin
  Close;
end;

procedure TFUnosTemplate.BtnPovratakClick(Sender: TObject);
begin
 Pregled.ActivePage := TPregled;
 PregledChange(nil);
end;

procedure TFUnosTemplate.Kdown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFUnosTemplate.OEnter(Sender: TObject);
begin
    (Sender as TDBEdit).SelectAll;
end;

procedure TFUnosTemplate.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #27 then
  begin
    If  Pregled.ActivePage = TUnos then
       if (dsTable.State in DsEditModes) then dsTable.DataSet.Cancel
       else BtnPovratakClick(Sender)
    Else Close;
  End;
end;

procedure TFUnosTemplate.DBGrid11KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and (FormStyle = FsMDIChild) then BtnIzmijeniClick(Sender)
  else ModalOK(Sender);

  if Key in ['A'..'Z','a'..'z','0'..'9','š','ð','è','æ','ž','Š','Ð','Ž','Æ','È'] then
  begin
    PojamForm.Edit1.Text := Key;
    PojamForm.Edit1.SelStart := 1;
    PojamForm.ShowModal;
    if PojamForm.ModRes then
        TQ.Locate(DBGrid11.FocusedField.FieldName,PojamForm.Edit1.Text,[loCaseInsensitive, loPartialKey]);
  end;
end;

procedure TFUnosTemplate.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then BtnNoviClick(Sender)
  else if Key = VK_F6 then BtnIzmijeniClick(Sender);
end;

procedure TFUnosTemplate.BtnObrisiClick(Sender: TObject);
begin
  If  Pregled.ActivePage <> TUnos then
    begin
      Pregled.ActivePage := TUnos;
      PregledChange(nil);
    End;
 if MessageDlg('Da li stvarno želite obrisati podatak?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
     dsTable.Dataset.Delete;
     BioEdit := True;
  End;
end;

procedure TFUnosTemplate.DBGrid11GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  Background := $00B8EDFA;
  if Highlight then begin
    AFont.Color := clHighlightText;
    if DBGrid11.Focused then Background := clHighlight
    else Background := clGray;
  end;
end;

procedure TFUnosTemplate.Kpress(Sender: TObject; var Key: Char);
begin
 if key =#13 then begin selectnext(sender as twincontrol,true,true);key:=#0; end;
end;

procedure TFUnosTemplate.aBeforeDelete(DataSet: TDataSet);
begin
//  if not PristupBazi(dataSet.Tag,cDelete) then raise exception.create(cNeovlasteno);
end;

procedure TFUnosTemplate.TsAfterEdit(DataSet: TDataSet);
begin
    if dsTable.State=dsEdit	then
    begin
        LbLStanje.Color:=clRed;
        BtnSpremi.Enabled:=True;
        BtnCancel.Enabled:=True;
        BtnIzmijeni.Enabled:=False;
    end
    else
    begin
        aAfterCancel(DataSet);
        LbLStanje.Color:=clNavy;
    end;
    try
        dsTable.DataSet.FieldByName('Datum_promjene').Value:=Now;
    except
    end;
end;

procedure TFUnosTemplate.TsAfterInsert(DataSet: TDataSet);
begin
    SelectPrvi;
    BtnSpremi.Enabled:=True;
    BtnCancel.Enabled:=True;
    try
        dsTable.DataSet.FieldByName('Datum_promjene').Value:=Now;
    except
    end;
end;

procedure TFUnosTemplate.aBeforeEdit(DataSet: TDataSet);
begin
//  if not PristupBazi(dataSet.Tag,cEdit) then raise exception.create(cNeovlasteno);
    BtnNovi.Enabled:=False;
    BtnIspis.Enabled:=False;
    DBNavigator3.Enabled:=False;
end;

procedure TFUnosTemplate.aAfterPost(DataSet: TDataSet);
begin
//  if not PristupBazi(dataSet.Tag,cEdit) then raise exception.create(cNeovlasteno);
    BtnNovi.Enabled:=True;
    BtnIspis.Enabled:=True;
    BtnSpremi.Enabled:=False;
    BtnCancel.Enabled:=False;
    BtnIzmijeni.Enabled:=True;
    DBNavigator3.Enabled:=True;
end;

procedure TFUnosTemplate.aAfterCancel(DataSet: TDataSet);
begin
    BtnNovi.Enabled:=True;
    BtnIspis.Enabled:=True;
    BtnSpremi.Enabled:=False;
    BtnCancel.Enabled:=False;
    BtnIzmijeni.Enabled:=True;
    DBNavigator3.Enabled:=True;
    LbLStanje.Color:=clNavy;
end;

procedure TFUnosTemplate.aBeforeInsert(DataSet: TDataSet);
begin
//  if not PristupBazi(dataSet.Tag,cInsert) then raise exception.create(cNeovlasteno);
end;

procedure TFUnosTemplate.aBeforeOpen(DataSet: TDataSet);
begin
//  if not PristupBazi(dataSet.Tag,cOpen) then raise exception.create(cNeovlasteno);
end;

{
- Postaviti prvom dbEdit-u TAG vrijednost 128 da bi bio prvi selektiran
- Table objektu postaviti Events sve BEFORE open, insert, edit, delete
istom Table objektu u propertis FILTER upisati broj polja po kojem æe biti
sortirano kada se kreira forma i odmah zatim rijeèima napisati nešto da bi bilo
prikazano u nazivu TTABEDA npr. 3PACIJENTI
- Table objektu postaviti AfterEdit i AfterInsert = TSAFTEREDIT}

procedure TFUnosTemplate.BtnIspisClick(Sender: TObject);
begin
  frPrintTable1.Pageheader.text:=Caption;
  frPrintTable1.PageHeader.text:=Podaci.TabSetUp.FieldByName('naziv1').asstring+' ,  '+#13+#13+
                                Podaci.TabSetUp.FieldByName('adresa1').asstring;
  frPrintTable1.ShowReport;
end;

procedure TFUnosTemplate.GridKey(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=27 then Close
    else if key=13 then GridDBLClick(Sender);
end;

procedure TFUnosTemplate.GridDBLClick(Sender: TObject);
begin
    Pregled.ActivePage:=Tunos;
    PregledChange(Pregled);
end;

procedure TFUnosTemplate.PregledChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
    if dsTable.State=dsEdit	then
        if MessageDlg('Da li želite saèuvati izmjene?', mtConfirmation, [mbYes,mbCancel], 0) = mrYes then
            dsTable.DataSet.Post else dsTable.DataSet.Cancel;
end;

end.
