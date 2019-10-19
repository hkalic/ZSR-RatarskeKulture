inherited FUnosKontakta: TFUnosKontakta
  Left = 207
  Top = 152
  Caption = 'Unos kontakata'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pregled: TPageControl
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
          Left = 59
          Top = 61
          Width = 17
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ime'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel [2]
          Left = 39
          Top = 85
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Caption = 'Prezime'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel [3]
          Left = 40
          Top = 133
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = 'Telefon'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel [4]
          Left = 42
          Top = 157
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = 'Mobitel'
          FocusControl = DBEdit4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel [5]
          Left = 48
          Top = 205
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'E-mail'
          FocusControl = DBEdit5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel [6]
          Left = 17
          Top = 253
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'Datum upisa'
          FocusControl = DBEdit6
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel [7]
          Left = 261
          Top = 60
          Width = 71
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vezani partner:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit3: TDBEdit
          Tag = 128
          Left = 80
          Top = 57
          Width = 129
          Height = 21
          DataField = 'Ime_kontakta'
          DataSource = dsTable
          TabOrder = 1
        end
        object DBEdit1: TDBEdit
          Left = 80
          Top = 81
          Width = 129
          Height = 21
          DataField = 'Prezime_kontakta'
          DataSource = dsTable
          TabOrder = 2
        end
        object DBEdit2: TDBEdit
          Left = 80
          Top = 129
          Width = 129
          Height = 21
          DataField = 'Telefon'
          DataSource = dsTable
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 80
          Top = 153
          Width = 129
          Height = 21
          DataField = 'Mobitel'
          DataSource = dsTable
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 80
          Top = 201
          Width = 305
          Height = 21
          DataField = 'Email'
          DataSource = dsTable
          TabOrder = 5
        end
        object DBEdit6: TDBEdit
          Left = 80
          Top = 249
          Width = 129
          Height = 21
          DataField = 'Datum_promjene'
          DataSource = dsTable
          Enabled = False
          ReadOnly = True
          TabOrder = 6
        end
        object wwDBLookupCombo1: TwwDBLookupCombo
          Left = 336
          Top = 56
          Width = 201
          Height = 19
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Ime_partnera'#9'60'#9'Ime partnera'#9'F'#9
            'Mjesto'#9'25'#9'Mjesto'#9'F'#9)
          DataField = 'look_Partner'
          DataSource = dsTable
          LookupTable = tPartner
          LookupField = 'Sifra_partnera'
          Options = [loColLines]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          TabOrder = 7
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = False
          ShowMatchText = True
        end
      end
    end
  end
  inherited dsTable: TDataSource
    DataSet = tKontakti
  end
  object tKontakti: TTable
    Active = True
    BeforeOpen = aBeforeOpen
    BeforeInsert = aBeforeInsert
    AfterInsert = TsAfterInsert
    BeforeEdit = aBeforeEdit
    AfterEdit = TsAfterEdit
    AfterPost = TsAfterEdit
    AfterCancel = aAfterCancel
    BeforeDelete = aBeforeDelete
    DatabaseName = 'kulture'
    IndexFieldNames = 'Sifra_Kontakta'
    TableName = 'Kontakti'
    Left = 436
    Top = 305
    object tKontaktiSifra_Kontakta: TAutoIncField
      DisplayLabel = 'Šifra'
      FieldName = 'Sifra_Kontakta'
      ReadOnly = True
    end
    object tKontaktiSifra_partnera: TSmallintField
      FieldName = 'Sifra_partnera'
      Visible = False
    end
    object tKontaktiIme_kontakta: TStringField
      DisplayLabel = 'Ime'
      FieldName = 'Ime_kontakta'
      Size = 30
    end
    object tKontaktiPrezime_kontakta: TStringField
      DisplayLabel = 'Prezime'
      FieldName = 'Prezime_kontakta'
      Size = 30
    end
    object tKontaktiTelefon: TStringField
      FieldName = 'Telefon'
      Size = 15
    end
    object tKontaktiMobitel: TStringField
      FieldName = 'Mobitel'
      Size = 15
    end
    object tKontaktiEmail: TStringField
      FieldName = 'Email'
      Visible = False
      Size = 60
    end
    object tKontaktiDatum_promjene: TDateTimeField
      FieldName = 'Datum_promjene'
      Visible = False
    end
    object tKontaktilook_Partner: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'look_Partner'
      LookupDataSet = tPartner
      LookupKeyFields = 'Sifra_partnera'
      LookupResultField = 'Ime_partnera'
      KeyFields = 'Sifra_partnera'
      Visible = False
      Size = 30
      Lookup = True
    end
  end
  object tPartner: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'Sifra_partnera'
    TableName = 'Partner'
    Left = 524
    Top = 137
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
    Top = 137
  end
end
