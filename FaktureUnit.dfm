object FFakture: TFFakture
  Left = 135
  Top = 264
  Width = 889
  Height = 424
  Caption = 'Nalog za fakturiranje'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 17
    Width = 881
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object dxEdit45: TdxEdit
      Left = 0
      Top = 10
      Width = 73
      Color = clMenu
      Enabled = False
      Style.BorderStyle = xbsNone
      Style.Edges = []
      Style.Shadow = False
      TabOrder = 0
      Text = 'Vlasnik sorte:'
      Alignment = taRightJustify
      StoredValues = 1
    end
    object wwDBLookupCombo1: TwwDBLookupCombo
      Left = 72
      Top = 10
      Width = 193
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'ime_partnera'#9'30'#9'ime partnera'#9#9
        'mjesto'#9'25'#9'mjesto'#9#9
        'drzava'#9'15'#9'dr'#382'ava'#9#9)
      LookupTable = qPartner
      LookupField = 'sifra'
      Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      ShowMatchText = True
      OnCloseUp = wwDBLookupCombo1CloseUp
      OnKeyDown = wwDBLookupCombo1KeyDown
    end
    object Panel4: TPanel
      Left = 576
      Top = 0
      Width = 305
      Height = 40
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      Visible = False
      object dxEdit1: TdxEdit
        Left = 0
        Top = 10
        Width = 41
        Color = clMenu
        Enabled = False
        Style.BorderStyle = xbsNone
        Style.Edges = []
        Style.Shadow = False
        TabOrder = 0
        Text = 'VCU:'
        Alignment = taRightJustify
        StoredValues = 1
      end
      object wwDBLookupCombo2: TwwDBLookupCombo
        Tag = 1
        Left = 40
        Top = 10
        Width = 73
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'VCU_oznaka'#9'5'#9'Oznaka'#9'F'#9
          'VCU_Status'#9'40'#9'VCU'#9'F'#9)
        LookupTable = tVCU
        LookupField = 'VCU_oznaka'
        Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
        TabOrder = 1
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        ShowMatchText = True
        OnChange = Selektiraj
      end
      object dxEdit2: TdxEdit
        Left = 112
        Top = 10
        Width = 41
        Color = clMenu
        Enabled = False
        Style.BorderStyle = xbsNone
        Style.Edges = []
        Style.Shadow = False
        TabOrder = 2
        Text = 'DUS:'
        Alignment = taRightJustify
        StoredValues = 1
      end
      object wwDBLookupCombo3: TwwDBLookupCombo
        Tag = 2
        Left = 152
        Top = 10
        Width = 73
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DUS_oznaka'#9'5'#9'Oznaka'#9'F'#9
          'DUS_Status'#9'40'#9'DUS'#9'F')
        LookupTable = tDUS
        LookupField = 'DUS_oznaka'
        Options = [loColLines, loRowLines, loTitles, loSearchOnBackspace]
        TabOrder = 3
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        ShowMatchText = True
        OnChange = Selektiraj
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 57
    Width = 881
    Height = 321
    Align = alClient
    TabOrder = 2
    object dxDBGrid2: TdxDBGrid
      Left = 1
      Top = 1
      Width = 879
      Height = 319
      Bands = <
        item
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'sifra_vrste'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 0
      OnKeyDown = dxDBGrid2KeyDown
      DataSource = dsMemo
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMouseScroll, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSmartRefresh, edgoSmartReload, edgoSyncSelection, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      object dxDBGrid2Check: TdxDBGridCheckColumn
        Alignment = taCenter
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        HeaderAlignment = taCenter
        Width = 23
        BandIndex = 0
        RowIndex = 0
        FieldName = 'aaaa'
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object dxDBGrid2vrsta_hrv: TdxDBGridColumn
        Width = 184
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lookHrv'
      end
      object dxDBGrid2vrsta_lat: TdxDBGridColumn
        Width = 302
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lookLat'
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 881
    Height = 321
    Align = alClient
    TabOrder = 1
    Visible = False
    object dxDBGrid1: TdxDBGrid
      Left = 1
      Top = 1
      Width = 879
      Height = 319
      Bands = <
        item
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'sifra_zahtjeva'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 0
      OnKeyDown = dxDBGrid1KeyDown
      DataSource = dsMemo2
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMouseScroll, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSmartRefresh, edgoSmartReload, edgoSyncSelection, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      OnCustomDrawCell = dxDBGrid1CustomDrawCell
      object dxDBGrid1aaaa: TdxDBGridCheckColumn
        Alignment = taCenter
        HeaderAlignment = taCenter
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'aaaa'
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object dxDBGrid1bbbb: TdxDBGridCheckColumn
        Alignment = taCenter
        HeaderAlignment = taCenter
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'bbbb'
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object dxDBGrid1cccc: TdxDBGridCheckColumn
        Alignment = taCenter
        HeaderAlignment = taCenter
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'cccc'
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object dxDBGrid1oznaka_sorte: TdxDBGridMaskColumn
        Caption = 'Oznaka sorte'
        DisableEditor = True
        Width = 187
        BandIndex = 0
        RowIndex = 0
        FieldName = 'oznaka_sorte'
      end
      object dxDBGrid1ime_sorte: TdxDBGridMaskColumn
        Caption = 'Ime sorte'
        DisableEditor = True
        Width = 187
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ime_sorte'
      end
      object dxDBGrid1VCU_oznaka: TdxDBGridMaskColumn
        DisableEditor = True
        Width = 34
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VCU_oznaka'
      end
      object dxDBGrid1DUS_oznaka: TdxDBGridColumn
        DisableEditor = True
        Width = 34
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DUS_oznaka'
      end
      object dxDBGrid1CijenaVCU: TdxDBGridCurrencyColumn
        Alignment = taRightJustify
        HeaderAlignment = taCenter
        ReadOnly = True
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'cijenaVCU'
        DisplayFormat = ',0.00 kn'
        Nullable = False
      end
      object dxDBGrid1CijenaDUS: TdxDBGridCurrencyColumn
        Alignment = taRightJustify
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'cijenaDUS'
        DisplayFormat = ',0.00 kn'
        Nullable = False
      end
      object dxDBGrid1CijenaDIz: TdxDBGridCurrencyColumn
        Alignment = taRightJustify
        HeaderAlignment = taCenter
        Width = 58
        BandIndex = 0
        RowIndex = 0
        FieldName = 'look_DIzv_c'
        DisplayFormat = ',0.00 kn'
        Nullable = False
      end
      object dxDBGrid1Iznos: TdxDBGridCurrencyColumn
        HeaderAlignment = taCenter
        ReadOnly = True
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'iznos'
        SummaryFooterType = cstSum
        SummaryFooterField = 'iznos'
        SummaryFooterFormat = '0,.00#'
        DisplayFormat = ',0.00 kn'
        Nullable = False
      end
      object dxDBGrid1VCUAvans: TdxDBGridPickColumn
        Caption = 'VCU av'
        HeaderAlignment = taCenter
        Width = 45
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VCUavans'
        Items.Strings = (
          '50'
          '100')
      end
      object dxDBGrid1DUSAvans: TdxDBGridPickColumn
        Caption = 'DUS av'
        HeaderAlignment = taCenter
        Width = 45
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DUSavans'
        Items.Strings = (
          '50'
          '100')
      end
      object dxDBGrid1DizvAvans: TdxDBGridPickColumn
        Caption = 'DIzv av'
        HeaderAlignment = taCenter
        Width = 45
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DIzvavans'
        Items.Strings = (
          '50'
          '100')
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 378
    Width = 881
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 0
    Width = 881
    Height = 17
    Align = alTop
    BorderStyle = sbsSunken
    Caption = '  ESC - Izlaz, ENTER - Ozna'#263'i, F1 - Sorte'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInactiveCaption
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object dsPartner: TDataSource
    DataSet = qPartner
    Left = 80
    Top = 168
  end
  object qSorte: TQuery
    Active = True
    AfterOpen = qSorteAfterOpen
    DatabaseName = 'kulture'
    DataSource = dsPartner
    SQL.Strings = (
      'SELECT sifra_vrste, oznaka_sorte, ime_sorte, VCU_oznaka, '
      'DUS_oznaka, sifra_podnositelja, sifra_zahtjeva, '
      '100-SUM(v.avans) VCUavans, '
      '100-SUM(d.avans) DUSavans, '
      '100-SUM(i.avans) DIzvavans'
      'FROM priznanje_PB p'
      
        'LEFT OUTER JOIN stavke_naloga v ON (p.sifra_zahtjeva=v.sifra_zah' +
        'tjeva AND v.sifra_placanja='#39'V'#39' || p.VCU_oznaka)'
      
        'LEFT OUTER JOIN stavke_naloga d ON (p.sifra_zahtjeva=d.sifra_zah' +
        'tjeva AND d.sifra_placanja='#39'D'#39' || p.DUS_oznaka)'
      
        'LEFT OUTER JOIN stavke_naloga i ON (p.sifra_zahtjeva=i.sifra_zah' +
        'tjeva AND i.sifra_placanja='#39'DI'#39')'
      'WHERE sifra_podnositelja=:sifra'
      'GROUP BY sifra_vrste, oznaka_sorte, ime_sorte, VCU_oznaka, '
      'DUS_oznaka, sifra_podnositelja, sifra_zahtjeva')
    Left = 592
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'sifra'
        ParamType = ptUnknown
        Size = 4
      end>
    object qSortesifra_vrste: TIntegerField
      DisplayLabel = #353'ifra'
      FieldName = 'sifra_vrste'
      Visible = False
    end
    object qSorteoznaka_sorte: TStringField
      DisplayLabel = 'oznaka sorte'
      FieldName = 'oznaka_sorte'
      Origin = 'KULTURE."Priznanje_PB.DB".Oznaka_sorte'
      Size = 30
    end
    object qSorteime_sorte: TStringField
      DisplayLabel = 'ime sorte'
      FieldName = 'ime_sorte'
      Origin = 'KULTURE."Priznanje_PB.DB".Ime_sorte'
      Size = 30
    end
    object qSorteVCU_oznaka: TStringField
      DisplayLabel = 'VCU'
      FieldName = 'VCU_oznaka'
      Size = 5
    end
    object qSorteDUS_oznaka: TStringField
      DisplayLabel = 'DUS'
      FieldName = 'DUS_oznaka'
      Size = 5
    end
    object qSortesifra_zahtjeva: TIntegerField
      FieldName = 'sifra_zahtjeva'
      Origin = 'KULTURE."Priznanje_PB.DB".Sifra_zahtjeva'
      Visible = False
    end
    object qSorteVCUavans: TFloatField
      FieldName = 'VCUavans'
    end
    object qSorteDUSavans: TFloatField
      FieldName = 'DUSavans'
    end
    object qSorteDIzvavans: TFloatField
      FieldName = 'DIzvavans'
    end
    object qSortelook_VCU1_c: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'look_VCU1_c'
      LookupDataSet = tVrsta
      LookupKeyFields = 'Sifra_vrste'
      LookupResultField = 'VCU1_cijena'
      KeyFields = 'sifra_vrste'
      Visible = False
      Lookup = True
    end
    object qSortelook_VCU2_c: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'look_VCU2_c'
      LookupDataSet = tVrsta
      LookupKeyFields = 'Sifra_vrste'
      LookupResultField = 'VCU2_cijena'
      KeyFields = 'sifra_vrste'
      Visible = False
      Lookup = True
    end
    object qSortelook_VCU3_c: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'look_VCU3_c'
      LookupDataSet = tVrsta
      LookupKeyFields = 'Sifra_vrste'
      LookupResultField = 'VCU3_cijena'
      KeyFields = 'sifra_vrste'
      Visible = False
      Lookup = True
    end
    object qSortelook_DUS1_c: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'look_DUS1_c'
      LookupDataSet = tVrsta
      LookupKeyFields = 'Sifra_vrste'
      LookupResultField = 'DUS1_cijena'
      KeyFields = 'sifra_vrste'
      Visible = False
      Lookup = True
    end
    object qSortelook_DUS2_c: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'look_DUS2_c'
      LookupDataSet = tVrsta
      LookupKeyFields = 'Sifra_vrste'
      LookupResultField = 'DUS2_cijena'
      KeyFields = 'sifra_vrste'
      Visible = False
      Lookup = True
    end
    object qSortelook_DIzv_c: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'look_DIzv_c'
      LookupDataSet = tVrsta
      LookupKeyFields = 'Sifra_vrste'
      LookupResultField = 'DIzv_cijena'
      KeyFields = 'sifra_vrste'
      Lookup = True
    end
    object qSortesifra_podnositelja: TIntegerField
      FieldName = 'sifra_podnositelja'
      Visible = False
    end
  end
  object dsGrid: TDataSource
    DataSet = qSorte
    Left = 560
    Top = 224
  end
  object qPartner: TQuery
    Active = True
    DatabaseName = 'kulture'
    SQL.Strings = (
      
        'SELECT DISTINCT x.sifra_podnositelja sifra, p.ime_partnera, p.mj' +
        'esto, p.drzava'
      'FROM priznanje_PB x, partner p'
      'WHERE x.sifra_podnositelja=p.sifra_partnera'
      '')
    Left = 112
    Top = 168
    object qPartnerime_partnera: TStringField
      DisplayLabel = 'ime partnera'
      DisplayWidth = 30
      FieldName = 'ime_partnera'
      Origin = 'KULTURE."Partner.DB".Ime_partnera'
      Size = 30
    end
    object qPartnermjesto: TStringField
      DisplayWidth = 25
      FieldName = 'mjesto'
      Origin = 'KULTURE."Partner.DB".Mjesto'
      Size = 25
    end
    object qPartnerdrzava: TStringField
      DisplayLabel = 'dr'#382'ava'
      DisplayWidth = 15
      FieldName = 'drzava'
      Origin = 'KULTURE."Partner.DB".Drzava'
      Size = 15
    end
    object qPartnersifra: TIntegerField
      FieldName = 'sifra'
      Origin = 'KULTURE."Priznanje_PB.DB".Sifra_podnositelja'
      Visible = False
    end
  end
  object qVrste: TQuery
    Active = True
    AfterOpen = qVrsteAfterOpen
    AutoRefresh = True
    DatabaseName = 'kulture'
    DataSource = dsPartner
    SQL.Strings = (
      'SELECT DISTINCT sifra_vrste'
      'FROM priznanje_pb'
      'WHERE sifra_podnositelja=:sifra')
    Left = 512
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'sifra'
        ParamType = ptUnknown
        Size = 4
      end>
    object qVrstesifra_vrste: TIntegerField
      FieldName = 'sifra_vrste'
      Origin = 'KULTURE."Priznanje_PB.DB".Sifra_vrste'
    end
    object qVrstelookHrv: TStringField
      DisplayLabel = 'Hrvatski naziv vrste'
      FieldKind = fkLookup
      FieldName = 'lookHrv'
      LookupDataSet = tVrsta
      LookupKeyFields = 'Sifra_vrste'
      LookupResultField = 'Vrsta_hrv'
      KeyFields = 'sifra_vrste'
      Size = 30
      Lookup = True
    end
    object qVrstelookLat: TStringField
      DisplayLabel = 'Latinski naziv vrste'
      FieldKind = fkLookup
      FieldName = 'lookLat'
      LookupDataSet = tVrsta
      LookupKeyFields = 'Sifra_vrste'
      LookupResultField = 'Vrsta_lat'
      KeyFields = 'sifra_vrste'
      Size = 100
      Lookup = True
    end
  end
  object dsVrste: TDataSource
    DataSet = qVrste
    Left = 480
    Top = 128
  end
  object tVrsta: TTable
    Active = True
    DatabaseName = 'kulture'
    TableName = 'Vrsta'
    Left = 512
    Top = 160
  end
  object dsLookV: TDataSource
    DataSet = tVrsta
    Left = 480
    Top = 160
  end
  object tMemo: TMemoryTable
    Active = True
    AutoRefresh = True
    DatabaseName = 'kulture'
    TableName = 'tMemo'
    Left = 512
    Top = 96
    object tMemosifra_vrste: TIntegerField
      DisplayLabel = #353'ifra'
      FieldName = 'sifra_vrste'
      Visible = False
    end
    object tMemoHrv: TStringField
      DisplayLabel = 'Hrvatski naziv vrste'
      FieldName = 'lookHrv'
      Size = 30
    end
    object tMemoLat: TStringField
      DisplayLabel = 'Latinski naziv vrste'
      FieldName = 'lookLat'
      Size = 100
    end
    object tMemoaaaa: TBooleanField
      Alignment = taCenter
      FieldName = 'aaaa'
    end
  end
  object dsMemo: TDataSource
    DataSet = tMemo
    Left = 480
    Top = 96
  end
  object tVCU: TTable
    Active = True
    DatabaseName = 'kulture'
    FieldDefs = <
      item
        Name = 'VCU_oznaka'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'VCU_Status'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Boja'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <
      item
        Fields = 'VCU_oznaka'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'VCU_oznaka'
    StoreDefs = True
    TableName = 'VCU_status'
    Left = 320
    Top = 112
    object tVCUVCU_oznaka: TStringField
      FieldName = 'VCU_oznaka'
      Size = 5
    end
    object tVCUVCU_Status: TStringField
      FieldName = 'VCU_Status'
      Size = 40
    end
  end
  object dsVCU: TDataSource
    DataSet = tVCU
    Left = 288
    Top = 112
  end
  object tMemo2: TMemoryTable
    Active = True
    OnCalcFields = tMemo2CalcFields
    AutoRefresh = True
    DatabaseName = 'kulture'
    TableName = 'tMemo'
    Left = 592
    Top = 192
    object tMemo2sifra_vrste: TIntegerField
      DisplayLabel = #353'ifra'
      FieldName = 'sifra_vrste'
      Visible = False
    end
    object tMemo2StringField: TStringField
      DisplayLabel = 'oznaka sorte'
      FieldName = 'oznaka_sorte'
      Size = 30
    end
    object tMemo2StringField2: TStringField
      DisplayLabel = 'ime sorte'
      FieldName = 'ime_sorte'
      Size = 30
    end
    object tMemo2VCUOznaka: TStringField
      DisplayLabel = 'VCU'
      FieldName = 'VCU_oznaka'
      Size = 5
    end
    object tMemo2DUSoznaka: TStringField
      DisplayLabel = 'DUS'
      FieldName = 'DUS_oznaka'
      Size = 5
    end
    object tMemo2sifra_zahtjeva: TIntegerField
      FieldName = 'sifra_zahtjeva'
      Visible = False
    end
    object tMemo2aaaa: TBooleanField
      DisplayLabel = 'VCU'
      FieldName = 'aaaa'
    end
    object tMemo2bbbb: TBooleanField
      DisplayLabel = 'DUS'
      FieldName = 'bbbb'
    end
    object tMemo2cccc: TBooleanField
      DisplayLabel = 'DIz'
      FieldName = 'cccc'
    end
    object tMemo2cijenaVCU: TCurrencyField
      DisplayLabel = 'Cijena VCU'
      FieldName = 'cijenaVCU'
    end
    object tMemo2cijenaDUS: TCurrencyField
      DisplayLabel = 'Cijena DUS'
      FieldName = 'cijenaDUS'
    end
    object tMemo2iznos: TCurrencyField
      DisplayLabel = 'Iznos'
      FieldKind = fkCalculated
      FieldName = 'iznos'
      Calculated = True
    end
    object tMemo2VCUavans: TFloatField
      FieldName = 'VCUavans'
    end
    object tMemo2DUSavans: TFloatField
      FieldName = 'DUSavans'
    end
    object tMemo2DIzvavans: TFloatField
      FieldName = 'DIzvavans'
    end
    object tMemo2look_DUS1_c: TCurrencyField
      FieldName = 'look_DUS1_c'
      Visible = False
    end
    object tMemo2look_DUS2_c: TCurrencyField
      FieldName = 'look_DUS2_c'
      Visible = False
    end
    object tMemo2look_VCU3_c: TCurrencyField
      FieldName = 'look_VCU3_c'
      Visible = False
    end
    object tMemo2look_VCU2_c: TCurrencyField
      FieldName = 'look_VCU2_c'
      Visible = False
    end
    object tMemo2look_VCU1_c: TCurrencyField
      FieldName = 'look_VCU1_c'
      Visible = False
    end
    object tMemo2cijenaDIz: TCurrencyField
      DisplayLabel = 'Cijena DIz'
      FieldName = 'look_DIzv_c'
    end
    object tMemo2sifra_podnositelja: TIntegerField
      FieldName = 'sifra_podnositelja'
      Visible = False
    end
  end
  object dsMemo2: TDataSource
    DataSet = tMemo2
    Left = 560
    Top = 192
  end
  object tDUS: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'DUS_oznaka'
    TableName = 'DUS_status'
    Left = 320
    Top = 144
    object tDUSDUS_oznaka: TStringField
      FieldName = 'DUS_oznaka'
      Required = True
      Size = 5
    end
    object tDUSDUS_Status: TStringField
      FieldName = 'DUS_Status'
      Size = 40
    end
  end
  object DataSource1: TDataSource
    DataSet = tDUS
    Left = 288
    Top = 144
  end
  object tNalog: TTable
    Active = True
    DatabaseName = 'kulture'
    TableName = 'Nalog.db'
    Left = 184
    Top = 217
    object tNalogSifra_naloga: TAutoIncField
      FieldName = 'Sifra_naloga'
      ReadOnly = True
      Visible = False
    end
    object tNalogBroj_naloga: TIntegerField
      DisplayLabel = 'Broj naloga'
      FieldName = 'Broj_naloga'
    end
    object tNalogGodina_naloga: TStringField
      DisplayLabel = 'Godina naloga'
      FieldName = 'Godina_naloga'
      Size = 4
    end
    object tNalogDatum_izdavanja: TDateField
      FieldName = 'Datum_izdavanja'
    end
    object tNalogNapomena: TStringField
      FieldName = 'Napomena'
      Size = 100
    end
    object tNalogDatum_izmjene: TDateTimeField
      FieldName = 'Datum_izmjene'
      Visible = False
    end
    object tNalogSifra_partnera: TIntegerField
      FieldName = 'Sifra_partnera'
      Visible = False
    end
  end
  object dsNalog: TDataSource
    DataSet = tNalog
    Left = 152
    Top = 217
  end
  object tStavkeN: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexName = 'ixSifra_naloga'
    MasterFields = 'Sifra_naloga'
    MasterSource = dsNalog
    TableName = 'Stavke_naloga'
    Left = 184
    Top = 249
    object tStavkeNSifra_stavke: TAutoIncField
      FieldName = 'Sifra_stavke'
      ReadOnly = True
      Visible = False
    end
    object tStavkeNSifra_naloga: TIntegerField
      FieldName = 'Sifra_naloga'
      Visible = False
    end
    object tStavkeNCijena_stavke: TCurrencyField
      DisplayLabel = 'Cijena'
      FieldName = 'Cijena_stavke'
    end
    object tStavkeNAvans: TSmallintField
      FieldName = 'Avans'
    end
    object tStavkeNPDV: TSmallintField
      FieldName = 'PDV'
    end
    object tStavkeNSifra_placanja: TStringField
      FieldName = 'Sifra_placanja'
      Visible = False
      Size = 2
    end
    object tStavkeNSifra_zahtjeva: TIntegerField
      FieldName = 'Sifra_zahtjeva'
      Visible = False
    end
  end
  object dsStavke: TDataSource
    DataSet = tStavkeN
    Left = 152
    Top = 249
  end
  object qMaxBR: TQuery
    DatabaseName = 'kulture'
    SQL.Strings = (
      'SELECT MAX(broj_naloga)+1 br'
      'FROM nalog'
      'WHERE godina_naloga=:godina')
    Left = 280
    Top = 217
    ParamData = <
      item
        DataType = ftString
        Name = 'godina'
        ParamType = ptUnknown
        Value = '2004'
      end>
  end
  object tVrstaPla: TTable
    Active = True
    DatabaseName = 'kulture'
    TableName = 'Vrsta_placanja'
    Left = 504
    Top = 265
  end
  object daVPla: TDataSource
    DataSet = tVrstaPla
    Left = 472
    Top = 265
  end
  object qProv: TQuery
    DatabaseName = 'kulture'
    Left = 280
    Top = 281
  end
end
