unit FaktureUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, Wwdbcomb, Mask, wwdbedit, Wwdotdot, Db, DBTables, StdCtrls,
  wwdblook, dxCntner, dxEditor, dxEdLib, ExtCtrls, dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms, Grids, DBGrids, MemTable, dxExEdtr, ComCtrls, ToolWin,
  FR_DSet, FR_DBSet;

type
  TFFakture = class(TForm)
    Panel1: TPanel;
    dxEdit45: TdxEdit;
    dsPartner: TDataSource;
    Panel2: TPanel;
    qSorte: TQuery;
    dsGrid: TDataSource;
    dxDBGrid1: TdxDBGrid;
    qPartner: TQuery;
    wwDBLookupCombo1: TwwDBLookupCombo;
    qPartnerime_partnera: TStringField;
    qPartnermjesto: TStringField;
    qPartnerdrzava: TStringField;
    qSorteoznaka_sorte: TStringField;
    qSorteime_sorte: TStringField;
    Panel3: TPanel;
    dxDBGrid2: TdxDBGrid;
    qVrste: TQuery;
    dsVrste: TDataSource;
    dxDBGrid2vrsta_hrv: TdxDBGridColumn;
    dxDBGrid2vrsta_lat: TdxDBGridColumn;
    dxDBGrid2Check: TdxDBGridCheckColumn;
    tVrsta: TTable;
    dsLookV: TDataSource;
    qVrstelookHrv: TStringField;
    qVrstelookLat: TStringField;
    tMemo: TMemoryTable;
    dsMemo: TDataSource;
    tMemoHrv: TStringField;
    tMemoLat: TStringField;
    tMemoaaaa: TBooleanField;
    tMemosifra_vrste: TIntegerField;
    tVCU: TTable;
    dsVCU: TDataSource;
    qSorteVCU_oznaka: TStringField;
    tMemo2: TMemoryTable;
    dsMemo2: TDataSource;
    tMemo2StringField: TStringField;
    tMemo2StringField2: TStringField;
    tMemo2VCUOznaka: TStringField;
    tMemo2aaaa: TBooleanField;
    dxDBGrid1oznaka_sorte: TdxDBGridMaskColumn;
    dxDBGrid1ime_sorte: TdxDBGridMaskColumn;
    dxDBGrid1VCU_oznaka: TdxDBGridMaskColumn;
    dxDBGrid1aaaa: TdxDBGridCheckColumn;
    tDUS: TTable;
    DataSource1: TDataSource;
    qSorteDUS_oznaka: TStringField;
    tMemo2DUSoznaka: TStringField;
    dxDBGrid1DUS_oznaka: TdxDBGridColumn;
    StatusBar1: TStatusBar;
    StaticText1: TStaticText;
    Panel4: TPanel;
    dxEdit1: TdxEdit;
    wwDBLookupCombo2: TwwDBLookupCombo;
    dxEdit2: TdxEdit;
    wwDBLookupCombo3: TwwDBLookupCombo;
    tNalog: TTable;
    dsNalog: TDataSource;
    tStavkeN: TTable;
    dsStavke: TDataSource;
    tNalogSifra_naloga: TAutoIncField;
    tNalogBroj_naloga: TIntegerField;
    tNalogGodina_naloga: TStringField;
    tNalogDatum_izdavanja: TDateField;
    tNalogDatum_izmjene: TDateTimeField;
    tStavkeNSifra_stavke: TAutoIncField;
    tStavkeNSifra_naloga: TIntegerField;
    tStavkeNCijena_stavke: TCurrencyField;
    tStavkeNAvans: TSmallintField;
    tStavkeNPDV: TSmallintField;
    tStavkeNSifra_placanja: TStringField;
    qMaxBR: TQuery;
    qSortesifra_zahtjeva: TIntegerField;
    tMemo2sifra_zahtjeva: TIntegerField;
    tMemo2cijenaVCU: TCurrencyField;
    tVrstaPla: TTable;
    daVPla: TDataSource;
    dxDBGrid1CijenaVCU: TdxDBGridCurrencyColumn;
    dxDBGrid1VCUAvans: TdxDBGridPickColumn;
    tVCUVCU_oznaka: TStringField;
    tVCUVCU_Status: TStringField;
    tDUSDUS_oznaka: TStringField;
    tDUSDUS_Status: TStringField;
    qSortelook_VCU1_c: TCurrencyField;
    qSortelook_VCU2_c: TCurrencyField;
    qSortelook_VCU3_c: TCurrencyField;
    qSortelook_DUS1_c: TCurrencyField;
    qSortelook_DUS2_c: TCurrencyField;
    tMemo2look_VCU1_c: TCurrencyField;
    tMemo2look_VCU2_c: TCurrencyField;
    tMemo2look_VCU3_c: TCurrencyField;
    tMemo2look_DUS1_c: TCurrencyField;
    tMemo2look_DUS2_c: TCurrencyField;
    tMemo2iznos: TCurrencyField;
    dxDBGrid1Iznos: TdxDBGridCurrencyColumn;
    tMemo2bbbb: TBooleanField;
    dxDBGrid1bbbb: TdxDBGridCheckColumn;
    tMemo2cccc: TBooleanField;
    dxDBGrid1cccc: TdxDBGridCheckColumn;
    tMemo2cijenaDUS: TCurrencyField;
    tMemo2cijenaDIz: TCurrencyField;
    dxDBGrid1CijenaDUS: TdxDBGridCurrencyColumn;
    dxDBGrid1CijenaDIz: TdxDBGridCurrencyColumn;
    dxDBGrid1DUSAvans: TdxDBGridPickColumn;
    dxDBGrid1DizvAvans: TdxDBGridPickColumn;
    qProv: TQuery;
    qSortelook_DIzv_c: TCurrencyField;
    tNalogNapomena: TStringField;
    qSorteVCUavans: TFloatField;
    qSorteDUSavans: TFloatField;
    qSorteDIzvavans: TFloatField;
    tMemo2VCUavans: TFloatField;
    tMemo2DUSavans: TFloatField;
    tMemo2DIzvavans: TFloatField;
    qVrstesifra_vrste: TIntegerField;
    qSortesifra_vrste: TIntegerField;
    tMemo2sifra_vrste: TIntegerField;
    qPartnersifra: TIntegerField;
    tNalogSifra_partnera: TIntegerField;
    tStavkeNSifra_zahtjeva: TIntegerField;
    qSortesifra_podnositelja: TIntegerField;
    tMemo2sifra_podnositelja: TIntegerField;
    procedure qVrsteAfterOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Detalji;
    procedure dxDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KopirajUMemo(DataSet: TDataSet; tablica: TMemoryTable);
    procedure qSorteAfterOpen(DataSet: TDataSet);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure IzdajNalog;
    procedure Selektiraj(Sender: TObject);
    procedure tMemo2CalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    function ProvjeraNaloga:String;
    procedure dxDBGrid1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFakture: TFFakture;

