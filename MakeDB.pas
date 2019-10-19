unit Makedb;

{Table Scanner V2.02 [by demian@bhnet.com.br]}
{Code generated on nedjelja, svibanj 22, 2005 at 10:10 PM}

{$T-}

Interface

Uses Classes,SysUtils,Forms,Controls,DB,DBTables,DBIProcs,DBITypes,DBIErrs;

Type
  TCBInfo = function(const iPosition,iMax: integer; const sTable: string): boolean;

procedure MakeAllTables(dbDatabase: TDatabase; CBInfo: TCBInfo);

Implementation

Type
  Stored_Tables = (Brisanje_db,Detalji_povrce_db,Drugi_zahtjevi17_db,
                   Drugi_zahtjevi_db,Dus_db,Dus_status_db,Klase_db,
                   Kontakti_db,Korisnici_db,Licencija_db,
                   Naknada_odrzavanje_db,Nalog_db,Namjena_db,
                   Nepriznavanje_db,Odjel_partnera_db,Odrzavanje_db,
                   Otpornost_povrca_db,Partner_db,Pravo_db,
                   Priznanje_pb_db,Priznata_u_db,Priznavanje_db,Setup_db,
                   Stavke_naloga_db,Tip_sorte_db,Upisnik_detail_db,
                   Vcu_db,Vcu_status_db,Vrsta_db,Vrsta_dokumenta_db,
                   Vrsta_placanja_db,Zahtjev_pravo_db,Zasticena_db,
                   Zastupnik_db);
  TFieldsDesc   = array[0..MaxInt div SizeOf(FLDDesc)-1] of FLDDesc;
  TIndexesDesc  = array[0..MaxInt div SizeOf(IDXDesc)-1] of IDXDesc;
  TIndexesOp    = array[0..MaxInt div SizeOf(CROpType)-1] of CROpType;
  TValCheckDesc = array[0..MaxInt div SizeOf(VCHKDesc)-1] of VCHKDesc;
  TValCheckOp   = array[0..MaxInt div SizeOf(CROpType)-1] of CROpType;
  
Var
  szDirectory : DBIPATH;
  LangDrv     : string;
  OptParams   : FLDDesc;
  TableDesc   : pCRTblDesc;
  iField      : integer;
  FieldsDesc  : ^TFieldsDesc;
  iIndex      : integer;
  IndexesDesc : ^TIndexesDesc;
  IndexesOp   : ^TIndexesOp;
  iValChk     : integer;
  ValCheckDesc: ^TValCheckDesc;
  ValCheckOp  : ^TValCheckOp;
  
{______________________________________________________________________________}
function AnsiName(const NativeStr: PChar): string;
begin
  NativeToAnsi(Session.Locale,NativeStr,result);
end;

{______________________________________________________________________________}
procedure DeleteFiles(sMask: string);
var
  SearchRec: TSearchRec;
begin
  if FindFirst(sMask,faAnyFile,SearchRec) = 0 then begin
    sMask := ExtractFilePath(sMask);
    SysUtils.DeleteFile(sMask+SearchRec.Name);
    while FindNext(SearchRec) = 0 do
      SysUtils.DeleteFile(sMask+SearchRec.Name);
    FindClose(SearchRec);
  end;
end;

{______________________________________________________________________________}
procedure DeleteAuxFiles;
var
  sFileName: string;
  f: file of byte;
  b: byte;
begin
  sFileName := AnsiName(szDirectory)+AnsiName(TableDesc^.szTblName);
  if StrComp(TableDesc^.szTblType,szParadox) = 0 then begin
    SysUtils.DeleteFile(ChangeFileExt(sFileName,'.PX'));
    SysUtils.DeleteFile(ChangeFileExt(sFileName,'.VAL'));
    DeleteFiles(ChangeFileExt(sFileName,'.X*'));
    DeleteFiles(ChangeFileExt(sFileName,'.Y*'));
    end
  else begin
    assignFile(f,ChangeFileExt(sFileName,'.DBF'));
    reset(f);
    try
      seek(f,28);
      b := 0;
      write(f,b);
      SysUtils.DeleteFile(ChangeFileExt(sFileName,'.MDX'));
    finally
      closefile(f);
    end;
  end;
end;

{______________________________________________________________________________}
procedure DefField(const sName: string;
                   const iAFldType,iASubType,iAUnits1,iAUnits2: integer);
begin
  with FieldsDesc^[iField] do begin
    StrPCopy(szName,sName);
    iFldNum  := iField;
    iFldType := iAFldType;
    iSubType := iASubType;
    iUnits1  := iAUnits1;
    iUnits2  := iAUnits2;
  end;
  Inc(iField);
end;

{______________________________________________________________________________}
procedure DefIndex(const sName,sTagName,sFormat,sKeyExp,sKeyCond: string;
                   const aFields: array of integer;
                   const iAIndexID,iAFldsInKey,iAKeyLen,
                         iAKeyExptype,iABlockSize,iARestrNum,iIDXFlags: integer);
var
  i: integer;
