inherited FUnosVrste: TFUnosVrste
  Left = 203
  Top = 115
  Caption = 'Šifrarnik vrsta'
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
          Left = 36
          Top = 68
          Width = 96
          Height = 13
          Alignment = taRightJustify
          Caption = 'Hrvatski naziv vrste:'
          FocusControl = DBEdit4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel [2]
          Left = 39
          Top = 92
          Width = 93
          Height = 13
          Alignment = taRightJustify
          Caption = 'Latinski naziv vrste:'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel [3]
          Left = 35
          Top = 116
          Width = 97
          Height = 13
          Alignment = taRightJustify
          Caption = 'Engleski naziv vrste:'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel [4]
          Left = 77
          Top = 204
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Napomena:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel [5]
          Left = 52
          Top = 396
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
        object Label3: TLabel [6]
          Left = 67
          Top = 308
          Width = 65
          Height = 13
          Alignment = taRightJustify
          Caption = 'VCU troškovi:'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel [7]
          Left = 66
          Top = 332
          Width = 66
          Height = 13
          Alignment = taRightJustify
          Caption = 'DUS troškovi:'
          FocusControl = DBEdit5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel [8]
          Left = 144
          Top = 284
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = '1. godina'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel [9]
          Left = 216
          Top = 284
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = '2. godina'
          FocusControl = DBEdit7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel [10]
          Left = 288
          Top = 284
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = '3. godina'
          FocusControl = DBEdit9
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel [11]
          Left = 33
          Top = 356
          Width = 99
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cijena DUS izvješæa:'
          FocusControl = DBEdit10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel [12]
          Left = 88
          Top = 148
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tip vrste:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel [13]
          Left = 103
          Top = 172
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = 'Klasa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit4: TDBEdit
          Tag = 128
          Left = 136
          Top = 64
          Width = 273
          Height = 21
          DataField = 'Vrsta_hrv'
          DataSource = dsTable
          TabOrder = 1
          OnKeyDown = Kdown
        end
        object DBEdit1: TDBEdit
          Tag = 128
          Left = 136
          Top = 88
          Width = 273
          Height = 21
          DataField = 'Vrsta_lat'
          DataSource = dsTable
          TabOrder = 2
          OnKeyDown = Kdown
        end
        object DBEdit2: TDBEdit
          Tag = 128
          Left = 136
          Top = 112
          Width = 273
          Height = 21
          DataField = 'Vrsta_eng'
          DataSource = dsTable
          TabOrder = 3
          OnKeyDown = Kdown
        end
        object DBMemo1: TDBMemo
          Left = 136
          Top = 200
          Width = 273
          Height = 65
          DataField = 'Napomena'
          DataSource = dsTable
          TabOrder = 6
          OnKeyDown = Kdown
        end
        object DBEdit6: TDBEdit
          Tag = 128
          Left = 136
          Top = 392
          Width = 113
          Height = 21
          DataField = 'Datum_promjene'
          DataSource = dsTable
          Enabled = False
          TabOrder = 12
          OnKeyDown = Kdown
        end
        object DBEdit3: TDBEdit
          Tag = 128
          Left = 136
          Top = 304
          Width = 65
          Height = 21
          DataField = 'VCU1_cijena'
          DataSource = dsTable
          TabOrder = 7
          OnKeyDown = Kdown
        end
        object DBEdit5: TDBEdit
          Tag = 128
          Left = 136
          Top = 328
          Width = 65
          Height = 21
          DataField = 'DUS1_cijena'
          DataSource = dsTable
          TabOrder = 10
          OnKeyDown = Kdown
        end
        object DBEdit7: TDBEdit
          Tag = 128
          Left = 208
          Top = 304
          Width = 65
          Height = 21
          DataField = 'VCU2_cijena'
          DataSource = dsTable
          TabOrder = 8
          OnKeyDown = Kdown
        end
        object DBEdit8: TDBEdit
          Tag = 128
          Left = 208
          Top = 328
          Width = 65
          Height = 21
          DataField = 'DUS2_cijena'
          DataSource = dsTable
          TabOrder = 11
          OnKeyDown = Kdown
        end
        object DBEdit9: TDBEdit
          Tag = 128
          Left = 280
          Top = 304
          Width = 65
          Height = 21
          DataField = 'VCU3_cijena'
          DataSource = dsTable
          TabOrder = 9
          OnKeyDown = Kdown
        end
        object DBEdit10: TDBEdit
          Tag = 128
          Left = 136
          Top = 352
          Width = 65
          Height = 21
          DataField = 'DIzv_cijena'
          DataSource = dsTable
          TabOrder = 13
          OnKeyDown = Kdown
        end
        object wwDBLookupCombo1: TwwDBLookupCombo
          Left = 136
          Top = 144
          Width = 201
          Height = 19
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Sifra_tipa_sorte'#9'10'#9'Sifra_tipa_sorte'#9'F'#9
            'Naziv_tipa_sorte'#9'50'#9'Naziv_tipa_sorte'#9'F'#9)
          DataField = 'look_TipVrste'
          DataSource = dsTable
          LookupTable = tTipSorte
          LookupField = 'Sifra_tipa_sorte'
          Options = [loColLines]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          TabOrder = 4
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
          ShowMatchText = True
        end
        object wwDBLookupCombo2: TwwDBLookupCombo
          Left = 136
          Top = 168
          Width = 201
          Height = 19
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'NazivKlase'#9'20'#9'Naziv Klase'#9'F'#9)
          DataField = 'lookKlasa'
          DataSource = dsTable
          LookupTable = tKlase
          LookupField = 'Sifra'
          Options = [loColLines]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          TabOrder = 5
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
          ShowMatchText = True
        end
      end
    end
  end
  inherited dsTable: TDataSource
    DataSet = Vrsta
  end
  object Vrsta: TTable
    Active = True
    BeforeOpen = aBeforeOpen
    BeforeInsert = aBeforeInsert
    AfterInsert = TsAfterInsert
    BeforeEdit = aBeforeEdit
    AfterEdit = TsAfterEdit
    AfterPost = aAfterPost
    AfterCancel = aAfterCancel
    BeforeDelete = aBeforeDelete
    DatabaseName = 'kulture'
    IndexFieldNames = 'Sifra_vrste'
    TableName = 'Vrsta'
    Left = 436
    Top = 305
    object VrstaSifra_vrste: TAutoIncField
      DisplayLabel = 'Šifra vrste'
      FieldName = 'Sifra_vrste'
      ReadOnly = True
    end
    object VrstaKlasa: TSmallintField
      DisplayLabel = 'Šifra klase'
      FieldName = 'Klasa'
    end
    object VrstaVrsta_hrv: TStringField
      DisplayLabel = 'Hrvatski naziv'
      FieldName = 'Vrsta_hrv'
      Size = 30
    end
    object VrstaVrsta_lat: TStringField
      DisplayLabel = 'Latinski naziv'
      FieldName = 'Vrsta_lat'
      Size = 50
    end
    object VrstaVrsta_eng: TStringField
      DisplayLabel = 'Engleski naziv'
      FieldName = 'Vrsta_eng'
      Size = 30
    end
    object VrstaNapomena: TMemoField
      FieldName = 'Napomena'
      Visible = False
      BlobType = ftMemo
      Size = 50
    end
    object VrstaTip_vrste: TSmallintField
      FieldName = 'Tip_vrste'
      Visible = False
    end
    object VrstaVCU1_cijena: TCurrencyField
      FieldName = 'VCU1_cijena'
      Visible = False
    end
    object VrstaVCU2_cijena: TCurrencyField
      FieldName = 'VCU2_cijena'
      Visible = False
    end
    object VrstaVCU3_cijena: TCurrencyField
      FieldName = 'VCU3_cijena'
      Visible = False
    end
    object VrstaDUS1_cijena: TCurrencyField
      FieldName = 'DUS1_cijena'
      Visible = False
    end
    object VrstaDUS2_cijena: TCurrencyField
      FieldName = 'DUS2_cijena'
      Visible = False
    end
    object VrstaDIzv_cijena: TCurrencyField
      DisplayLabel = 'DIzv cijena'
      FieldName = 'DIzv_cijena'
    end
    object VrstaDatum_promjene: TDateTimeField
      DisplayLabel = 'Datum promjene'
      FieldName = 'Datum_promjene'
      Visible = False
    end
    object Vrstalook_TipVrste: TStringField
      FieldKind = fkLookup
      FieldName = 'look_TipVrste'
      LookupDataSet = tTipSorte
      LookupKeyFields = 'Sifra_tipa_sorte'
      LookupResultField = 'Naziv_tipa_sorte'
      KeyFields = 'Tip_vrste'
      Visible = False
      Size = 30
      Lookup = True
    end
    object VrstalookKlasa: TStringField
      FieldKind = fkLookup
      FieldName = 'lookKlasa'
      LookupDataSet = tKlase
      LookupKeyFields = 'Sifra'
      LookupResultField = 'NazivKlase'
      KeyFields = 'Klasa'
      Visible = False
      Lookup = True
    end
  end
  object tTipSorte: TTable
    Active = True
    DatabaseName = 'kulture'
    Constraints = <
      item
        FromDictionary = False
      end>
    IndexFieldNames = 'Sifra_tipa_sorte'
    TableName = 'Tip_sorte'
    Left = 348
    Top = 169
    object tTipSorteSifra_tipa_sorte: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'Sifra_tipa_sorte'
      Required = True
    end
    object tTipSorteNaziv_tipa_sorte: TStringField
      FieldName = 'Naziv_tipa_sorte'
      Size = 50
    end
  end
  object dsTipSorte: TDataSource
    DataSet = tTipSorte
    Left = 380
    Top = 169
  end
  object tKlase: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'Sifra'
    TableName = 'Klase'
    Left = 348
    Top = 201
    object tKlaseNazivKlase: TStringField
      DisplayLabel = 'Naziv Klase'
      DisplayWidth = 20
      FieldName = 'NazivKlase'
    end
    object tKlaseSifra: TAutoIncField
      DisplayLabel = 'Šifra'
      FieldName = 'Sifra'
      ReadOnly = True
      Visible = False
    end
  end
  object DataSource1: TDataSource
    Left = 380
    Top = 201
  end
end