implementation

uses BazeModul, Main;

{$R *.DFM}

procedure TFFakture.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
end;

procedure TFFakture.detalji;
var popis: String;
    SavePlace: TBookmark;
begin
    StaticText1.Caption:='  ESC - Izlaz, ENTER - Oznaæi, F1 - Nalog';
    Panel2.Visible:=True;
    Panel3.Visible:=False;
    Panel4.Visible:=True;
    dxEdit45.Visible:=False;
    wwDBLookupCombo1.Visible:=False;

    tMemo2.Open;
    qSorte.Open;

    dxDBGrid1.SetFocus;
    popis:='';
    with tMemo do
    begin
        DisableControls;
        SavePlace:=GetBookmark;
        First;
        while not Eof do
        begin
            if FieldByName('aaaa').AsBoolean then
                popis:=popis+FieldByName('sifra_vrste').AsString+',';
            Next;
        end;
        GotoBookmark(SavePlace);
        FreeBookmark(SavePlace);
        EnableControls;
    end;
    if popis='' then
    begin
        qSorte.SQL.Text:='';
        ShowMessage('Morate odabrati barem jednu vrstu!');
        Panel3.Visible:=True;
        Panel4.Visible:=False;
        Panel2.Visible:=False;
        dxEdit45.Visible:=False;
        wwDBLookupCombo1.Visible:=False;
        StaticText1.Caption:='  ESC - Izlaz, ENTER - Oznaæi, F1 - Sorte';
        dxDBGrid2.SetFocus;
    end
    else
    begin
        Delete(popis,length(popis),1);
        qSorte.SQL.Text:=' SELECT sifra_vrste, oznaka_sorte, ime_sorte, VCU_oznaka,'+
                         ' DUS_oznaka, sifra_podnositelja, sifra_zahtjeva,'+
                         ' 100-SUM(v.avans) VCUavans, 100-SUM(d.avans) DUSavans, 100-SUM(i.avans) DIzvavans'+
                         ' FROM priznanje_PB p'+
                         ' LEFT OUTER JOIN stavke_naloga v ON (p.sifra_zahtjeva=v.sifra_zahtjeva AND v.sifra_placanja="V" || p.VCU_oznaka)'+
                         ' LEFT OUTER JOIN stavke_naloga d ON (p.sifra_zahtjeva=d.sifra_zahtjeva AND d.sifra_placanja="D" || p.DUS_oznaka)'+
                         ' LEFT OUTER JOIN stavke_naloga i ON (p.sifra_zahtjeva=i.sifra_zahtjeva AND i.sifra_placanja="DI")'+
                         ' WHERE p.sifra_podnositelja=:sifra'+
                         ' AND p.sifra_vrste IN ('+popis+')'+
                         ' GROUP BY sifra_vrste, oznaka_sorte, ime_sorte, VCU_oznaka,'+
                         ' DUS_oznaka, sifra_podnositelja, sifra_zahtjeva';
