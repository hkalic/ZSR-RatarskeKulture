object FSviBrojeviDlg: TFSviBrojeviDlg
  Left = 163
  Top = 99
  BorderStyle = bsToolWindow
  Caption = 'Pregled svih izdanih brojeva'
  ClientHeight = 438
  ClientWidth = 237
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 237
    Height = 438
    Selected.Strings = (
      'PraviBrojUvjerenja'#9'13'#9'Broj uvjerenja'
      'Datum'#9'14'#9'Datum izd.'
      'Dodatak'#9'4'#9' ')
    IniAttributes.Enabled = True
    IniAttributes.FileName = 'dok.ini'
    IniAttributes.Delimiter = ';;'
    IniAttributes.CheckNewFields = True
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = False
    Align = alClient
    Color = clWhite
    DataSource = wwDataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = wwDBGrid1DblClick
  end
  object TBrUvjerenja: TwwTable
    DatabaseName = 'DBVoc'
    FieldDefs = <
      item
        Name = 'Sifra'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'PraviBrojUvjerenja'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Datum'
        DataType = ftDate
      end
      item
        Name = 'SifraRbr'
        DataType = ftInteger
      end
      item
        Name = 'Dodatak'
        DataType = ftString
        Size = 5
      end>
    IndexDefs = <
      item
        Name = 'TBrUvjerenjaIndex1'
        Fields = 'Sifra'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'IxSifRbr'
        Fields = 'SifraRbr'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'IxPraviBrojUv'
        Fields = 'PraviBrojUvjerenja'
        Options = [ixCaseInsensitive]
      end>
    IndexName = 'IxPraviBrojUv'
    StoreDefs = True
    TableName = 'BrojeviUvjerenja.db'
    ControlType.Strings = (
      'Dodatak;CustomEdit;wwDBComboBox2;F')
    PictureMasks.Strings = (
      'DatumPodnosenja'#9'##.##.####'#9'T'#9'T'
      'RokVazenjaZahtjev'#9'##.##.####'#9'T'#9'T'
      'DatumVaziDoDekl'#9'##.##.####'#9'T'#9'T'
      'DatumSvjed'#9'##.##.####'#9'T'#9'T'
      'DatumIzdavanjaDekl'#9'##.##.####'#9'T'#9'T')
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 8
    Top = 112
    object TBrUvjerenjaPraviBrojUvjerenja: TStringField
      DisplayLabel = 'Broj uvjerenja'
      DisplayWidth = 13
      FieldName = 'PraviBrojUvjerenja'
      Size = 10
    end
    object TBrUvjerenjaDatum: TDateField
      DisplayLabel = 'Datum izd.'
      DisplayWidth = 14
      FieldName = 'Datum'
    end
    object TBrUvjerenjaDodatak: TStringField
      DisplayLabel = ' '
      DisplayWidth = 4
      FieldName = 'Dodatak'
      Size = 5
    end
  end
  object wwDataSource1: TwwDataSource
    DataSet = TBrUvjerenja
    Left = 48
    Top = 136
  end
end