begin
  IndexesOp^[iIndex] := crAdd;
  with IndexesDesc^[iIndex] do begin
    StrPCopy(szName,sName);
    iIndexId := iAIndexId;
    StrPCopy(szTagName,sTagName);
    StrPCopy(szFormat,sFormat);
    StrPCopy(szKeyExp,sKeyExp);
    StrPCopy(szKeyCond,sKeyCond);
    iFldsInkey  := iAFldsInkey;
    iKeyLen     := iAKeyLen;
    iKeyExpType := iAKeyExpType;
    iBlocksize  := iABlocksize;
    iRestrNum   := iARestrNum;
    bPrimary         := (iIDXFlags and (1 shl 1)) <> 0;
    bUnique          := (iIDXFlags and (1 shl 2)) <> 0;
    bDescending      := (iIDXFlags and (1 shl 3)) <> 0;
    bMaintained      := (iIDXFlags and (1 shl 4)) <> 0;
    bSubset          := (iIDXFlags and (1 shl 5)) <> 0;
    bExpIdx          := (iIDXFlags and (1 shl 6)) <> 0;
    bCaseInsensitive := (iIDXFlags and (1 shl 7)) <> 0;
    bOutofDate       := false;
    FillChar(aiKeyFld,SizeOf(aiKeyFld),#0);
    for i := Low(aFields) to High(aFields) do
      aiKeyFld[i] := aFields[i];
  end;
  Inc(iIndex);
end;

{______________________________________________________________________________}
procedure DefValCheck(const iAFldNum,iValChkFlags: integer;
                      const aAMinVal,aAMaxVal,aADefVal: array of Byte;
                      const sPict,sLkupTblName: string;
                      const eALKUPType: LKUPType);
var
  i: integer;
begin
  ValCheckOp^[iValChk] := crAdd;
  with ValCheckDesc^[iValChk] do begin
    iFldNum := iAFldNum;
    StrPCopy(szPict,sPict);
    bRequired  := (iValChkFlags and (1 shl 1)) <> 0;
    bHasMinVal := (iValChkFlags and (1 shl 2)) <> 0;
    bHasMaxVal := (iValChkFlags and (1 shl 3)) <> 0;
    bHasDefVal := (iValChkFlags and (1 shl 4)) <> 0;
    eLKUPType := eALKUPType;
    StrPCopy(szLkupTblName,sLkupTblName);
    FillChar(aMinVal,SizeOf(aMinVal),#0);
    for i := Low(aAMinVal) to High(aAMinVal) do
      aMinVal[i] := aAMinVal[i];
    FillChar(aMaxVal,SizeOf(aMaxVal),#0);
    for i := Low(aAMaxVal) to High(aAMaxVal) do
      aMaxVal[i] := aAMaxVal[i];
    FillChar(aDefVal,SizeOf(aDefVal),#0);
    for i := Low(aADefVal) to High(aADefVal) do
      aDefVal[i] := aADefVal[i];
  end;
  Inc(iValChk);
end;

{______________________________________________________________________________}
procedure DefTable(const sName,sType,sPassword,sLangDriver: string;
                   const iAFldCount,iAIDXCount,iAValChkCount,iARintCount: integer);
begin
  {Get memory - Table}
  TableDesc := AllocMem(SizeOf(CRTblDesc));
  {Get memory - Fields}
  FieldsDesc := AllocMem(iAFldCount*SizeOf(FLDDesc));
  {Get memory - Indexes}
  IndexesDesc := AllocMem(iAIDXCount*SizeOf(IDXDesc));
  IndexesOp := AllocMem(iAIDXCount*SizeOf(CROpType));
  {Get memory - ValChecks}
  ValCheckDesc := AllocMem(iAValChkCount*SizeOf(VCHKDesc));
  ValCheckOp := AllocMem(iAValChkCount*SizeOf(CROpType));
  {Fill records}
  with TableDesc^ do begin
    {Fill record - Table}
    AnsiToNative(Session.Locale,sName,szTblName,length(sName));
    StrPCopy(szTblType,sType);
    bProtected := (sPassword <> '');
    if bProtected then begin
      StrPCopy(szPassword,sPassword);
      Session.AddPassword(sPassword);
    end;
    bPack := true;
    {Fill record - Language Driver}
    iOptParams := 1;
    FillChar(OptParams,SizeOf(FLDDESC),#0);
    with OptParams do begin
      StrPCopy(szName,szCFGDRVLANGDRIVER);
      iOffset := 0;
      iLen := Length(sLangDriver)+1;
    end;
    pFldOptParams := @OptParams;
    LangDrv := sLangDriver;
    pOptData := @LangDrv[1];
    {Fill record - Fields}
    iFldCount := iAFldCount;
    pFldDesc := @FieldsDesc^;
    {Fill record - Indexes}
    iIDXCount := iAIDXCount;
    pIDXDesc := @IndexesDesc^;
    pecrIDXOp := @IndexesOp^;
    {Fill record - ValChecks}
    iValChkCount := iAValChkCount;
    pvchkDesc := @ValCheckDesc^;
    pecrValChkOp := @ValCheckOp^;
  end;
end;

{______________________________________________________________________________}
procedure StoredBrisanje_db;
begin
  DefTable('Brisanje.DB','PARADOX','','slovene',6,2,0,0);
  DefField('Sifra_brisanja',fldINT32,fldstAUTOINC,1,0);
  DefField('Sifra_zahtjeva',fldFLOAT,0,1,0);
  DefField('Broj_brisanja',fldZSTRING,0,30,0);
  DefField('Datum_brisanja',fldDATE,0,1,0);
  DefField('NN',fldZSTRING,0,10,0);
  DefField('Datum_promjene',fldTIMESTAMP,0,1,0);
  DefIndex('','','','','',[1],0,1,4,0,16384,1,22);
  DefIndex('xSifra_zahtjeva','','','','',[2],256,1,8,0,16384,2,144);
end;

{______________________________________________________________________________}
procedure StoredDetalji_povrce_db;
begin
  DefTable('Detalji_povrce.DB','PARADOX','','DBWINUS0',20,2,0,0);
  DefField('Sifra_det_povrce',fldINT32,fldstAUTOINC,1,0);
  DefField('Sifra_zahtjeva',fldFLOAT,0,1,0);
  DefField('Kont_sjetva_od',fldDATE,0,1,0);
  DefField('Kont_sjetva_do',fldDATE,0,1,0);
  DefField('Kont_berba_od',fldDATE,0,1,0);
  DefField('Kont_berba_do',fldDATE,0,1,0);
  DefField('Priob_sjetva_od',fldDATE,0,1,0);
  DefField('Priob_sjetva_do',fldDATE,0,1,0);
  DefField('Priob_berba_od',fldDATE,0,1,0);
  DefField('Priob_berba_do',fldDATE,0,1,0);
  DefField('Grijan_sjetva_od',fldDATE,0,1,0);
  DefField('Grijan_sjetva_do',fldDATE,0,1,0);
  DefField('Grijan_berba_od',fldDATE,0,1,0);
  DefField('Grijan_berba_do',fldDATE,0,1,0);
  DefField('Negri_sjetva_od',fldDATE,0,1,0);
  DefField('Negri_sjetva_do',fldDATE,0,1,0);
  DefField('Negri_berba_od',fldDATE,0,1,0);
  DefField('Negri_berba_do',fldDATE,0,1,0);
  DefField('Preporuceni_sklo',fldZSTRING,0,20,0);
  DefField('Datum_promjene',fldTIMESTAMP,0,1,0);
  DefIndex('','','','','',[1],0,1,4,0,16384,1,22);
  DefIndex('xSifra_zaht','','','','',[2],256,1,8,0,16384,2,148);
end;

{______________________________________________________________________________}
procedure StoredDrugi_zahtjevi17_db;
begin
  DefTable('Drugi_zahtjevi17.DB','PARADOX','','DBWINUS0',7,1,0,0);
  DefField('Sifra_zemlja',fldINT32,fldstAUTOINC,1,0);
  DefField('Sifra_zahtjeva',fldFLOAT,0,1,0);
  DefField('Drzava',fldZSTRING,0,30,0);
  DefField('Registarski_broj',fldZSTRING,0,30,0);
  DefField('Datum',fldDATE,0,1,0);
  DefField('Ime',fldZSTRING,0,30,0);
  DefField('Datum_promjene',fldTIMESTAMP,0,1,0);
  DefIndex('','','','','',[1],0,1,4,0,16384,1,22);
end;

{______________________________________________________________________________}
procedure StoredDrugi_zahtjevi_db;
begin
  DefTable('Drugi_zahtjevi.DB','PARADOX','','slovene',5,1,0,0);
  DefField('Sifra_druga_zemlja',fldINT32,fldstAUTOINC,1,0);
  DefField('Sifra_zahtjeva',fldFLOAT,0,1,0);
  DefField('Podneseni_zahtjevi',fldZSTRING,0,30,0);
  DefField('Godina',fldZSTRING,0,4,0);
  DefField('Datum_promjene',fldTIMESTAMP,0,1,0);
  DefIndex('','','','','',[1],0,1,4,0,16384,1,22);
end;

{______________________________________________________________________________}
procedure StoredDus_db;
begin
  DefTable('DUS.DB','PARADOX','','slovene',8,2,0,0);
  DefField('Sifra_DUS',fldINT32,fldstAUTOINC,1,0);
  DefField('Sifra_zahtjeva',fldFLOAT,0,1,0);
  DefField('Gdje_uradjen',fldZSTRING,0,30,0);
  DefField('I_godina',fldBLOB,fldstMEMO,240,0);
  DefField('II_godina',fldBLOB,fldstMEMO,240,0);
  DefField('Kupljen',fldBOOL,0,1,0);
  DefField('Kada_uradjen',fldZSTRING,0,30,0);
  DefField('Datum_promjene',fldTIMESTAMP,0,1,0);
  DefIndex('','','','','',[1],0,1,4,0,16384,1,22);
  DefIndex('xSifra_zahtjeva','','','','',[2],256,1,8,0,16384,2,144);
end;

{______________________________________________________________________________}
procedure StoredDus_status_db;
begin
  DefTable('DUS_status.DB','PARADOX','','DBWINUS0',2,1,0,0);
  DefField('DUS_oznaka',fldZSTRING,0,5,0);
  DefField('DUS_Status',fldZSTRING,0,40,0);
  DefIndex('','','','','',[1],0,1,5,0,16384,1,22);
end;

{______________________________________________________________________________}
procedure StoredKlase_db;
begin
  DefTable('Klase.DB','PARADOX','','slovene',3,1,0,0);
  DefField('Sifra',fldINT32,fldstAUTOINC,1,0);
  DefField('NazivKlase',fldZSTRING,0,20,0);
  DefField('Datum_Promjene',fldTIMESTAMP,0,1,0);
  DefIndex('','','','','',[1],0,1,4,0,16384,1,22);
end;

{______________________________________________________________________________}
procedure StoredKontakti_db;
begin
  DefTable('Kontakti.DB','PARADOX','','DBWINUS0',8,1,0,0);
  DefField('Sifra_Kontakta',fldINT32,fldstAUTOINC,1,0);
  DefField('Sifra_partnera',fldINT16,0,1,0);
  DefField('Ime_kontakta',fldZSTRING,0,30,0);
  DefField('Prezime_kontakta',fldZSTRING,0,30,0);
  DefField('Telefon',fldZSTRING,0,15,0);
  DefField('Mobitel',fldZSTRING,0,15,0);
  DefField('Email',fldZSTRING,0,60,0);
  DefField('Datum_promjene',fldTIMESTAMP,0,1,0);
  DefIndex('','','','','',[1],0,1,4,0,16384,1,22);
end;

{______________________________________________________________________________}
procedure StoredKorisnici_db;
begin
  DefTable('Korisnici.DB','PARADOX','','DBWINUS0',4,1,0,0);
  DefField('Sifra',fldINT32,fldstAUTOINC,1,0);
  DefField('LoginName',fldZSTRING,0,20,0);
  DefField('Password',fldZSTRING,0,20,0);
  DefField('Level',fldFLOAT,0,1,0);
  DefIndex('','','','','',[1],0,1,4,0,16384,1,22);
end;

{______________________________________________________________________________}
procedure StoredLicencija_db;
begin
  DefTable('Licencija.DB','PARADOX','','DBWINUS0',10,2,0,0);
  DefField('Sifra_licencije',fldINT32,fldstAUTOINC,1,0);
  DefField('Sifra_partnera',fldFLOAT,0,1,0);
  DefField('Sifra_sorte',fldFLOAT,0,1,0);
  DefField('Uvjeti_dodjele',fldZSTRING,0,30,0);
  DefField('Broj_ugovora',fldZSTRING,0,15,0);
  DefField('Datum_ugovora',fldDATE,0,1,0);
  DefField('Datum_prestanka',fldDATE,0,1,0);
  DefField('Trajanje_licencije',fldZSTRING,0,20,0);
  DefField('Opseg_licencije',fldZSTRING,0,40,0);
  DefField('Datum_promjene',fldTIMESTAMP,0,1,0);
  DefIndex('','','','','',[1],0,1,4,0,16384,1,22);
  DefIndex('ix_Sifra_sorte','','','','',[3],256,1,8,0,16384,2,144);
end;

{______________________________________________________________________________}
procedure StoredNaknada_odrzavanje_db;
begin
  DefTable('Naknada_odrzavanje.DB','PARADOX','','slovene',24,2,0,0);
  DefField('Sifra_odrzavanja',fldINT32,fldstAUTOINC,1,0);
  DefField('Sifra_zahtjeva',fldFLOAT,0,1,0);
  DefField('God1',fldZSTRING,0,1,0);
  DefField('God2',fldZSTRING,0,1,0);
  DefField('God3',fldZSTRING,0,1,0);
  DefField('God4',fldZSTRING,0,1,0);
  DefField('God5',fldZSTRING,0,1,0);
  DefField('God6',fldZSTRING,0,1,0);
  DefField('God7',fldZSTRING,0,1,0);
  DefField('God8',fldZSTRING,0,1,0);
  DefField('God9',fldZSTRING,0,1,0);
  DefField('God10',fldZSTRING,0,1,0);
  DefField('Prekid',fldZSTRING,0,2,0);
  DefField('God11',fldZSTRING,0,1,0);
  DefField('God12',fldZSTRING,0,1,0);
  DefField('God13',fldZSTRING,0,1,0);
  DefField('God14',fldZSTRING,0,1,0);
  DefField('God15',fldZSTRING,0,1,0);
  DefField('God16',fldZSTRING,0,1,0);
  DefField('God17',fldZSTRING,0,1,0);
  DefField('God18',fldZSTRING,0,1,0);
  DefField('God19',fldZSTRING,0,1,0);
  DefField('God20',fldZSTRING,0,1,0);
  DefField('Datum_promjene',fldTIMESTAMP,0,1,0);
  DefIndex('','','','','',[1],0,1,4,0,16384,1,22);
  DefIndex('xSifra_zahtjeva','','','','',[2],256,1,8,0,16384,2,144);
end;

{______________________________________________________________________________}
procedure StoredNalog_db;
begin
  DefTable('Nalog.DB','PARADOX','','DBWINUS0',7,1,0,0);
  DefField('Sifra_naloga',fldINT32,fldstAUTOINC,1,0);
  DefField('Broj_naloga',fldINT32,0,1,0);
  DefField('Godina_naloga',fldZSTRING,0,4,0);
  DefField('Datum_izdavanja',fldDATE,0,1,0);
  DefField('Sifra_partnera',fldINT16,0,1,0);
  DefField('Napomena',fldZSTRING,0,100,0);
  DefField('Datum_izmjene',fldTIMESTAMP,0,1,0);
  DefIndex('','','','','',[1],0,1,4,0,16384,1,22);
end;

{______________________________________________________________________________}
procedure StoredNamjena_db;
begin
  DefTable('Namjena.DB','PARADOX','','DBWINUS0',2,1,0,0);
  DefField('SifraNamjene',fldINT32,fldstAUTOINC,1,0);
  DefField('Namjena',fldBLOB,fldstMEMO,240,0);
  DefIndex('','','','','',[1],0,1,4,0,16384,1,22);
end;

{______________________________________________________________________________}
procedure StoredNepriznavanje_db;
begin
  DefTable('NePriznavanje.DB','PARADOX','','slovene',6,2,0,0);
  DefField('Sifra_priznavanja',fldINT32,fldstAUTOINC,1,0);
  DefField('Sifra_zahtjeva',fldFLOAT,0,1,0);
  DefField('Broj_priznavanja',fldZSTRING,0,30,0);
  DefField('Datum_priznavanja',fldDATE,0,1,0);
  DefField('NN',fldZSTRING,0,10,0);
  DefField('Datum_promjene',fldTIMESTAMP,0,1,0);
  DefIndex('','','','','',[1],0,1,4,0,16384,1,22);
  DefIndex('xSifra_zahtjeva','','','','',[2],256,1,8,0,16384,2,144);
end;

{______________________________________________________________________________}
procedure StoredOdjel_partnera_db;
begin
  DefTable('Odjel_partnera.DB','PARADOX','','DBWINUS0',4,1,2,0);
  DefField('Sifra',fldINT32,fldstAUTOINC,1,0);
  DefField('Sifra_Partnera',fldINT16,0,1,0);
  DefField('Naziv_Odjela',fldZSTRING,0,30,0);
  DefField('Datum_promjene',fldTIMESTAMP,0,1,0);
  DefIndex('','','','','',[1],0,1,4,0,16384,1,22);
  DefValCheck(2,2,[0],[0],[0],'','',lkupNONE);
  DefValCheck(3,2,[0],[0],[0],'','',lkupNONE);
end;

{______________________________________________________________________________}
procedure StoredOdrzavanje_db;
begin
  DefTable('Odrzavanje.DB','PARADOX','','slovene',6,2,0,0);
  DefField('Sifra_odrzavanje',fldINT32,fldstAUTOINC,1,0);
  DefField('Sifra_zahtjeva',fldFLOAT,0,1,0);
  DefField('Broj_rjesenja',fldZSTRING,0,30,0);
  DefField('Datum_rjesenja',fldDATE,0,1,0);
  DefField('NN',fldZSTRING,0,10,0);
  DefField('Datum_promjene',fldTIMESTAMP,0,1,0);
  DefIndex('','','','','',[1],0,1,4,0,16384,1,22);
  DefIndex('xSifra_zahtjeva','','','','',[2],256,1,8,0,16384,2,144);
end;

{______________________________________________________________________________}
procedure StoredOtpornost_povrca_db;
begin
  DefTable('Otpornost_povrca.DB','PARADOX','','DBWINUS0',5,1,0,0);
  DefField('Sifra_otpornost',fldINT32,fldstAUTOINC,1,0);
  DefField('Sifra_zahtjeva',fldFLOAT,0,1,0);
  DefField('Bolest_stetnik',fldZSTRING,0,30,0);
  DefField('Tolerantnost',fldBOOL,0,1,0);
  DefField('Rezistentnost',fldBOOL,0,1,0);
  DefIndex('','','','','',[1],0,1,4,0,16384,1,22);
end;

{______________________________________________________________________________}
procedure StoredPartner_db;
begin
  DefTable('Partner.DB','PARADOX','','slovene',12,2,0,0);
  DefField('Sifra_partnera',fldINT32,fldstAUTOINC,1,0);
  DefField('Ime_partnera',fldZSTRING,0,60,0);
  DefField('Adresa',fldZSTRING,0,60,0);
  DefField('Mjesto',fldZSTRING,0,25,0);
  DefField('Drzava',fldZSTRING,0,15,0);
  DefField('Telefon1',fldZSTRING,0,15,0);
  DefField('Telefon2',fldZSTRING,0,15,0);
  DefField('Fax',fldZSTRING,0,15,0);
  DefField('Email',fldZSTRING,0,60,0);
  DefField('Kratica',fldZSTRING,0,5,0);
  DefField('Mobilni_tel',fldZSTRING,0,15,0);
  DefField('Datum_promjene',fldTIMESTAMP,0,1,0);
  DefIndex('','','','','',[1],0,1,4,0,16384,1,22);
  DefIndex('ixNaziv','','','','',[2],256,1,60,0,16384,2,144);
end;

{______________________________________________________________________________}
procedure StoredPravo_db;
begin
  DefTable('Pravo.DB','PARADOX','','slovene',6,2,0,0);
  DefField('Sifra_prava',fldINT32,fldstAUTOINC,1,0);
  DefField('Sifra_zahtjeva',fldFLOAT,0,1,0);
  DefField('Broj_prava',fldZSTRING,0,30,0);
  DefField('Datum_prava',fldDATE,0,1,0);
  DefField('NN',fldZSTRING,0,10,0);
  DefField('Datum_promjene',fldTIMESTAMP,0,1,0);
  DefIndex('','','','','',[1],0,1,4,0,16384,1,22);
  DefIndex('xSifra_zahtjeva','','','','',[2],256,1,8,0,16384,2,144);
end;

{______________________________________________________________________________}
procedure StoredPriznanje_pb_db;
begin
  DefTable('Priznanje_PB.DB','PARADOX','','slovene',31,2,0,0);
  DefField('Sifra_zahtjeva',fldINT32,fldstAUTOINC,1,0);
  DefField('Sifra_dok',fldINT16,0,1,0);
  DefField('Upisni_broj',fldZSTRING,0,6,0);
  DefField('Datum_prijavljivanja',fldDATE,0,1,0);
  DefField('Sifra_podnositelja',fldFLOAT,0,1,0);
  DefField('Sifra_oplemenjivaca',fldFLOAT,0,1,0);
  DefField('Sifra_druga_zemlja',fldFLOAT,0,1,0);
  DefField('Sifra_priznata_u',fldFLOAT,0,1,0);
  DefField('Sifra_priznata',fldFLOAT,0,1,0);
  DefField('Sifra_zasticena',fldFLOAT,0,1,0);
  DefField('Sifra_vlasnik',fldFLOAT,0,1,0);
  DefField('Sifra_odrzivac',fldFLOAT,0,1,0);
  DefField('Tehnicki_upitnik',fldBOOL,0,1,0);
  DefField('Punomoc',fldBOOL,0,1,0);
  DefField('VCU_oznaka',fldZSTRING,0,5,0);
  DefField('DUS_oznaka',fldZSTRING,0,5,0);
  DefField('Tip_zahtjeva',fldINT16,0,1,0);
  DefField('Sifra_vrste',fldFLOAT,0,1,0);
  DefField('Sifra_klase',fldINT16,0,1,0);
  DefField('Oznaka_sorte',fldZSTRING,0,30,0);
  DefField('Ime_sorte',fldZSTRING,0,30,0);
  DefField('Namjena',fldBLOB,fldstMEMO,240,0);
  DefField('NamPov1',fldBOOL,0,1,0);
  DefField('NamPov2',fldBOOL,0,1,0);
  DefField('NamPov3',fldBOOL,0,1,0);
  DefField('Registriranu_u',fldZSTRING,0,30,0);
  DefField('Dok_registracije',fldZSTRING,0,20,0);
  DefField('Kontakt',fldINT16,0,1,0);
  DefField('Sastojci',fldBLOB,fldstMEMO,100,0);
  DefField('Opis',fldBLOB,fldstMEMO,100,0);
  DefField('Datum_promjene',fldTIMESTAMP,0,1,0);
  DefIndex('','','','','',[1],0,1,4,0,16384,1,22);
  DefIndex('ixOznakaKlasa','','','','',[20,19],256,2,32,0,16384,2,148);
end;

{______________________________________________________________________________}
procedure StoredPriznata_u_db;
begin
  DefTable('Priznata_u.DB','PARADOX','','slovene',5,1,0,0);
  DefField('Sifra_priznata',fldINT32,fldstAUTOINC,1,0);
  DefField('Sifra_zahtjeva',fldFLOAT,0,1,0);
  DefField('Drzava',fldZSTRING,0,20,0);
  DefField('Godina',fldZSTRING,0,4,0);
  DefField('Datum_promjene',fldTIMESTAMP,0,1,0);
  DefIndex('','','','','',[1],0,1,4,0,16384,1,22);
end;

{______________________________________________________________________________}
procedure StoredPriznavanje_db;
begin
  DefTable('Priznavanje.DB','PARADOX','','slovene',6,2,0,0);
  DefField('Sifra_priznavanja',fldINT32,fldstAUTOINC,1,0);
  DefField('Sifra_zahtjeva',fldFLOAT,0,1,0);
  DefField('Broj_priznavanja',fldZSTRING,0,30,0);
  DefField('Datum_priznavanja',fldDATE,0,1,0);
  DefField('NN',fldZSTRING,0,10,0);
  DefField('Datum_promjene',fldTIMESTAMP,0,1,0);
  DefIndex('','','','','',[1],0,1,4,0,16384,1,22);
  DefIndex('xSifra_zahtjeva','','','','',[2],256,1,8,0,16384,2,144);
end;

{______________________________________________________________________________}
procedure StoredSetup_db;
begin
  DefTable('SetUp.DB','PARADOX','','DBWINUS0',16,0,0,0);
  DefField('Naziv1',fldZSTRING,0,40,0);
  DefField('Naziv2',fldZSTRING,0,40,0);
  DefField('Adresa1',fldZSTRING,0,40,0);
  DefField('Adresa2',fldZSTRING,0,40,0);
  DefField('Telefon',fldZSTRING,0,20,0);
  DefField('PathHDD',fldZSTRING,0,40,0);
  DefField('PathFloppy',fldZSTRING,0,5,0);
  DefField('INIpath',fldZSTRING,0,40,0);
  DefField('Reportpath',fldZSTRING,0,40,0);
  DefField('ZadnjiputSnimano',fldTIMESTAMP,0,1,0);
  DefField('PathUvjerenja',fldZSTRING,0,40,0);
  DefField('PDV',fldINT16,0,1,0);
  DefField('Rjesenje1',fldZSTRING,0,20,0);
  DefField('Rjesenje2',fldZSTRING,0,20,0);
  DefField('Rjesenje3',fldZSTRING,0,20,0);
  DefField('Rjesenje4',fldZSTRING,0,20,0);
end;

{______________________________________________________________________________}
procedure StoredStavke_naloga_db;
begin
  DefTable('Stavke_naloga.DB','PARADOX','','DBWINUS0',7,2,0,0);
  DefField('Sifra_stavke',fldINT32,fldstAUTOINC,1,0);
  DefField('Sifra_naloga',fldINT32,0,1,0);
  DefField('Sifra_zahtjeva',fldINT16,0,1,0);
  DefField('Cijena_stavke',fldFLOAT,fldstMONEY,1,0);
  DefField('Avans',fldINT16,0,1,0);
  DefField('PDV',fldINT16,0,1,0);
  DefField('Sifra_placanja',fldZSTRING,0,2,0);
  DefIndex('','','','','',[1],0,1,4,0,16384,1,22);
  DefIndex('ixSifra_naloga','','','','',[2],256,1,4,0,16384,2,144);
end;

{______________________________________________________________________________}
procedure StoredTip_sorte_db;
begin
  DefTable('Tip_sorte.DB','PARADOX','','slovene',2,1,0,0);
  DefField('Sifra_tipa_sorte',fldINT16,0,1,0);
  DefField('Naziv_tipa_sorte',fldZSTRING,0,50,0);
  DefIndex('','','','','',[1],0,1,2,0,16384,1,22);
end;

{______________________________________________________________________________}
procedure StoredUpisnik_detail_db;
begin
  DefTable('Upisnik_detail.DB','PARADOX','','DBWINUS0',33,1,0,0);
  DefField('Sifra_detail',fldINT32,fldstAUTOINC,1,0);
  DefField('Sifra_upisnika',fldFLOAT,0,1,0);
  DefField('Jedinstvena_oznaka',fldZSTRING,0,20,0);
  DefField('Predaja_zahtjeva',fldTIMESTAMP,0,1,0);
  DefField('Primljen_zahtjev',fldTIMESTAMP,0,1,0);
  DefField('Broj_objave',fldZSTRING,0,10,0);
  DefField('Datum_objave',fldDATE,0,1,0);
  DefField('Promjene_zahtjeva_ZS',fldBLOB,fldstMEMO,50,0);
  DefField('Datum_zaklj_obust',fldDATE,0,1,0);
  DefField('Datum_rje_zast',fldDATE,0,1,0);
  DefField('Datum_rje_odbi',fldDATE,0,1,0);
  DefField('Sud_predaja_zaht',fldBLOB,fldstMEMO,50,0);
  DefField('Sifra_nositelja_OP',fldFLOAT,0,1,0);
  DefField('Sifra_2osoba_prenos',fldFLOAT,0,1,0);
  DefField('Sifra_2osoba_ustup',fldFLOAT,0,1,0);
  DefField('Naknada_ustup_OP',fldFLOAT,fldstMONEY,1,0);
  DefField('Sifra_licencije',fldFLOAT,0,1,0);
  DefField('Broj_rje_SOP',fldZSTRING,0,10,0);
  DefField('Datum_rje_SOP',fldDATE,0,1,0);
  DefField('Broj_ispr_SOP',fldZSTRING,0,10,0);
  DefField('Datum_ispr_SOP',fldDATE,0,1,0);
  DefField('Datum_prest_zast',fldDATE,0,1,0);
  DefField('Broj_ukidanja_SOP',fldZSTRING,0,10,0);
  DefField('Datum_ukidanja_SOP',fldDATE,0,1,0);
  DefField('Sud_OP',fldBLOB,fldstMEMO,50,0);
  DefField('Promjene_upisnika_OP',fldBLOB,fldstMEMO,50,0);
  DefField('Djelomicno_OP',fldZSTRING,0,20,0);
  DefField('Upotpunosti_OP',fldZSTRING,0,20,0);
  DefField('Broj_ugovora_POP',fldZSTRING,0,10,0);
  DefField('Datum_ugovora_POP',fldDATE,0,1,0);
  DefField('Sadrzaj_POP',fldZSTRING,0,50,0);
  DefField('Broj_ugovora_POP3',fldZSTRING,0,10,0);
  DefField('Datum_ugovora_POP3',fldDATE,0,1,0);
  DefIndex('','','','','',[1],0,1,4,0,16384,1,22);
end;

{______________________________________________________________________________}
procedure StoredVcu_db;
begin
  DefTable('VCU.DB','PARADOX','','DBWINUS0',6,2,0,0);
  DefField('Sifra_VCU',fldINT32,fldstAUTOINC,1,0);
  DefField('Sifra_zahtjeva',fldFLOAT,0,1,0);
  DefField('VCU1',fldBLOB,fldstMEMO,240,0);
  DefField('VCU2',fldBLOB,fldstMEMO,240,0);
  DefField('VCU3',fldBLOB,fldstMEMO,240,0);
  DefField('Datum_promjene',fldTIMESTAMP,0,1,0);
  DefIndex('','','','','',[1],0,1,4,0,16384,1,22);
  DefIndex('xSifra_zahtjeva','','','','',[2],256,1,8,0,16384,2,144);
end;

{______________________________________________________________________________}
procedure StoredVcu_status_db;
begin
  DefTable('VCU_status.DB','PARADOX','','DBWINUS0',3,1,1,0);
  DefField('VCU_oznaka',fldZSTRING,0,5,0);
  DefField('VCU_Status',fldZSTRING,0,40,0);
  DefField('Boja',fldZSTRING,0,10,0);
  DefIndex('','','','','',[1],0,1,5,0,16384,1,22);
  DefValCheck(3,16,[0],[0],[48],'','',lkupNONE);
end;

{______________________________________________________________________________}
procedure StoredVrsta_db;
begin
  DefTable('Vrsta.DB','PARADOX','','slovene',14,3,1,0);
  DefField('Sifra_vrste',fldINT32,fldstAUTOINC,1,0);
  DefField('Klasa',fldINT16,0,1,0);
  DefField('Vrsta_hrv',fldZSTRING,0,30,0);
  DefField('Vrsta_lat',fldZSTRING,0,120,0);
  DefField('Vrsta_eng',fldZSTRING,0,30,0);
  DefField('Napomena',fldBLOB,fldstMEMO,50,0);
  DefField('Tip_vrste',fldINT16,0,1,0);
  DefField('Datum_promjene',fldTIMESTAMP,0,1,0);
  DefField('VCU1_cijena',fldFLOAT,fldstMONEY,1,0);
  DefField('VCU2_cijena',fldFLOAT,fldstMONEY,1,0);
  DefField('VCU3_cijena',fldFLOAT,fldstMONEY,1,0);
  DefField('DUS1_cijena',fldFLOAT,fldstMONEY,1,0);
  DefField('DUS2_cijena',fldFLOAT,fldstMONEY,1,0);
  DefField('DIzv_cijena',fldFLOAT,fldstMONEY,1,0);
  DefIndex('','','','','',[1],0,1,4,0,16384,1,22);
  DefIndex('ixNazivHR','','','','',[3],257,1,30,0,16384,2,148);
  DefIndex('ixVrstaKlasa','','','','',[1,2],256,2,6,0,16384,3,144);
  DefValCheck(3,2,[0],[0],[0],'','',lkupNONE);
end;

{______________________________________________________________________________}
procedure StoredVrsta_dokumenta_db;
begin
  DefTable('Vrsta_dokumenta.DB','PARADOX','','DBWINUS0',2,1,0,0);
  DefField('Tip_dok',fldINT16,0,1,0);
  DefField('Naziv_dokumenta',fldZSTRING,0,80,0);
  DefIndex('','','','','',[1],0,1,2,0,16384,1,22);
end;

{______________________________________________________________________________}
procedure StoredVrsta_placanja_db;
begin
  DefTable('Vrsta_placanja.DB','PARADOX','','DBWINUS0',2,1,0,0);
  DefField('Sifra_placanja',fldZSTRING,0,2,0);
  DefField('Naziv_placanja',fldZSTRING,0,30,0);
  DefIndex('','','','','',[1],0,1,2,0,16384,1,22);
end;

{______________________________________________________________________________}
procedure StoredZahtjev_pravo_db;
begin
  DefTable('Zahtjev_Pravo.DB','PARADOX','','DBWINUS0',20,1,0,0);
  DefField('Sifra_zahtjeva',fldINT32,fldstAUTOINC,1,0);
  DefField('Sifra_dok',fldINT16,0,1,0);
  DefField('Upisni_broj',fldZSTRING,0,6,0);
  DefField('Datum_prijavljivanja',fldTIMESTAMP,0,1,0);
  DefField('Sifra_podnositelja',fldFLOAT,0,1,0);
  DefField('Sifra_oplemenjivaca',fldFLOAT,0,1,0);
  DefField('Ime_zastupnika',fldZSTRING,0,50,0);
  DefField('Adresa_zastupnika',fldZSTRING,0,50,0);
  DefField('Sifra_ZPriznavanja',fldFLOAT,0,1,0);
  DefField('Maticna_zemlja',fldZSTRING,0,30,0);
  DefField('Koristena_prodavana',fldBOOL,0,1,0);
  DefField('Koja_zemlja',fldZSTRING,0,30,0);
  DefField('Datum_kor_prod',fldDATE,0,1,0);
  DefField('Koji_uvjeti',fldZSTRING,0,50,0);
  DefField('Podnositeljev_pristanak',fldBOOL,0,1,0);
  DefField('Sifra_druga_zemlja',fldFLOAT,0,1,0);
  DefField('Pravo_za_zahtjev',fldBOOL,0,1,0);
  DefField('Koji_zahtjev',fldZSTRING,0,60,0);
  DefField('Dokumenti',fldZSTRING,0,100,0);
  DefField('Datum_promjene',fldTIMESTAMP,0,1,0);
  DefIndex('','','','','',[1],0,1,4,0,16384,1,22);
end;

{______________________________________________________________________________}
procedure StoredZasticena_db;
begin
  DefTable('Zasticena.DB','PARADOX','','slovene',6,1,0,0);
  DefField('Sifra_zasticena',fldINT32,fldstAUTOINC,1,0);
  DefField('Sifra_zahtjeva',fldFLOAT,0,1,0);
  DefField('Drzava',fldZSTRING,0,20,0);
  DefField('Ime',fldZSTRING,0,20,0);
  DefField('Godina',fldZSTRING,0,4,0);
  DefField('Datum_promjene',fldTIMESTAMP,0,1,0);
  DefIndex('','','','','',[1],0,1,4,0,16384,1,22);
end;

{______________________________________________________________________________}
procedure StoredZastupnik_db;
begin
  DefTable('Zastupnik.DB','PARADOX','','DBWINUS0',6,1,0,0);
  DefField('Sifra_zastupnika',fldINT32,fldstAUTOINC,1,0);
  DefField('Sifra_partnera',fldFLOAT,0,1,0);
  DefField('Sifra_zahtjeva',fldFLOAT,0,1,0);
  DefField('Predmet_zastupanja',fldZSTRING,0,30,0);
  DefField('Sadrzaj_zastupanja',fldZSTRING,0,30,0);
  DefField('Promjene_upisa',fldZSTRING,0,30,0);
  DefIndex('','','','','',[1],0,1,4,0,16384,1,22);
end;

{______________________________________________________________________________}
procedure ReadStoredTable(iTable: Stored_Tables);
begin
  iField  := 0;
  iIndex  := 0;
  iValChk := 0;
  case iTable of
    Brisanje_db          : StoredBrisanje_db;
    Detalji_povrce_db    : StoredDetalji_povrce_db;
    Drugi_zahtjevi17_db  : StoredDrugi_zahtjevi17_db;
    Drugi_zahtjevi_db    : StoredDrugi_zahtjevi_db;
    Dus_db               : StoredDus_db;
    Dus_status_db        : StoredDus_status_db;
    Klase_db             : StoredKlase_db;
    Kontakti_db          : StoredKontakti_db;
    Korisnici_db         : StoredKorisnici_db;
    Licencija_db         : StoredLicencija_db;
    Naknada_odrzavanje_db: StoredNaknada_odrzavanje_db;
    Nalog_db             : StoredNalog_db;
    Namjena_db           : StoredNamjena_db;
    Nepriznavanje_db     : StoredNepriznavanje_db;
    Odjel_partnera_db    : StoredOdjel_partnera_db;
    Odrzavanje_db        : StoredOdrzavanje_db;
    Otpornost_povrca_db  : StoredOtpornost_povrca_db;
    Partner_db           : StoredPartner_db;
    Pravo_db             : StoredPravo_db;
    Priznanje_pb_db      : StoredPriznanje_pb_db;
    Priznata_u_db        : StoredPriznata_u_db;
    Priznavanje_db       : StoredPriznavanje_db;
    Setup_db             : StoredSetup_db;
    Stavke_naloga_db     : StoredStavke_naloga_db;
    Tip_sorte_db         : StoredTip_sorte_db;
    Upisnik_detail_db    : StoredUpisnik_detail_db;
    Vcu_db               : StoredVcu_db;
    Vcu_status_db        : StoredVcu_status_db;
    Vrsta_db             : StoredVrsta_db;
    Vrsta_dokumenta_db   : StoredVrsta_dokumenta_db;
    Vrsta_placanja_db    : StoredVrsta_placanja_db;
    Zahtjev_pravo_db     : StoredZahtjev_pravo_db;
    Zasticena_db         : StoredZasticena_db;
    Zastupnik_db         : StoredZastupnik_db;
  end;
end;

{______________________________________________________________________________}
procedure MakeAllTables(dbDatabase: TDatabase; CBInfo: TCBInfo);
var
  i: integer;
  DatasetList: TList;
  iTables: Stored_Tables;
begin
  if Assigned(CBInfo) and not CBInfo(0,Ord(High(iTables))+1,'') then
    Exit;
  Screen.Cursor := crHourGlass;
  DatasetList := TList.Create;
  try
    for i := Session.DatabaseCount-1 downto 0 do
      with Session.Databases[i] do
      while DatasetCount > 0 do begin
        DatasetList.Add(Datasets[0]);
        with Datasets[0] do begin
          DisableControls;
          Close;
        end;
      end;
    dbDatabase.Connected := true;
    Check(DbiGetDirectory(dbDatabase.Handle,False,szDirectory));
    {$IFNDEF WIN32}
    if szDirectory[StrLen(szDirectory)-1] <> '\' then
      szDirectory[StrLen(szDirectory)] := '\';
    {$ENDIF}
    for iTables := Low(iTables) to High(iTables) do try
      ReadStoredTable(iTables);
      if Assigned(CBInfo) and not CBInfo(Ord(iTables)+1,Ord(High(iTables))+1,AnsiName(TableDesc^.szTblName)) then
        Exit;
      if DBICreateTable(dbDatabase.Handle,false,TableDesc^) = DBIERR_FILEEXISTS then begin
        i := TableDesc^.iFldCount;
        try
          TableDesc^.iFldCount := 0;
          DeleteAuxFiles;
          Check(DBIDoRestructure(dbDatabase.Handle,1,@TableDesc^,nil,nil,nil,false));
        finally;
          TableDesc^.iFldCount := i;
        end;
      end;
    finally;
      FreeMem(FieldsDesc,TableDesc^.iFldCount*SizeOf(FLDDesc)); FieldsDesc := nil;
      FreeMem(IndexesOp,TableDesc^.iIDXCount*SizeOf(CROpType)); IndexesOp := nil;
      FreeMem(IndexesDesc,TableDesc^.iIDXCount*SizeOf(IDXDesc)); IndexesDesc := nil;
      FreeMem(ValCheckOp,TableDesc^.iValChkCount*SizeOf(CROpType)); ValCheckOp := nil;
      FreeMem(ValCheckDesc,TableDesc^.iValChkCount*SizeOf(VCHKDesc)); ValCheckDesc := nil;
      FreeMem(TableDesc,SizeOf(CRTblDesc)); TableDesc := nil;
    end;
  finally
    for i := DatasetList.Count-1 downto 0 do
      with TDBDataset(DatasetList[i]) do try
        Open;
        EnableControls;
      except
      end;
    DatasetList.Free;
    Screen.Cursor := crDefault;
  end;
end;

end.
