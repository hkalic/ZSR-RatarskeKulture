object FPravoNaModule: TFPravoNaModule
  Left = 300
  Top = 157
  Width = 741
  Height = 265
  Caption = 'Odaberite module za korisnika'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 7
    Top = 8
    Width = 140
    Height = 224
    Caption = ' Korisnik'
    TabOrder = 0
    object dxDBGrid1: TdxDBGrid
      Left = 2
      Top = 15
      Width = 136
      Height = 207
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'Sifra'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 0
      OnKeyDown = onIzlaz
      DataSource = dsKorisnici
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      object dxDBGrid1Sifra: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Sifra'
      end
      object dxDBGrid1ImePrezime: TdxDBGridMaskColumn
        Alignment = taLeftJustify
        Caption = 'Ime i prezime'
        Width = 115
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ImePrezime'
      end
      object dxDBGrid1LoginName: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LoginName'
      end
      object dxDBGrid1Lozinka: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Lozinka'
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 163
    Top = 8
    Width = 149
    Height = 223
    Caption = ' Nema pravo '
    TabOrder = 1
    object dxDBGrid2: TdxDBGrid
      Left = 2
      Top = 15
      Width = 145
      Height = 206
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'sifra'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 0
      OnKeyDown = onIzlaz
      DataSource = dsNema
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      object dxDBGrid2sifra: TdxDBGridMaskColumn
        Visible = False
        Width = 31
        BandIndex = 0
        RowIndex = 0
        FieldName = 'sifra'
      end
      object dxDBGrid2nazivmodula: TdxDBGridMaskColumn
        Caption = 'Naziv modula'
        Width = 120
        BandIndex = 0
        RowIndex = 0
        FieldName = 'nazivmodula'
      end
    end
  end
  object GroupBox3: TGroupBox
    Left = 370
    Top = 8
    Width = 359
    Height = 223
    Caption = ' Ima pravo '
    TabOrder = 2
    object dxDBGrid3: TdxDBGrid
      Left = 2
      Top = 15
      Width = 355
      Height = 206
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'Sifra'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 0
      OnKeyDown = onIzlaz
      DataSource = dsPravo
      Filter.Criteria = {00000000}
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      object dxDBGrid3Sifra: TdxDBGridMaskColumn
        Visible = False
        Width = 43
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Sifra'
      end
      object dxDBGrid3SifraKorisnika: TdxDBGridMaskColumn
        Visible = False
        Width = 49
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SifraKorisnika'
      end
      object dxDBGrid3SifraModula: TdxDBGridMaskColumn
        Visible = False
        Width = 43
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SifraModula'
      end
      object dxDBGrid3NivoPrava: TdxDBGridMaskColumn
        Visible = False
        Width = 43
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NivoPrava'
      end
      object dxDBGrid3lookNazivModula: TdxDBGridColumn
        Width = 186
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lookNazivModula'
      end
      object dxDBGrid3looknazivNivoa: TdxDBGridLookupColumn
        Width = 146
        BandIndex = 0
        RowIndex = 0
        FieldName = 'looknazivNivoa'
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 317
    Top = 87
    Width = 49
    Height = 25
    TabOrder = 3
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333FFF333333333333000333333333
      3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
      3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
      0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
      BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
      33337777773FF733333333333300033333333333337773333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 317
    Top = 119
    Width = 49
    Height = 25
    TabOrder = 4
    OnClick = BitBtn2Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333333333333333333333333333333333333333333333FF333333333333
      3000333333FFFFF3F77733333000003000B033333777773777F733330BFBFB00
      E00033337FFF3377F7773333000FBFB0E000333377733337F7773330FBFBFBF0
      E00033F7FFFF3337F7773000000FBFB0E000377777733337F7770BFBFBFBFBF0
      E00073FFFFFFFF37F777300000000FB0E000377777777337F7773333330BFB00
      000033333373FF77777733333330003333333333333777333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object tKorisnici: TTable
    Active = True
    DatabaseName = 'kulture'
    TableName = 'Korisnici'
    Left = 111
    Top = 124
  end
  object dsKorisnici: TDataSource
    DataSet = tKorisnici
    Left = 77
    Top = 123
  end
  object dsPravo: TDataSource
    DataSet = tPravo
    Left = 469
    Top = 109
  end
  object tPravo: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexName = 'ixSifraKorisnika'
    MasterFields = 'Sifra'
    MasterSource = dsKorisnici
    TableName = 'PravoNaModule.DB'
    Left = 500
    Top = 109
    object tPravoSifra: TAutoIncField
      DisplayLabel = 'Šifra'
      FieldName = 'Sifra'
      ReadOnly = True
      Visible = False
    end
    object tPravoSifraKorisnika: TIntegerField
      DisplayLabel = 'Šifra korisnika'
      FieldName = 'SifraKorisnika'
      ReadOnly = True
      Required = True
      Visible = False
    end
    object tPravoSifraModula: TIntegerField
      DisplayLabel = 'Šifra modula'
      FieldName = 'SifraModula'
      ReadOnly = True
      Required = True
      Visible = False
    end
    object tPravoNivoPrava: TIntegerField
      DisplayLabel = 'Nivo Prava'
      FieldName = 'NivoPrava'
      Required = True
      Visible = False
    end
    object tPravolookNazivModula: TStringField
      DisplayLabel = 'Naziv modula'
      FieldKind = fkLookup
      FieldName = 'lookNazivModula'
      LookupDataSet = tModuli
      LookupKeyFields = 'Sifra'
      LookupResultField = 'NazivModula'
      KeyFields = 'SifraModula'
      ReadOnly = True
      Size = 40
      Lookup = True
    end
    object tPravolooknazivNivoa: TStringField
      DisplayLabel = 'Opis prava'
      FieldKind = fkLookup
      FieldName = 'looknazivNivoa'
      LookupDataSet = tNivo
      LookupKeyFields = 'Sifra'
      LookupResultField = 'NazivNivoaPrava'
      KeyFields = 'NivoPrava'
      Size = 40
      Lookup = True
    end
  end
  object tNivo: TTable
    Active = True
    DatabaseName = 'kulture'
    TableName = 'NivoPrava.db'
    Left = 453
    Top = 4
  end
  object tModuli: TTable
    Active = True
    DatabaseName = 'kulture'
    TableName = 'Moduli.db'
    Left = 483
    Top = 2
  end
  object dsNivo: TDataSource
    DataSet = tNivo
    Left = 454
    Top = 33
  end
  object dsModuli: TDataSource
    DataSet = tModuli
    Left = 483
    Top = 31
  end
  object qOstalaPrava: TQuery
    Active = True
    DatabaseName = 'kulture'
    DataSource = dsPravo
    SQL.Strings = (
      'SELECT m.sifra, m.nazivmodula'
      'FROM moduli m'
      'WHERE m.sifra NOT IN'
      '  (SELECT p.siframodula '
      '   FROM pravonamodule p '
      '   WHERE p.sifrakorisnika=:SifraKorisnika)')
    Left = 240
    Top = 107
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SifraKorisnika'
        ParamType = ptUnknown
      end>
  end
  object dsNema: TDataSource
    DataSet = qOstalaPrava
    Left = 205
    Top = 106
  end
  object Query1: TQuery
    DatabaseName = 'kulture'
    Left = 326
    Top = 4
  end
end
