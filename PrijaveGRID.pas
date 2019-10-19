unit PrijaveGRID;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, ExtCtrls, Db, Wwdatsrc, ComCtrls, ToolWin, DBTables, StdCtrls, ImgList,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  dxTLClms, dxExEdtr, dxLayout, dxmdaset,  dxPSCore,
  dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFPrijaveGRID = class(TForm)
    Panel1: TPanel;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
    Spliter1: TSplitter;
    ToolBar1: TToolBar;
    spHint: TShape;
    Panel2: TPanel;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    Label1: TLabel;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    SaveDialog: TSaveDialog;
    ToolButton12: TToolButton;
    dxDBGrid1: TdxDBGrid;
    DSorte: TwwDataSource;
    Label2: TLabel;
    Label3: TLabel;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxDBGridReportLink;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ImageList2: TImageList;
    Tini: TdxMemData;
    Tinisection: TStringField;
    Tinigrid: TStringField;
    ToolButton4: TToolButton;
    ToolButton11: TToolButton;
    DBiljne: TwwDataSource;
    Query3: TQuery;
    DPartneri: TwwDataSource;
    Query1: TQuery;
    DKontakti: TwwDataSource;
    Query4: TQuery;
    Query2: TQuery;
    dxDBGridLayoutList1: TdxDBGridLayoutList;
    Sorte: TdxDBGridLayout;
    Vrste: TdxDBGridLayout;
    Query1Sifra_partnera: TIntegerField;
    Query1Ime_partnera: TStringField;
    Query1Adresa: TStringField;
    Query1Mjesto: TStringField;
    Query1Drzava: TStringField;
    Query1Telefon1: TStringField;
    Query1Telefon2: TStringField;
    Query1Fax: TStringField;
    Query1Email: TStringField;
    Query1Kratica: TStringField;
    Query1Mobilni_tel: TStringField;
    Partneri: TdxDBGridLayout;
    Query1Naziv_Drzave: TStringField;
    Kontakti: TdxDBGridLayout;
    Query4Sifra_Kontakta: TIntegerField;
    Query4Ime_kontakta: TStringField;
    Query4Prezime_kontakta: TStringField;
    Query4Telefon: TStringField;
    Query4Mobitel: TStringField;
    Query4Email: TStringField;
    Query4Ime_partnera: TStringField;
    Query5: TQuery;
    dsOdjel: TwwDataSource;
    Query5Sifra: TIntegerField;
    Query5Naziv_Odjela: TStringField;
    Query5Ime_partnera: TStringField;
    Odjeli: TdxDBGridLayout;
    Query2Sifra_zahtjeva: TIntegerField;
    Query2Datum_prijavljivanja: TDateField;
    Query2ImePodnositelja: TStringField;
    Query2ImeVlasnika: TStringField;
    Query2ImeOplemenjivaca: TStringField;
    Query2Tehnicki_upitnik: TBooleanField;
    Query2VCU: TStringField;
    Query2DUS: TStringField;
    Query2Oznaka_sorte: TStringField;
    Query2Ime_sorte: TStringField;
    Query2Namjena: TMemoField;
    Query2Punomoc: TBooleanField;
    Query2Vrsta_hrv: TStringField;
    Query2Vrsta_lat: TStringField;
    Query2Broj_brisanja: TStringField;
    Query2NNBrisanje: TStringField;
    Query2Broj_prava: TStringField;
    Query2Datum_brisanja: TDateField;
    Query2NNPravo: TStringField;
    Query2Broj_priznavanja: TStringField;
    Query2Datum_prava: TDateField;
    Query2NNPriznavanje: TStringField;
    Query2Datum_priznavanja: TDateField;
    Query2Broj_rjesenja: TStringField;
    Query2NNOdrzavanje: TStringField;
    Query2Datum_rjesenja: TDateField;
    qNalozi: TQuery;
    dsNalozi: TwwDataSource;
    qNaloziBroj_naloga: TIntegerField;
    qNaloziGodina_naloga: TStringField;
    qNaloziDatum_izdavanja: TDateField;
    qNaloziIme_partnera: TStringField;
    qNaloziCijena_stavke: TCurrencyField;
    qNaloziAvans: TSmallintField;
    qNaloziSifra_placanja: TStringField;
    qNaloziPDV: TSmallintField;
    qNaloziUpisni_broj: TStringField;
    qNaloziOznaka_sorte: TStringField;
    qNaloziIme_sorte: TStringField;
    qNaloziSifra_naloga: TIntegerField;
    qNaloziSifra_dok: TSmallintField;
    Nalozi: TdxDBGridLayout;
    Query2ImeOdrzivaca: TStringField;
    Query2Kupljen: TBooleanField;
    Query2Napomena: TMemoField;
    Query2UBroj: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TLCustomizeDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TLCustomizeStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure dxDBGrid1HeaderMoved(Sender: TObject;
      Column: TdxTreeListColumn);
    procedure dxDBGrid1HideHeader(Sender: TObject;
      AColumn: TdxTreeListColumn);
    procedure dxDBGrid1ShowHeader(Sender: TObject;
      AColumn: TdxTreeListColumn; BandIndex, RowIndex, ColIndex: Integer);
    procedure TLCustomizeIsVisibleToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure dxDBGrid1GetLevelColor(Sender: TObject; ALevel: Integer;
      var AColor: TColor);
    procedure ToolButton7Click(Sender: TObject);
    procedure dxDBGrid1CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
    procedure dxDBGrid1CustomDrawFooterNode(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; AFooterIndex: Integer; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure ListaPrikaza;
    procedure Query2BeforeOpen(DataSet: TDataSet);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    DragNode: TdxTreeListNode;
    procedure Synchronize;
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    function  GetColor(BColor, EColor: TColor; N, H: Integer): TColor;
  public
    { Public declarations }
    prikaz,gridje:string;
    procedure StartPregled(naziv:String;koji:integer);

  end;

var
  FPrijaveGRID: TFPrijaveGRID;

implementation
Uses BazeModul, OdabirPrikazaDlg, Pricekaj, Main;
{$R *.DFM}

procedure TFPrijaveGRID.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TFPrijaveGRID.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #27 then Close;
end;

procedure TFPrijaveGRID.TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
Var column : TdxTreeListColumn;
begin
  DragNode.MoveTo(TLCustomize.FocusedNode, natlInsert);
  column := TdxTreeListColumn(DragNode.Data);
  if (TLCustomize.FocusedNode <> nil) then
    column.Index := TLCustomize.FocusedNode.AbsoluteIndex
  else column.Index := 0;
end;

procedure TFPrijaveGRID.TLCustomizeDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source = Sender;
end;

procedure TFPrijaveGRID.TLCustomizeStartDrag(Sender: TObject; var DragObject: TDragObject);
begin
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TFPrijaveGRID.Synchronize;
var
  I: Integer;
  Node: TdxTreeListNode;
begin
  TLCustomize.ClearNodes;
  for I := 0 to dxDBGrid1.ColumnCount - 1 do
  begin
    Node := TLCustomize.Add;
    Node.Values[TLCustomizeColumn.Index] := dxDBGrid1.Columns[I].Caption;
    if dxDBGrid1.Columns[I].Visible then
      Node.Values[TLCustomizeIsVisible.Index] := TLCustomizeIsVisible.ValueChecked;
    Node.Data := dxDBGrid1.Columns[I];
  end;
end;

procedure TFPrijaveGRID.dxDBGrid1HeaderMoved(Sender: TObject;
  Column: TdxTreeListColumn);
begin
  Synchronize;
end;

procedure TFPrijaveGRID.dxDBGrid1HideHeader(Sender: TObject;
  AColumn: TdxTreeListColumn);
begin
  Synchronize;
end;

procedure TFPrijaveGRID.dxDBGrid1ShowHeader(Sender: TObject;
  AColumn: TdxTreeListColumn; BandIndex, RowIndex, ColIndex: Integer);
begin
  Synchronize;
end;

procedure TFPrijaveGRID.TLCustomizeIsVisibleToggleClick(Sender: TObject; const Text: String; State: TdxCheckBoxState);
var column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);
   column.Visible := State = cbsChecked;
