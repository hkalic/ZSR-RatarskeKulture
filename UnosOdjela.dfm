inherited FUnosOdjela: TFUnosOdjela
  Left = 228
  Top = 153
  Caption = 'Unos odjela partnera'
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
          Left = 39
          Top = 61
          Width = 61
          Height = 13
          Alignment = taRightJustify
          Caption = 'Naziv odjela:'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel [2]
          Left = 29
          Top = 92
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
        object Label6: TLabel [3]
          Left = 41
          Top = 149
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
        object DBEdit3: TDBEdit
          Tag = 128
          Left = 104
          Top = 57
          Width = 321
          Height = 21
          DataField = 'Naziv_Odjela'
          DataSource = dsTable
          TabOrder = 1
        end
        object wwDBLookupCombo1: TwwDBLookupCombo
          Left = 104
          Top = 88
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
          TabOrder = 2
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = False
          ShowMatchText = True
        end
        object DBEdit6: TDBEdit
          Left = 104
          Top = 145
          Width = 129
          Height = 21
          DataField = 'Datum_promjene'
          DataSource = dsTable
          Enabled = False
          ReadOnly = True
          TabOrder = 3
        end
      end
    end
  end
  inherited dsTable: TDataSource
    DataSet = tOdjeli
  end
  object tOdjeli: TTable
    Active = True
    BeforeOpen = aBeforeOpen
    BeforeInsert = aBeforeInsert
    AfterInsert = TsAfterInsert
    BeforeEdit = aBeforeEdit
    AfterEdit = TsAfterEdit
    AfterPost = aBeforeEdit
    AfterCancel = aAfterCancel
    BeforeDelete = aBeforeDelete
    DatabaseName = 'kulture'
    IndexFieldNames = 'Sifra'
    TableName = 'Odjel_partnera'
    Left = 436
    Top = 308
    object tOdjeliSifra: TAutoIncField
      FieldName = 'Sifra'
      ReadOnly = True
    end
    object tOdjeliSifra_Partnera: TSmallintField
      FieldName = 'Sifra_Partnera'
      Visible = False
    end
    object tOdjeliNaziv_Odjela: TStringField
      DisplayLabel = 'Naziv odjela partnera'
      DisplayWidth = 60
      FieldName = 'Naziv_Odjela'
      Size = 60
    end
    object tOdjelilook_Partner: TStringField
      DisplayLabel = 'Ime partnera'
      FieldKind = fkLookup
      FieldName = 'look_Partner'
      LookupDataSet = tPartner
      LookupKeyFields = 'Sifra_partnera'
      LookupResultField = 'Ime_partnera'
      KeyFields = 'Sifra_Partnera'
      Visible = False
      Size = 30
      Lookup = True
    end
    object tOdjeliDatum_promjene: TDateTimeField
      FieldName = 'Datum_promjene'
      Visible = False
    end
  end
  object tPartner: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'Sifra_partnera'
    TableName = 'Partner'
    Left = 492
    Top = 220
    object tPartnerSifra_partnera: TAutoIncField
      FieldName = 'Sifra_partnera'
      ReadOnly = True
      Visible = False
    end
    object tPartnerIme_partnera: TStringField
      DisplayLabel = 'Ime partnera'
      FieldName = 'Ime_partnera'
      Size = 60
    end
    object tPartnerAdresa: TStringField
      FieldName = 'Adresa'
      Visible = False
      Size = 60
    end
    object tPartnerMjesto: TStringField
      FieldName = 'Mjesto'
      Visible = False
      Size = 25
    end
    object tPartnerDrzava: TStringField
      FieldName = 'Drzava'
      Visible = False
      Size = 15
    end
    object tPartnerTelefon1: TStringField
      FieldName = 'Telefon1'
      Visible = False
      Size = 15
    end
    object tPartnerTelefon2: TStringField
      FieldName = 'Telefon2'
      Visible = False
      Size = 15
    end
    object tPartnerFax: TStringField
      FieldName = 'Fax'
      Visible = False
      Size = 15
    end
    object tPartnerEmail: TStringField
      FieldName = 'Email'
      Visible = False
      Size = 60
    end
    object tPartnerKratica: TStringField
      FieldName = 'Kratica'
      Visible = False
      Size = 5
    end
    object tPartnerMobilni_tel: TStringField
      FieldName = 'Mobilni_tel'
      Visible = False
      Size = 15
    end
    object tPartnerDatum_promjene: TDateTimeField
      FieldName = 'Datum_promjene'
      Visible = False
    end
  end
  object DataSource1: TDataSource
    Left = 492
    Top = 188
  end
end
