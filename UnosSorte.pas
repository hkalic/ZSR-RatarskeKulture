unit UnosSorte;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UnosTemplate, ImgList, Db, DBTables, StdCtrls, Buttons, Grids,
  DBGrids, ComCtrls, DBCtrls, ToolWin, ExtCtrls, Mask, FR_PTabl, dxCntner,
  dxTL, dxDBCtrl, dxDBGrid, RxQuery, dxDBTLCl, dxGrClms, wwdblook;

type
  TFUnosSorte = class(TFUnosTemplate)
    Label2: TLabel;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    tVrsta: TTable;
    tVrstaSifra_vrste: TAutoIncField;
    tVrstaVrsta_hrv: TStringField;
    tVrstaVrsta_lat: TStringField;
    tVrstaVrsta_eng: TStringField;
    tVrstaNapomena: TMemoField;
    tVrstaDatum_promjene: TDateTimeField;
    dsVrsta: TDataSource;
    lookSorta: TwwDBLookupCombo;
    tTipSorte: TTable;
    dsTipSorte: TDataSource;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label8: TLabel;
    tTipSorteSifra_tipa_sorte: TSmallintField;
    tTipSorteNaziv_tipa_sorte: TStringField;
    Panel3: TPanel;
    DBMemo1: TDBMemo;
    Label6: TLabel;
    Panel4: TPanel;
    Label9: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBEdit1: TDBEdit;
    Label10: TLabel;
    Sorta: TTable;
    SortaSifra_zahtjeva: TAutoIncField;
    SortaSifra_dok: TSmallintField;
    SortaUpisni_broj: TStringField;
    SortaTip_zahtjeva: TSmallintField;
    SortaOznaka_sorte: TStringField;
    SortaIme_sorte: TStringField;
    SortaNamjena: TMemoField;
    SortaNamPov1: TBooleanField;
    SortaNamPov2: TBooleanField;
    SortaNamPov3: TBooleanField;
    SortaDatum_promjene: TDateTimeField;
    Sorta_Vrstahrv: TStringField;
    Sorta_Vrstalat: TStringField;
    Sorta_Vrsta_Eng: TStringField;
    Sortalook_Tip_Sorte: TStringField;
    DBMemo2: TDBMemo;
    Label11: TLabel;
    SortaSastojci: TMemoField;
    SortaOpis: TMemoField;
    DBMemo3: TDBMemo;
    Label12: TLabel;
    SortaSifra_vrste: TIntegerField;
    procedure dsTableDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUnosSorte: TFUnosSorte;

implementation

{$R *.DFM}

procedure TFUnosSorte.dsTableDataChange(Sender: TObject; Field: TField);
begin
  inherited;
   try
    if Sorta.FieldByName('Tip_zahtjeva').AsInteger=1 then   // za poljo. bilje
    begin
        Panel3.Visible:=True;
        Panel4.Visible:=False;
    end
    else
    if Sorta.FieldByName('Tip_zahtjeva').AsInteger=2 then   // za povræe
    begin
        Panel3.Visible:=False;
        Panel4.Visible:=True;
    end
    else ;
   except
   end;
end;

end.