end;

procedure TFPrijaveGRID.ToolButton1Click(Sender: TObject);
begin
  if TLCustomize.visible then TLCustomize.visible := false
  Else TLCustomize.visible:=true;
end;

procedure TFPrijaveGRID.ToolButton3Click(Sender: TObject);
begin
     dxDBGrid1.FullCollapse;
end;

procedure TFPrijaveGRID.ToolButton2Click(Sender: TObject);
begin
     dxDBGrid1.FullExpand;
end;

procedure TFPrijaveGRID.ToolButton6Click(Sender: TObject);
var InputString: string;
begin
  if confirm('Da li želite snimiti trenutni prikaz?') then
  begin
    InputString:= InputBox('Upit', 'Naziv (opis) prikaza :', dxDBGrid1.iniSectionName);
    if inputstring <> '' then
    begin
      dxDBGrid1.iniSectionName := inputstring;
      dxDBGrid1.SaveToIniFile(dxDBGrid1.iniFileName);

      SaveDBGridFilterToFile(PathBIN+dxDBGrid1.iniSectionName+'.fil',dxDBGrid1.Filter);

      tini.Open;
      if FileExists(PathBIN+'PregledGrid.bin') then tini.LoadFromBinaryFile(PathBIN+'PregledGrid.bin');
      if not tini.locate('section',inputstring,[]) then
      begin
        tini.append;
        Tinigrid.Value := gridJe;
        Tinisection.value := inputstring;
        tini.post;
        tini.SaveToBinaryFile(PathBIN+'PregledGrid.bin');
      End;
    End;
  End;
  Close;