//        ShowMessage(qSorte.SQL.Text);
        qSorte.Active:=False;
        qSorte.Open;
    end;
end;

procedure TFFakture.dxDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key in [VK_RETURN,VK_SPACE] then
    begin
        tMemo.Edit;
        tMemoaaaa.Value:=not tMemoaaaa.Value;
        tMemo.Post;
    end
    else if key=VK_F1 then Detalji
    else if key=VK_ESCAPE then Close;
end;

procedure TFFakture.KopirajUMemo(DataSet: TDataSet; tablica: TMemoryTable);
var i: Integer;
begin
    tablica.EmptyTable;
    tablica.Open;
    DataSet.First;
    while not DataSet.Eof do
    begin
        tablica.Insert;
        for i:=0 to DataSet.FieldCount -1 do
            tablica.FieldByName(DataSet.Fields[i].FieldName).Value:=DataSet.Fields[i].Value;
        tablica.Post;
        DataSet.Next;
    end;
    tablica.First;
end;

procedure TFFakture.qVrsteAfterOpen(DataSet: TDataSet);
begin
    KopirajUMemo(DataSet,tMemo);
end;

procedure TFFakture.qSorteAfterOpen(DataSet: TDataSet);
begin
    KopirajUMemo(DataSet,tMemo2);
    tMemo2.First;
    while not tMemo2.Eof do
    begin
        tMemo2.Edit;
        if tMemo2VCUOznaka.Value='1' then tMemo2cijenaVCU.Value:=tMemo2look_VCU1_c.Value
        else if tMemo2VCUOznaka.Value='2' then tMemo2cijenaVCU.Value:=tMemo2look_VCU2_c.Value
        else if tMemo2VCUOznaka.Value='3' then tMemo2cijenaVCU.Value:=tMemo2look_VCU3_c.Value
        else tMemo2cijenaVCU.Value:=0;

        if tMemo2DUSOznaka.Value='1' then tMemo2cijenaDUS.Value:=tMemo2look_DUS1_c.Value
        else if tMemo2DUSOznaka.Value='2' then tMemo2cijenaDUS.Value:=tMemo2look_DUS2_c.Value
        else tMemo2cijenaDUS.Value:=0;
        tMemo2.Post;
        tMemo2.Next;
    end;
    tMemo2.First;
end;

