unit UnosPartneri;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UnosTemplate, ImgList, Db, DBTables, StdCtrls, Buttons, Grids,
  DBGrids, ComCtrls, DBCtrls, ToolWin, ExtCtrls, Mask, FR_PTabl, dxCntner,
  dxTL, dxDBCtrl, dxDBGrid, RxQuery, dxDBTLCl, dxGrClms, wwdblook;

type
  TFUnosPartneri = class(TFUnosTemplate)
    Partner: TTable;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    PartnerSifra_partnera: TAutoIncField;
    PartnerMjesto: TStringField;
    PartnerTelefon1: TStringField;
    PartnerTelefon2: TStringField;
    PartnerFax: TStringField;
    PartnerEmail: TStringField;
    PartnerDatum_promjene: TDateTimeField;
    PartnerKratica: TStringField;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    PartnerMobilni_tel: TStringField;
    Label3: TLabel;
    DBEdit11: TDBEdit;
    PartnerIme_partnera: TStringField;
    PartnerAdresa: TStringField;
    dsKontakti: TDataSource;
    DBGrid1: TDBGrid;
    qKontakti: TQuery;
    Label12: TLabel;
    Label13: TLabel;
    DBGrid2: TDBGrid;
    qOdjeli: TQuery;
    dsOdjeli: TDataSource;
    lookOplemenjivac: TwwDBLookupCombo;
    tDrzava: TTable;
    tDrzavaSifra: TAutoIncField;
    tDrzavaNaziv_Drzave: TStringField;
    PartnerSifra_drzava: TIntegerField;
    Partnerlook_Drzava: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUnosPartneri: TFUnosPartneri;

implementation

{$R *.DFM}

end.
