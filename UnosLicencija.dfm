inherited FUnosLicencija: TFUnosLicencija
  Left = 308
  Top = 94
  Caption = 'Unos ugovora o licenciji'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pregled: TPageControl
    ActivePage = Tunos
    TabIndex = 1
    inherited Tpregled: TTabSheet
      inherited TBar: TToolBar
        inherited DBNavigator3: TDBNavigator
          Hints.Strings = ()
        end
      end
      inherited PanelGrid: TPanel
        inherited DBGrid11: TdxDBGrid
          Filter.Criteria = {00000000}
        end
      end
    end
    inherited Tunos: TTabSheet
      inherited Panel1: TPanel
        object Label4: TLabel [1]
          Left = 41
          Top = 125
          Width = 67
          Height = 13
          Alignment = taRightJustify
          Caption = 'Uvjeti dodjele:'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel [2]
          Left = 46
          Top = 60
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ime partnera:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel [3]
          Left = 45
          Top = 149
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = 'Broj ugovora:'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel [4]
          Left = 32
          Top = 173
          Width = 76
          Height = 13
          Alignment = taRightJustify
          Caption = 'Datum ugovora:'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel [5]
          Left = 24
          Top = 197
          Width = 84
          Height = 13
          Alignment = taRightJustify
          Caption = 'Datum prestanka:'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel [6]
          Left = 26
          Top = 221
          Width = 82
          Height = 13
          Alignment = taRightJustify
          Caption = 'Trajanje licencije:'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel [7]
          Left = 33
          Top = 261
          Width = 75
          Height = 13
          Alignment = taRightJustify
          Caption = 'Opseg licencije:'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel [8]
          Left = 62
          Top = 84
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ime sorte:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel [9]
          Left = 28
          Top = 341
          Width = 80
          Height = 13
          Alignment = taRightJustify
          Caption = 'Datum promjene:'
          FocusControl = DBEdit6
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit3: TDBEdit
          Left = 112
          Top = 121
          Width = 337
          Height = 21
          DataField = 'Uvjeti_dodjele'
          DataSource = dsTable
          TabOrder = 3
        end
        object wwDBLookupCombo1: TwwDBLookupCombo
          Tag = 128
          Left = 112
          Top = 56
          Width = 225
          Height = 19
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Ime_partnera'#9'60'#9'Ime_partnera'#9'F'#9
            'Mjesto'#9'25'#9'Mjesto'#9'F'#9)
          DataField = 'look_ImePartnera'
          DataSource = dsTable
          LookupTable = tPartner
          LookupField = 'Sifra_partnera'
          Options = [loColLines]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          TabOrder = 1
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = False
          ShowMatchText = True
        end
        object DBEdit1: TDBEdit
          Tag = 128
          Left = 112
          Top = 145
          Width = 113
          Height = 21
          DataField = 'Broj_ugovora'
          DataSource = dsTable
          TabOrder = 4
        end
        object DBEdit2: TDBEdit
          Tag = 128
          Left = 112
          Top = 257
          Width = 337
          Height = 21
          DataField = 'Opseg_licencije'
          DataSource = dsTable
          TabOrder = 8
        end
        object wwDBDateTimePicker1: TwwDBDateTimePicker
          Left = 112
          Top = 168
          Width = 113
          Height = 19
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          ButtonStyle = cbsEllipsis
          DataField = 'Datum_ugovora'
          DataSource = dsTable
          Epoch = 1950
          Frame.Enabled = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameSingle
          Frame.NonFocusStyle = efsFrameSunken
          ShowButton = True
          TabOrder = 5
        end
        object wwDBDateTimePicker2: TwwDBDateTimePicker
          Left = 112
          Top = 192
          Width = 113
          Height = 19
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          ButtonStyle = cbsEllipsis
          DataField = 'Datum_prestanka'
          DataSource = dsTable
          Epoch = 1950
          Frame.Enabled = True
          Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
          Frame.FocusStyle = efsFrameSingle
          Frame.NonFocusStyle = efsFrameSunken
          ShowButton = True
          TabOrder = 6
        end
        object DBEdit5: TDBEdit
          Tag = 128
          Left = 112
          Top = 217
          Width = 337
          Height = 21
          DataField = 'Trajanje_licencije'
          DataSource = dsTable
          TabOrder = 7
        end
        object wwDBLookupCombo2: TwwDBLookupCombo
          Left = 112
          Top = 80
          Width = 225
          Height = 19
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Oznaka_sorte'#9'30'#9'Oznaka sorte'#9'F'#9
            'Ime_sorte'#9'30'#9'Ime sorte'#9'F'#9)
          DataField = 'look_ImeSorte'
          DataSource = dsTable
          LookupTable = tSorta
          LookupField = 'Sifra_zahtjeva'
          Options = [loColLines]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          TabOrder = 2
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = False
          ShowMatchText = True
        end
        object DBEdit6: TDBEdit
          Tag = 128
          Left = 112
          Top = 337
          Width = 113
          Height = 21
          DataField = 'Datum_promjene'
          DataSource = dsTable
          Enabled = False
          TabOrder = 9
        end
      end
    end
  end
  inherited dsTable: TDataSource
    DataSet = tLicencije
  end
  object tLicencije: TTable
    BeforeOpen = aBeforeOpen
    BeforeInsert = aBeforeInsert
    AfterInsert = TsAfterInsert
    BeforeEdit = aBeforeEdit
    AfterEdit = TsAfterEdit
    AfterPost = aAfterPost
    AfterCancel = aAfterCancel
    BeforeDelete = aBeforeDelete
    DatabaseName = 'kulture'
    IndexFieldNames = 'Sifra_licencije'
    TableName = 'Licencija'
    Left = 436
    Top = 305
    object tLicencijeSifra_licencije: TAutoIncField
      DisplayLabel = #352'ifra'
      FieldName = 'Sifra_licencije'
      ReadOnly = True
    end
    object tLicencijelook_ImePartnera: TStringField
      FieldKind = fkLookup
      FieldName = 'look_ImePartnera'
      LookupDataSet = tPartner
      LookupKeyFields = 'Sifra_partnera'
      LookupResultField = 'Ime_partnera'
      KeyFields = 'Sifra_partnera'
      Visible = False
      Size = 30
      Lookup = True
    end
    object tLicencijelook_ImeSorte: TStringField
      DisplayLabel = 'Ime Sorte'
      FieldKind = fkLookup
      FieldName = 'look_ImeSorte'
      LookupDataSet = tSorta
      LookupKeyFields = 'Sifra_zahtjeva'
      LookupResultField = 'Oznaka_sorte'
      KeyFields = 'Sifra_sorte'
      Visible = False
      Size = 30
      Lookup = True
    end
    object tLicencijeUvjeti_dodjele: TStringField
      DisplayLabel = 'Uvjeti dodjele licencije'
      FieldName = 'Uvjeti_dodjele'
      Visible = False
      Size = 30
    end
    object tLicencijeBroj_ugovora: TStringField
      DisplayLabel = 'Broj ugovora'
      FieldName = 'Broj_ugovora'
      Size = 15
    end
    object tLicencijeDatum_ugovora: TDateField
      DisplayLabel = 'Datum ugovora'
      FieldName = 'Datum_ugovora'
    end
    object tLicencijeDatum_prestanka: TDateField
      DisplayLabel = 'Datum prestanka'
      FieldName = 'Datum_prestanka'
    end
    object tLicencijeTrajanje_licencije: TStringField
      DisplayLabel = 'Trajanje licencije'
      FieldName = 'Trajanje_licencije'
      Visible = False
    end
    object tLicencijeOpseg_licencije: TStringField
      DisplayLabel = 'Opseg licencije'
      FieldName = 'Opseg_licencije'
      Visible = False
      Size = 40
    end
    object tLicencijeDatum_promjene: TDateTimeField
      FieldName = 'Datum_promjene'
      Visible = False
    end
    object tLicencijeSifra_partnera: TIntegerField
      FieldName = 'Sifra_partnera'
      Visible = False
    end
    object tLicencijeSifra_sorte: TIntegerField
      FieldName = 'Sifra_sorte'
      Visible = False
    end
  end
  object tPartner: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'Sifra_partnera'
    TableName = 'Partner'
    Left = 524
    Top = 73
    object tPartnerIme_partnera: TStringField
      DisplayWidth = 60
      FieldName = 'Ime_partnera'
      Size = 60
    end
    object tPartnerMjesto: TStringField
      DisplayWidth = 25
      FieldName = 'Mjesto'
      Size = 25
    end
    object tPartnerSifra_partnera: TAutoIncField
      FieldName = 'Sifra_partnera'
      ReadOnly = True
      Visible = False
    end
  end
  object dsPartner: TDataSource
    DataSet = tPartner
    Left = 492
    Top = 73
  end
  object tSorta: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'Sifra_zahtjeva'
    TableName = 'Priznanje_PB.DB'
    Left = 524
    Top = 113
    object tSortaOznaka_sorte: TStringField
      DisplayLabel = 'Oznaka sorte'
      DisplayWidth = 30
      FieldName = 'Oznaka_sorte'
      Required = True
      Size = 30
    end
    object tSortaIme_sorte: TStringField
      DisplayLabel = 'Ime sorte'
      DisplayWidth = 30
      FieldName = 'Ime_sorte'
      Size = 30
    end
    object tSortaSifra_zahtjeva: TAutoIncField
      Alignment = taLeftJustify
      DisplayWidth = 10
      FieldName = 'Sifra_zahtjeva'
      ReadOnly = True
      Visible = False
    end
    object tSortaSifra_vrste: TIntegerField
      FieldName = 'Sifra_vrste'
    end
  end
  object DataSource1: TDataSource
    DataSet = tSorta
    Left = 492
    Top = 113
  end
end
