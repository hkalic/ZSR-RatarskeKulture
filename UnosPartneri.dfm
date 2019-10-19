inherited FUnosPartneri: TFUnosPartneri
  Left = 234
  Top = 115
  Width = 769
  Height = 687
  Caption = #352'ifrarnik partnera'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pregled: TPageControl
    Width = 761
    Height = 660
    ActivePage = Tunos
    TabIndex = 1
    inherited Tpregled: TTabSheet
      inherited TBar: TToolBar
        Width = 753
        inherited DBNavigator3: TDBNavigator
          Hints.Strings = ()
        end
      end
      inherited PanelGrid: TPanel
        Width = 753
        Height = 596
        inherited DBGrid11: TdxDBGrid
          Width = 739
          Height = 582
          Filter.Criteria = {00000000}
        end
      end
    end
    inherited Tunos: TTabSheet
      inherited Panel1: TPanel
        Width = 753
        Height = 631
        inherited LbLStanje: TLabel
          Width = 739
        end
        object Label2: TLabel [1]
          Left = 49
          Top = 52
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = 'Naziv'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel [2]
          Left = 45
          Top = 101
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Mjesto'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel [3]
          Left = 269
          Top = 101
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dr'#382'ava'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel [4]
          Left = 43
          Top = 141
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'Adresa'
          FocusControl = DBEdit5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel [5]
          Left = 31
          Top = 181
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = 'Telefon 1'
          FocusControl = DBEdit6
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel [6]
          Left = 307
          Top = 205
          Width = 17
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fax'
          FocusControl = DBEdit7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel [7]
          Left = 279
          Top = 180
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = 'Telefon 2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel [8]
          Left = 48
          Top = 241
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'E-mail'
          FocusControl = DBEdit9
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel [9]
          Left = 381
          Top = 264
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'Datum upisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel [10]
          Left = 43
          Top = 265
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = 'Kratica'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel [11]
          Left = 42
          Top = 204
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = 'Mobitel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel [12]
          Left = 26
          Top = 293
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Kontakti:'
          FocusControl = DBEdit5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel [13]
          Left = 31
          Top = 421
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = 'Odjeli:'
          FocusControl = DBEdit5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        inherited Panel2: TPanel
          Left = 647
          Height = 599
        end
        object DBEdit1: TDBEdit
          Tag = 128
          Left = 80
          Top = 48
          Width = 492
          Height = 21
          DataField = 'Ime_partnera'
          DataSource = dsTable
          TabOrder = 1
          OnKeyDown = Kdown
        end
        object DBEdit3: TDBEdit
          Left = 80
          Top = 97
          Width = 182
          Height = 21
          DataField = 'Mjesto'
          DataSource = dsTable
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 80
          Top = 137
          Width = 492
          Height = 21
          DataField = 'Adresa'
          DataSource = dsTable
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 80
          Top = 177
          Width = 129
          Height = 21
          DataField = 'Telefon1'
          DataSource = dsTable
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 328
          Top = 201
          Width = 129
          Height = 21
          DataField = 'Fax'
          DataSource = dsTable
          TabOrder = 8
        end
        object DBEdit8: TDBEdit
          Left = 328
          Top = 177
          Width = 129
          Height = 21
          DataField = 'Telefon2'
          DataSource = dsTable
          TabOrder = 6
        end
        object DBEdit9: TDBEdit
          Left = 80
          Top = 237
          Width = 492
          Height = 21
          DataField = 'Email'
          DataSource = dsTable
          TabOrder = 9
        end
        object DBEdit10: TDBEdit
          Left = 444
          Top = 260
          Width = 129
          Height = 21
          DataField = 'Datum_promjene'
          DataSource = dsTable
          Enabled = False
          ReadOnly = True
          TabOrder = 11
        end
        object DBEdit2: TDBEdit
          Left = 80
          Top = 261
          Width = 129
          Height = 21
          DataField = 'Kratica'
          DataSource = dsTable
          TabOrder = 10
        end
        object DBEdit11: TDBEdit
          Left = 80
          Top = 201
          Width = 129
          Height = 21
          DataField = 'Mobilni_tel'
          DataSource = dsTable
          TabOrder = 7
        end
        object DBGrid1: TDBGrid
          Left = 24
          Top = 312
          Width = 705
          Height = 97
          DataSource = dsKontakti
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 12
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Ime_kontakta'
              Title.Alignment = taCenter
              Title.Caption = 'Ime'
              Width = 165
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Prezime_kontakta'
              Title.Alignment = taCenter
              Title.Caption = 'Prezime'
              Width = 170
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'telefon'
              Title.Alignment = taCenter
              Title.Caption = 'Telefon'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mobitel'
              Title.Alignment = taCenter
              Title.Caption = 'Mobitel'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'email'
              Title.Alignment = taCenter
              Title.Caption = 'Email'
              Visible = True
            end>
        end
        object DBGrid2: TDBGrid
          Left = 24
          Top = 440
          Width = 289
          Height = 97
          DataSource = dsOdjeli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 13
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Naziv_odjela'
              Title.Caption = 'Naziv odjela'
              Width = 251
              Visible = True
            end>
        end
        object lookOplemenjivac: TwwDBLookupCombo
          Tag = 1
          Left = 307
          Top = 97
          Width = 265
          Height = 19
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Naziv_Drzave'#9'40'#9'Dr'#382'ava'#9'F')
          DataField = 'Sifra_drzava'
          DataSource = dsTable
          LookupTable = tDrzava
          LookupField = 'Sifra'
          Options = [loColLines, loSearchOnBackspace]
          Frame.Enabled = True
          Frame.FocusStyle = efsFrameBump
          Frame.NonFocusStyle = efsFrameRaised
          TabOrder = 3
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = False
          ShowMatchText = True
        end
      end
    end
  end
  object Partner: TTable [1]
    BeforeOpen = aBeforeOpen
    BeforeInsert = aBeforeInsert
    AfterInsert = TsAfterInsert
    BeforeEdit = aBeforeEdit
    AfterEdit = TsAfterEdit
    AfterPost = aAfterPost
    BeforeDelete = aBeforeDelete
    DatabaseName = 'kulture'
    FieldDefs = <
      item
        Name = 'Sifra_partnera'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'Ime_partnera'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Adresa'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Mjesto'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'Drzava'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Sifra_drzava'
        DataType = ftInteger
      end
      item
        Name = 'Telefon1'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Telefon2'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Fax'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Email'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Kratica'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Mobilni_tel'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Datum_promjene'
        DataType = ftDateTime
      end>
    IndexDefs = <
      item
        Fields = 'Sifra_partnera'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'ixNaziv'
        Fields = 'Ime_partnera'
        Options = [ixCaseInsensitive]
      end>
    IndexFieldNames = 'Sifra_partnera'
    StoreDefs = True
    TableName = 'Partner'
    Left = 328
    Top = 186
    object PartnerSifra_partnera: TAutoIncField
      DisplayLabel = #352'ifra'
      FieldName = 'Sifra_partnera'
      ReadOnly = True
    end
    object PartnerIme_partnera: TStringField
      DisplayLabel = 'Ime partnera'
      FieldName = 'Ime_partnera'
      Size = 60
    end
    object PartnerAdresa: TStringField
      FieldName = 'Adresa'
      Size = 60
    end
    object PartnerMjesto: TStringField
      FieldName = 'Mjesto'
      Size = 25
    end
    object Partnerlook_Drzava: TStringField
      DisplayLabel = 'Dr'#382'ava'
      FieldKind = fkLookup
      FieldName = 'look_Drzava'
      LookupDataSet = tDrzava
      LookupKeyFields = 'Sifra'
      LookupResultField = 'Naziv_Drzave'
      KeyFields = 'Sifra_drzava'
      Visible = False
      Size = 30
      Lookup = True
    end
    object PartnerSifra_drzava: TIntegerField
      DisplayLabel = 'Dr'#382'ava'
      FieldName = 'Sifra_drzava'
      Visible = False
    end
    object PartnerTelefon1: TStringField
      FieldName = 'Telefon1'
      Visible = False
      Size = 15
    end
    object PartnerTelefon2: TStringField
      FieldName = 'Telefon2'
      Visible = False
      Size = 15
    end
    object PartnerFax: TStringField
      FieldName = 'Fax'
      Visible = False
      Size = 15
    end
    object PartnerEmail: TStringField
      DisplayWidth = 60
      FieldName = 'Email'
      Visible = False
      Size = 60
    end
    object PartnerKratica: TStringField
      FieldName = 'Kratica'
      Size = 5
    end
    object PartnerMobilni_tel: TStringField
      DisplayLabel = 'Mobilni telefon'
      FieldName = 'Mobilni_tel'
      Visible = False
      Size = 15
    end
    object PartnerDatum_promjene: TDateTimeField
      DisplayLabel = 'Datum promjene'
      FieldName = 'Datum_promjene'
      ReadOnly = True
      Required = True
      Visible = False
    end
  end
  inherited DQ: TDataSource
    Left = 284
    Top = 153
  end
  inherited TQ: TRxQuery
    Left = 284
    Top = 185
  end
  inherited dsTable: TDataSource
    DataSet = Partner
    Left = 324
    Top = 153
  end
  object dsKontakti: TDataSource
    DataSet = qKontakti
    Left = 158
    Top = 426
  end
  object qKontakti: TQuery
    Active = True
    DatabaseName = 'kulture'
    DataSource = dsTable
    SQL.Strings = (
      'SELECT Ime_kontakta, Prezime_kontakta, telefon, mobitel, email'
      'FROM Kontakti'
      'WHERE Sifra_partnera=:Sifra_partnera')
    Left = 116
    Top = 425
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'Sifra_partnera'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object qOdjeli: TQuery
    Active = True
    DatabaseName = 'kulture'
    DataSource = dsTable
    SQL.Strings = (
      'SELECT Naziv_odjela'
      'FROM "Odjel_partnera.DB" Odjel'
      'WHERE Sifra_partnera=:Sifra_partnera')
    Left = 420
    Top = 417
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'Sifra_partnera'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object dsOdjeli: TDataSource
    DataSet = qOdjeli
    Left = 452
    Top = 417
  end
  object tDrzava: TTable
    Active = True
    DatabaseName = 'kulture'
    FieldDefs = <
      item
        Name = 'Sifra'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'Naziv_Drzave'
        DataType = ftString
        Size = 40
      end>
    IndexDefs = <
      item
        Fields = 'Sifra'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'Sifra'
    StoreDefs = True
    TableName = 'Drzava'
    Left = 592
    Top = 120
    object tDrzavaNaziv_Drzave: TStringField
      DisplayLabel = 'Dr'#382'ava'
      DisplayWidth = 40
      FieldName = 'Naziv_Drzave'
      Size = 40
    end
    object tDrzavaSifra: TAutoIncField
      FieldName = 'Sifra'
      ReadOnly = True
      Visible = False
    end
  end
end