end;

procedure TFPrijaveGRID.ToolButton5Click(Sender: TObject);
begin
     dxDBGrid1.ShowGrid := ToolButton5.Down;
end;

procedure TFPrijaveGRID.ToolButton8Click(Sender: TObject);
begin
   Save('htm', 'HTML File (*.htm; *.html)|*.htm', Label1.caption+'.htm', dxDBGrid1.SaveToHTML);
end;

procedure TFPrijaveGRID.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do
  begin
//    InitialDir := 'C:\My Documents';
//    InitialDir := 'C:\';
    DefaultExt := ADefaultExt;
    Filter := AFilter;
    FileName := AFileName;
    if Execute then AMethod(FileName, True);      //cbSaveAll.Checked
  end;
end;

procedure TFPrijaveGRID.ToolButton9Click(Sender: TObject);
begin
    Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', Label1.caption+'.xls', dxDBGrid1.SaveToXLS);
end;

procedure TFPrijaveGRID.dxDBGrid1GetLevelColor(Sender: TObject; ALevel: Integer; var AColor: TColor);
begin
    if ALevel < 9 then  AColor := GetColor(TdxDBGrid(Sender).GroupNodeColor, clYellow, ALevel, 8);
end;

function TFPrijaveGRID.GetColor(BColor, EColor: TColor; N, H: Integer): TColor;
begin
  Result := RGB(Trunc(GetRValue(BColor) + (GetRValue(EColor)-GetRValue(BColor)) * N / H),
    Trunc(GetGValue(BColor) + (GetGValue(EColor)-GetGValue(BColor)) * N / H), Trunc(GetBValue(BColor) + (GetBValue(EColor)-GetBValue(BColor)) * N / H));
end;