procedure TFFakture.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (dxDBGrid1.FocusedField.FieldNo>7) or (dxDBGrid1.FocusedField.FieldNo<11) then
    begin
        if key in [VK_RETURN,VK_SPACE] then
        begin
            tMemo2.Edit;
            case dxDBGrid1.FocusedField.FieldNo of
                7: tMemo2aaaa.Value:=not tMemo2aaaa.Value;
                8: tMemo2bbbb.Value:=not tMemo2bbbb.Value;
                9: tMemo2cccc.Value:=not tMemo2cccc.Value;
            end;
            tMemo2.Post;
        end
        else if key=VK_F1 then IzdajNalog
        else if key=VK_ESCAPE then
        begin
            Panel3.Visible:=True;
            Panel4.Visible:=False;
            Panel2.Visible:=False;
            wwDBLookupCombo1.Visible:=True;
            dxEdit45.Visible:=True;
            StaticText1.Caption:='  ESC - Izlaz, ENTER - Oznaæi, F1 - Sorte';

            tMemo2.Close;
            qSorte.Close;

            dxDBGrid2.SetFocus;
        end;
    end;
end;

procedure TFFakture.wwDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=VK_ESCAPE then Close;
end;

procedure TFFakture.IzdajNalog;
var broj,pdv: integer;
    godina,greska,napomena: string;
    Year, Month, Day: Word;
begin
    tMemo2.DisableControls;
    greska:=ProvjeraNaloga;
    if length(greska)>0 then
    begin
        ShowMessage(greska);
        tMemo2.EnableControls;
        Exit;
    end;
    DecodeDate(Date,Year,Month,Day);
    godina:=IntToStr(Year);
    if InputQuery('Upit','Upišite godinu naloga (u formatu kao 2004)',godina) then
    begin
        napomena:=IntToStr(StrToInt(godina)-1)+'/'+godina;
        InputQuery('Upit','Upišite vegetacijsku godinu',napomena);
        qMaxBR.ParamByName('godina').Value:=godina;  // naði Max broj u godini
        qMaxBR.Prepare;
        qMaxBR.Open;
        if qMaxBR.Fields[0].IsNull then broj:=1
        else broj:=qMaxBR.Fields[0].AsInteger;
        qMaxBR.Close;

        with tNalog do  // Zaglavlje naloga
        begin
            Insert;
            FieldByName('broj_naloga').AsInteger:=broj;
            FieldByName('godina_naloga').AsString:=godina;
            FieldByName('datum_izdavanja').AsDateTime:=Date;
            FieldByName('sifra_partnera').Value:=qVrste.ParamByName('sifra').AsInteger;
            if napomena='' then FieldByName('napomena').AsString:='' else
                FieldByName('napomena').AsString:='VCU i DUS ispistivanje - vegetacijska '+napomena+' g.';
            FieldByName('datum_izmjene').AsDateTime:=Now;
            Post;
        end;
        with tStavkeN do  // Detalji naloga
        begin
            tMemo2.DisableControls;
            tMemo2.First;
            pdv:=Podaci.TabSetUp.FieldByName('pdv').AsInteger;
            while not tMemo2.Eof do
            begin
                if tMemo2aaaa.Value then  // Naknada za VCU
                begin
                    Insert;
                    FieldByName('sifra_zahtjeva').AsInteger:=tMemo2sifra_zahtjeva.AsInteger;  // ovo je šifra sorte
                    FieldByName('cijena_stavke').AsCurrency:=tMemo2cijenaVCU.AsCurrency;
                    FieldByName('avans').AsInteger:=tMemo2VCUavans.AsInteger;
                    FieldByName('pdv').AsInteger:=pdv;
                    FieldByName('sifra_placanja').AsString:='V'+tMemo2VCUOznaka.AsString;
                    Post;
                end;
                if tMemo2bbbb.Value then // Naknada za DUS
                begin
                    Insert;
                    FieldByName('sifra_zahtjeva').AsInteger:=tMemo2sifra_zahtjeva.AsInteger;  // ovo je šifra sorte
                    FieldByName('cijena_stavke').AsCurrency:=tMemo2cijenaDUS.AsCurrency;
                    FieldByName('avans').AsInteger:=tMemo2DUSavans.AsInteger;
                    FieldByName('pdv').AsInteger:=pdv;
                    FieldByName('sifra_placanja').AsString:='D'+tMemo2DUSOznaka.AsString;
                    Post;
                end;
                if tMemo2cccc.Value then // Naknada za DUS izvješæe
                begin
                    Insert;
                    FieldByName('sifra_zahtjeva').AsInteger:=tMemo2sifra_zahtjeva.AsInteger;  // ovo je šifra sorte
                    FieldByName('cijena_stavke').AsCurrency:=tMemo2cijenaDIz.AsCurrency;
                    FieldByName('avans').AsInteger:=tMemo2DIzvavans.AsInteger;
                    FieldByName('pdv').AsInteger:=pdv;
                    FieldByName('sifra_placanja').AsString:='DI';
                    Post;
                end;
                tMemo2.Next;
            end;
            tMemo2.EnableControls;
        end;
        MainForm.IspisiNalog(IntToStr(broj), godina, False);
    end;
    tMemo2.EnableControls;
    Close;
