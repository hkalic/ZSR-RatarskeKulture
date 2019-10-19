object FPravoNaVrste: TFPravoNaVrste
  Left = 270
  Top = 265
  Width = 610
  Height = 261
  Caption = 'Odaberite vrste za korisnike'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = OnIzlaz
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 7
    Top = 3
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
      OnKeyDown = OnIzlaz
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
    Top = 3
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
      KeyField = 'sifra_vrste'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 0
      OnKeyDown = OnIzlaz
      DataSource = dsNema
      Filter.Criteria = {00000000}
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      object dxDBGrid2sifra_vrste: TdxDBGridMaskColumn
        Visible = False
        Width = 42
        BandIndex = 0
        RowIndex = 0
        FieldName = 'sifra_vrste'
      end
      object dxDBGrid2vrsta_hrv: TdxDBGridMaskColumn
        Caption = 'Naziv vrste'
        Width = 123
        BandIndex = 0
        RowIndex = 0
        FieldName = 'vrsta_hrv'
      end
    end
  end
  object GroupBox3: TGroupBox
    Left = 372
    Top = 3
    Width = 223
    Height = 223
    Caption = ' Ima pravo '
    TabOrder = 2
    object dxDBGrid3: TdxDBGrid
      Left = 2
      Top = 15
      Width = 219
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
      OnKeyDown = OnIzlaz
      DataSource = dsPravoNaVrste
      Filter.Criteria = {00000000}
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      object dxDBGrid3Sifra: TdxDBGridMaskColumn
        Visible = False
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Sifra'
      end
      object dxDBGrid3Sifra_Korisnika: TdxDBGridMaskColumn
        Visible = False
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Sifra_Korisnika'
      end
      object dxDBGrid3Sifra_Vrste: TdxDBGridMaskColumn
        Visible = False
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Sifra_Vrste'
      end
      object dxDBGrid3lookNazivVrste: TdxDBGridColumn
        Width = 193
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lookNazivVrste'
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
  object dsKorisnici: TDataSource
    DataSet = tKorisnici
    Left = 62
    Top = 154
  end
  object tKorisnici: TTable
    Active = True
    DatabaseName = 'kulture'
    TableName = 'Korisnici'
    Left = 90
    Top = 154
  end
  object dsNema: TDataSource
    DataSet = qOstalaPrava
    Left = 205
    Top = 106
  end
  object qOstalaPrava: TQuery
    Active = True
    DatabaseName = 'kulture'
    DataSource = dsPravoNaVrste
    SQL.Strings = (
      'SELECT v.sifra_vrste, v.vrsta_hrv'
      'FROM vrsta v'
      'WHERE v.sifra_vrste NOT IN'
      '  (SELECT p.sifra_vrste '
      '   FROM pravonavrste p '
      '   WHERE p.sifra_korisnika=:Sifra_Korisnika)'
      'ORDER BY v.vrsta_hrv')
    Left = 240
    Top = 107
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Sifra_Korisnika'
        ParamType = ptUnknown
      end>
  end
  object Query1: TQuery
    DatabaseName = 'kulture'
    Left = 326
    Top = 4
  end
  object tVrsta: TTable
    Active = True
    DatabaseName = 'kulture'
    TableName = 'Vrsta.DB'
    Left = 483
    Top = 2
  end
  object dsVrsta: TDataSource
    DataSet = tVrsta
    Left = 483
    Top = 31
  end
  object dsPravoNaVrste: TDataSource
    DataSet = tPravoNaVrste
    Left = 469
    Top = 109
  end
  object tPravoNaVrste: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexName = 'ixSifraKorisnika'
    MasterFields = 'Sifra'
    MasterSource = dsKorisnici
    TableName = 'PravoNaVrste.DB'
    Left = 501
    Top = 109
    object tPravoNaVrsteSifra: TAutoIncField
      DisplayLabel = 'Šifra'
      FieldName = 'Sifra'
      ReadOnly = True
      Visible = False
    end
    object tPravoNaVrsteSifra_Korisnika: TIntegerField
      DisplayLabel = 'Šifra korisnika'
      FieldName = 'Sifra_Korisnika'
      Required = True
      Visible = False
    end
    object tPravoNaVrsteSifra_Vrste: TIntegerField
      DisplayLabel = 'Šifra vrste'
      FieldName = 'Sifra_Vrste'
      Required = True
      Visible = False
    end
    object tPravoNaVrstelookNazivVrste: TStringField
      DisplayLabel = 'Naziv vrste'
      FieldKind = fkLookup
      FieldName = 'lookNazivVrste'
      LookupDataSet = tVrsta
      LookupKeyFields = 'Sifra_vrste'
      LookupResultField = 'Vrsta_hrv'
      KeyFields = 'Sifra_Vrste'
      Size = 30
      Lookup = True
    end
  end
end