procedure TFPrijaveGRID.StartPregled(naziv:String;koji:integer);
Var p2,p1,s1,s2,aa,aa2:string;
begin
  prikaz := '';
  Label1.Caption := naziv;
  sdxPanelText := 'na ovaj dio panela prevucite kolonu po kojoj želite grupiranje';

  s1:='';
  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.add('Zavod za sjemenarstvo i rasadnièarstvo');
  Screen.Cursor := crHourGlass;

  Application.CreateForm(TFPricekaj,FPricekaj);
  FPricekaj.Show;
  FPricekaj.UpDate;

 try
  case koji of

        1: begin // pregled partnera
             Query1.Open;
             dxDBGridLayoutList1.Items[2].AssignTo(dxDBGrid1);
             Query1.First;
           end;

        2: begin // pregled kontakta partnera
             Query4.Open;
             dxDBGridLayoutList1.Items[3].AssignTo(dxDBGrid1);
             Query4.First;
           end;

        3: begin // pregled odjela partnera
             Query5.Open;
             dxDBGridLayoutList1.Items[4].AssignTo(dxDBGrid1);
             Query5.First;
           end;

       10: begin
// GREŠKA
             Query2.Open;
             dxDBGridLayoutList1.Items[0].AssignTo(dxDBGrid1);
             Query2.First;
           End;

       11: begin
             Query3.open;
             dxDBGridLayoutList1.Items[1].AssignTo(dxDBGrid1);
             Query3.first;
           End;

       12: begin
             Label1.Caption:=Label1.Caption+'  >>> pritisnite F1 za ispis naloga <<<';
             qNalozi.Open;
             dxDBGridLayoutList1.Items[5].AssignTo(dxDBGrid1);
             qNalozi.First;
           End;
  End;

  gridJe:=dxDBGrid1.IniFileName;

  dxDBGrid1.IniFileName := pathbin+dxDBGrid1.IniFileName;
 finally
  Screen.Cursor := crDefault;
  FPricekaj.free;
 End;
 ListaPrikaza;
end;

procedure TFPrijaveGRID.ListaPrikaza;
var dalje: Boolean;
begin
  dalje:=False;
  if FileExists(PathBIN+'PregledGrid.bin') then
  begin
    Application.CreateForm(TFOdabirPrikazaDlg, FOdabirPrikazaDlg);
    if FOdabirPrikazaDlg.showModal=mrCancel then dalje:=False
    else
    Begin
        dalje:=True;
        Label3.caption := prikaz;
        dxDBGrid1.iniSectionName := prikaz;
        if prikaz <> '' then
        begin
            dxDBGrid1.LoadFromIniFile(dxDBGrid1.iniFileName);
            if FileExists(PathBIN+dxDBGrid1.iniSectionName+'.fil') then
                LoadDBGridFilterFromFile(PathBIN+dxDBGrid1.iniSectionName+'.fil',dxDBGrid1.Filter);
        End;
    end;
  End;
  if prikaz = '' then Label3.caption := 'osnovni prikaz'
  else Label3.caption := prikaz;
  Synchronize;
  if dalje then Showmodal else Close;
end;

procedure TFPrijaveGRID.ToolButton7Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.OnlySelected := ToolButton15.Down;
  dxComponentPrinter1Link1.ReportTitle.text := InputBox('Upit', 'Naslov izvještaja', Label1.caption);
  if (Sender as TToolButton).Tag = 0 then dxComponentPrinter1.Preview(True,nil)
  Else dxComponentPrinter1.PageSetup(nil);
end;

procedure TFPrijaveGRID.dxDBGrid1CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
    AColor := clWhite;
end;

procedure TFPrijaveGRID.dxDBGrid1CustomDrawFooterNode(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; AFooterIndex: Integer; var AText: String;
  var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
  var ADone: Boolean);
begin
    AColor := clWhite;
end;

procedure TFPrijaveGRID.Query2BeforeOpen(DataSet: TDataSet);
begin
//    Query2.SQL.LoadFromFile(PathBIN+'pgSorte.sql');
end;

procedure TFPrijaveGRID.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key=VK_F1) and (dxDBGrid1.IniFileName=PathBIN+'Nalozi.ini') then
        MainForm.IspisiNalog(qNalozi.FieldByName('Broj_naloga').AsString, qNalozi.FieldByName('Godina_naloga').AsString, False);
end;

End.