end;

Function TFFakture.ProvjeraNaloga:String;
var i:  Integer;
begin
    Result:='';
    i:=0;
    with tMemo2 do
    begin
        while not Eof do
        begin
            if FieldByName('aaaa').AsBoolean then // provjera VCU naloga
            begin
                i:=i+1;
                qProv.SQL.Clear;
                qProv.SQL.Add('SELECT SUM(s.avans) avans');
                qProv.SQL.Add('FROM nalog n, stavke_naloga s');
                qProv.SQL.Add('WHERE n.sifra_naloga=s.sifra_naloga');
                qProv.SQL.Add('AND s.sifra_zahtjeva='+FieldByName('sifra_zahtjeva').AsString);
                qProv.SQL.Add('AND s.sifra_placanja=''V'+FieldByName('VCU_oznaka').AsString+'''');
                qProv.Open;
                if not qProv.Fields[0].IsNull then
                    if qProv.FieldByName('avans').Value=100 then
                        Result:=Result+'Nalog V'+FieldByName('VCU_oznaka').AsString+' za oznaku sorte '+FieldByName('oznaka_sorte').AsString+' veæ postoji.'+#13
                    else if FieldByName('VCUavans').Value=100 then
                        Result:=Result+'Nalog V'+FieldByName('VCU_oznaka').AsString+' za oznaku sorte '+FieldByName('oznaka_sorte').AsString+' veæ ima 50% fakturirano'+#13;
            end;
            if FieldByName('bbbb').AsBoolean then // provjera DUS naloga
            begin
                i:=i+1;
                qProv.SQL.Clear;
                qProv.SQL.Add('SELECT SUM(s.avans) avans');
                qProv.SQL.Add('FROM nalog n, stavke_naloga s');
                qProv.SQL.Add('WHERE n.sifra_naloga=s.sifra_naloga');
                qProv.SQL.Add('AND s.sifra_zahtjeva='+FieldByName('sifra_zahtjeva').AsString);
                qProv.SQL.Add('AND s.sifra_placanja=''D'+FieldByName('DUS_oznaka').AsString+'''');
                qProv.Open;
                if not qProv.Fields[0].IsNull then
                    if qProv.FieldByName('avans').Value=100 then
                        Result:=Result+'Nalog D'+FieldByName('DUS_oznaka').AsString+' za oznaku sorte '+FieldByName('oznaka_sorte').AsString+' veæ postoji.'+#13
                    else if FieldByName('DUSavans').Value=100 then
                        Result:=Result+'Nalog D'+FieldByName('DUS_oznaka').AsString+' za oznaku sorte '+FieldByName('oznaka_sorte').AsString+' veæ ima 50% fakturirano'+#13;
            end;
            if FieldByName('cccc').AsBoolean then // provjera DUS izvješæa naloga
            begin
                i:=i+1;
                qProv.SQL.Clear;
                qProv.SQL.Add('SELECT SUM(s.avans) avans');
                qProv.SQL.Add('FROM nalog n, stavke_naloga s');
                qProv.SQL.Add('WHERE n.sifra_naloga=s.sifra_naloga');
                qProv.SQL.Add('AND s.sifra_zahtjeva='+FieldByName('sifra_zahtjeva').AsString);
                qProv.SQL.Add('AND s.sifra_placanja=''DI''');
//                qProv.SQL.Add('AND s.sifra_placanja='''+FieldByName('DIzv_oznaka').AsString+'''');
                qProv.Open;
                if not qProv.Fields[0].IsNull then
                    if qProv.FieldByName('avans').Value=100 then
                       Result:=Result+'Nalog DI za oznaku sorte '+FieldByName('oznaka_sorte').AsString+' veæ postoji.'+#13
//                       Result:=Result+'Nalog '+FieldByName('DIzv_oznaka').AsString+' za oznaku sorte '+FieldByName('oznaka_sorte').AsString+' veæ postoji.'+#13
                    else if FieldByName('DIzvavans').Value=100 then
                        Result:=Result+'Nalog DI za oznaku sorte '+FieldByName('oznaka_sorte').AsString+' veæ ima 50% fakturirano'+#13;
//                        Result:=Result+'Nalog '+FieldByName('DIzv_oznaka').AsString+' za oznaku sorte '+FieldByName('oznaka_sorte').AsString+' veæ ima 50% fakturirano'+#13;
            end;
            Next;
        end;
    end;
    if i=0 then Result:='Niste odabrali niti jedan element za fakturu!';
    qProv.Close;
end;

procedure TFFakture.Selektiraj(Sender: TObject);
var SavePlace: TBookmark;
begin
    with tMemo2 do
    begin
        DisableControls;
        SavePlace:=GetBookmark;
        First;
        if (Sender as TwwDBLookupCombo).Tag=1 then
        begin
            while not Eof do
            begin
                if tMemo2VCUOznaka.Value=tVCUVCU_oznaka.Value then
                begin
                    tMemo2.Edit;
                    tMemo2aaaa.AsBoolean:=True;
                    tMemo2.Post;
                end;
                Next;
            end;
        end
        else if (Sender as TwwDBLookupCombo).Tag=2 then
        begin
            while not Eof do
            begin
                if tMemo2DUSoznaka.Value=tDUSDUS_oznaka.Value then
                begin
                    tMemo2.Edit;
                    tMemo2bbbb.AsBoolean:=True;
                    tMemo2.Post;
                end;
                Next;
            end;
        end;
        GotoBookmark(SavePlace);
        FreeBookmark(SavePlace);
        EnableControls;
    end;
    dxDBGrid1.FullRefresh;
    dxDBGrid1.SetFocus;
end;

procedure TFFakture.tMemo2CalcFields(DataSet: TDataSet);
var zbir: Double;
begin
    zbir:=0;
    if tMemo2aaaa.Value then zbir:=zbir+tMemo2cijenaVCU.AsCurrency*tMemo2VCUavans.AsCurrency/100;
    if tMemo2bbbb.Value then zbir:=zbir+tMemo2cijenaDUS.AsCurrency*tMemo2DUSavans.AsCurrency/100;
    if tMemo2cccc.Value then zbir:=zbir+tMemo2cijenaDIz.AsCurrency*tMemo2DIzvavans.AsCurrency/100;
    tMemo2iznos.AsCurrency:=zbir;
end;

procedure TFFakture.FormCreate(Sender: TObject);
begin
    tMemo.Open;
    qVrste.Open;
end;

procedure TFFakture.dxDBGrid1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
    if AColumn.Name='dxDBGrid1aaaa' then
    begin
        if (ANode.Values[5]='1') or (ANode.Values[5]='2') or (ANode.Values[5]='3') then  else AColor:=clGray;
        if ANode.Values[11]='0' then AColor:=clSilver; // ako je VCU avans=0
    end
    else if AColumn.Name='dxDBGrid1bbbb' then
    begin
        if (ANode.Values[6]='1') or (ANode.Values[6]='2') then  else AColor:=clGray;
        if ANode.Values[12]='0' then AColor:=clSilver; // ako je DUS avans=0
    end
    else if AColumn.Name='dxDBGrid1cccc' then
    begin
        if ANode.Values[13]='0' then AColor:=clSilver; // ako je Dizv avans=0
    end
    else
    if (AColumn.Name='dxDBGrid1CijenaVCU') or (AColumn.Name='dxDBGrid1CijenaDUS') or (AColumn.Name='dxDBGrid1CijenaDIz') then
    begin
        if ANode.Values[AColumn.Index]='0,00' then AFont.Color:=clRed;
    end;

    if ((AColor=clGray) or (AColor=clSilver)) and (AText='True') then AText:='False';
end;

procedure TFFakture.wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
    dxDBGrid2.SetFocus;
end;

end.
