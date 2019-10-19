inherited FUnosSorte: TFUnosSorte
  Left = 242
  Top = 169
  Width = 750
  Height = 542
  Caption = 'Šifrarnik sorta'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pregled: TPageControl
    Width = 742
    Height = 515
    inherited Tpregled: TTabSheet
      inherited TBar: TToolBar
        Width = 734
        inherited DBNavigator3: TDBNavigator
          Hints.Strings = ()
        end
      end
      inherited PanelGrid: TPanel
        Width = 734
        Height = 451
        inherited DBGrid11: TdxDBGrid
          Width = 720
          Height = 437
          Filter.Criteria = {00000000}
        end
      end
    end
    inherited Tunos: TTabSheet
      inherited Panel1: TPanel
        Width = 734
        Height = 486
        inherited LbLStanje: TLabel
          Width = 720
        end
        object Label2: TLabel [1]
          Left = 59
          Top = 108
          Width = 73
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vrsta - hrvatski:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel [2]
          Left = 64
          Top = 132
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vrsta - latinski:'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel [3]
          Left = 57
          Top = 156
          Width = 75
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vrsta - engleski:'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel [4]
          Left = 66
          Top = 44
          Width = 66
          Height = 13
          Alignment = taRightJustify
          Caption = 'Oznaka sorte:'
          FocusControl = DBEdit4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel [5]
          Left = 86
          Top = 68
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ime sorte:'
          FocusControl = DBEdit5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel [6]
          Left = 52
          Top = 436
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
        object Label8: TLabel [7]
          Left = 304
          Top = 44
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tip sorte:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel [8]
          Left = 448
          Top = 436
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'Upisni broj:'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel [9]
          Left = 92
          Top = 292
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'Sastojci:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel [10]
          Left = 41
          Top = 356
          Width = 91
          Height = 13
          Alignment = taRightJustify
          Caption = 'Službeni opis sorte:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        inherited Panel2: TPanel
          Left = 628
          Height = 454
        end
        object DBEdit2: TDBEdit
          Left = 136
          Top = 128
          Width = 417
          Height = 21
          DataField = 'Vrsta_lat'
          DataSource = dsTable
          Enabled = False
          TabOrder = 1
          OnKeyDown = Kdown
        end
        object DBEdit3: TDBEdit
          Left = 136
          Top = 152
          Width = 417
          Height = 21
          DataField = 'Vrsta_Eng'
          DataSource = dsTable
          Enabled = False
          TabOrder = 2
          OnKeyDown = Kdown
        end
        object DBEdit4: TDBEdit
          Tag = 128
          Left = 136
          Top = 40
          Width = 113
          Height = 21
          DataField = 'Oznaka_sorte'
          DataSource = dsTable
          Enabled = False
          TabOrder = 3
          OnKeyDown = Kdown
        end
        object DBEdit5: TDBEdit
          Tag = 128
          Left = 136
          Top = 64
          Width = 113
          Height = 21
          DataField = 'Ime_sorte'
          DataSource = dsTable
          Enabled = False
          TabOrder = 4
          OnKeyDown = Kdown
        end
        object DBEdit6: TDBEdit
          Tag = 128
          Left = 136
          Top = 432
          Width = 113
          Height = 21
          DataField = 'Datum_promjene'
          DataSource = dsTable
          Enabled = False
          TabOrder = 6
          OnKeyDown = Kdown
        end
        object lookSorta: TwwDBLookupCombo
          Left = 136
          Top = 104
          Width = 417
          Height = 19
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Vrsta_hrv'#9'30'#9'Vrsta_hrv'#9'F'#9
            'Vrsta_lat'#9'50'#9'Vrsta_lat'#9'F')
          DataField = 'Vrsta_hrv'
          DataSource = dsTable
          LookupTable = tVrsta
          LookupField = 'Sifra_vrste'
          Options = [loColLines]
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          TabOrder = 7
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
          ShowMatchText = True
        end
        object wwDBLookupCombo1: TwwDBLookupCombo
          Left = 352
          Top = 40
          Width = 201
          Height = 19
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Sifra_tipa_sorte'#9'10'#9'Sifra_tipa_sorte'#9'F'#9
            'Naziv_tipa_sorte'#9'50'#9'Naziv_tipa_sorte'#9'F'#9)
          DataField = 'look_Tip_Sorte'
          DataSource = dsTable
          LookupTable = tTipSorte
          LookupField = 'Sifra_tipa_sorte'
          Options = [loColLines]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          TabOrder = 5
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
          ShowMatchText = True
        end
        object Panel3: TPanel
          Tag = 128
          Left = 40
          Top = 184
          Width = 521
          Height = 97
          BevelOuter = bvNone
          TabOrder = 8
          object Label6: TLabel
            Left = 47
            Top = 12
            Width = 45
            Height = 13
            Alignment = taRightJustify
            Caption = 'Namjena:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBMemo1: TDBMemo
            Left = 96
            Top = 8
            Width = 417
            Height = 65
            DataField = 'Namjena'
            DataSource = dsTable
            TabOrder = 0
          end
        end
        object Panel4: TPanel
          Tag = 128
          Left = 40
          Top = 184
          Width = 529
          Height = 89
          BevelOuter = bvNone
          TabOrder = 9
          Visible = False
          object Label9: TLabel
            Left = 47
            Top = 12
            Width = 45
            Height = 13
            Alignment = taRightJustify
            Caption = 'Namjena:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBCheckBox1: TDBCheckBox
            Left = 104
            Top = 16
            Width = 145
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Za tržište u svježem stanju'
            DataField = 'NamPov1'
            DataSource = dsTable
            TabOrder = 0
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox2: TDBCheckBox
            Left = 176
            Top = 40
            Width = 73
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Za preradu'
            DataField = 'NamPov2'
            DataSource = dsTable
            TabOrder = 1
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox3: TDBCheckBox
            Left = 176
            Top = 64
            Width = 73
            Height = 17
            Alignment = taLeftJustify
            Caption = 'U vrtovima'
            DataField = 'NamPov3'
            DataSource = dsTable
            TabOrder = 2
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
        end
        object DBEdit1: TDBEdit
          Tag = 128
          Left = 504
          Top = 432
          Width = 49
          Height = 21
          DataField = 'Upisni_broj'
          DataSource = dsTable
          Enabled = False
          TabOrder = 10
          OnKeyDown = Kdown
        end
        object DBMemo2: TDBMemo
          Left = 136
          Top = 288
          Width = 417
          Height = 57
          DataField = 'Sastojci'
          DataSource = dsTable
          TabOrder = 11
        end
        object DBMemo3: TDBMemo
          Left = 136
          Top = 352
          Width = 417
          Height = 57
          DataField = 'Opis'
          DataSource = dsTable
          TabOrder = 12
        end
      end
    end
  end
  inherited dsTable: TDataSource
    DataSet = Sorta
    OnDataChange = dsTableDataChange
    Left = 404
  end
  object tVrsta: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'Sifra_vrste'
    TableName = 'Vrsta'
    Left = 572
    Top = 81
    object tVrstaVrsta_hrv: TStringField
      DisplayWidth = 30
      FieldName = 'Vrsta_hrv'
      Size = 30
    end
    object tVrstaVrsta_lat: TStringField
      DisplayWidth = 50
      FieldName = 'Vrsta_lat'
      Size = 50
    end
    object tVrstaSifra_vrste: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Sifra_vrste'
      ReadOnly = True
      Visible = False
    end
    object tVrstaVrsta_eng: TStringField
      DisplayWidth = 30
      FieldName = 'Vrsta_eng'
      Visible = False
      Size = 30
    end
    object tVrstaNapomena: TMemoField
      DisplayWidth = 10
      FieldName = 'Napomena'
      Visible = False
      BlobType = ftMemo
      Size = 50
    end
    object tVrstaDatum_promjene: TDateTimeField
      DisplayWidth = 18
      FieldName = 'Datum_promjene'
      Visible = False
    end
  end
  object dsVrsta: TDataSource
    DataSet = tVrsta
    Left = 604
    Top = 81
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
    Left = 572
    Top = 153
    object tTipSorteSifra_tipa_sorte: TSmallintField
      Alignment = taLeftJustify
      DisplayWidth = 10
      FieldName = 'Sifra_tipa_sorte'
      Required = True
    end
    object tTipSorteNaziv_tipa_sorte: TStringField
      DisplayWidth = 50
      FieldName = 'Naziv_tipa_sorte'
      Size = 50
    end
  end
  object dsTipSorte: TDataSource
    DataSet = tTipSorte
    Left = 604
    Top = 153
  end
  object Sorta: TTable
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
    IndexFieldNames = 'Sifra_zahtjeva'
    TableName = 'Priznanje_PB'
    Left = 404
    Top = 305
    object SortaSifra_zahtjeva: TAutoIncField
      DisplayLabel = 'Šifra'
      FieldName = 'Sifra_zahtjeva'
      ReadOnly = True
    end
    object SortaOznaka_sorte: TStringField
      DisplayLabel = 'Oznaka sorte'
      FieldName = 'Oznaka_sorte'
      Size = 30
    end
    object SortaIme_sorte: TStringField
      DisplayLabel = 'Ime sorte'
      FieldName = 'Ime_sorte'
      Size = 30
    end
    object Sorta_Vrstahrv: TStringField
      DisplayLabel = 'Hrvatski naziv vrste'
      FieldKind = fkLookup
      FieldName = 'Vrsta_hrv'
      LookupDataSet = tVrsta
      LookupKeyFields = 'Sifra_vrste'
      LookupResultField = 'Vrsta_hrv'
      KeyFields = 'Sifra_vrste'
      Size = 30
      Lookup = True
    end
    object Sorta_Vrstalat: TStringField
      DisplayLabel = 'Latinski naziv vrste'
      FieldKind = fkLookup
      FieldName = 'Vrsta_lat'
      LookupDataSet = tVrsta
      LookupKeyFields = 'Sifra_vrste'
      LookupResultField = 'Vrsta_lat'
      KeyFields = 'Sifra_vrste'
      Size = 50
      Lookup = True
    end
    object Sorta_Vrsta_Eng: TStringField
      DisplayLabel = 'Englesk naziv vrste'
      FieldKind = fkLookup
      FieldName = 'Vrsta_Eng'
      LookupDataSet = tVrsta
      LookupKeyFields = 'Sifra_vrste'
      LookupResultField = 'Vrsta_eng'
      KeyFields = 'Sifra_vrste'
      Visible = False
      Size = 30
      Lookup = True
    end
    object SortaNamjena: TMemoField
      FieldName = 'Namjena'
      Visible = False
      BlobType = ftMemo
      Size = 240
    end
    object SortaNamPov1: TBooleanField
      FieldName = 'NamPov1'
      Visible = False
    end
    object SortaNamPov2: TBooleanField
      FieldName = 'NamPov2'
      Visible = False
    end
    object SortaNamPov3: TBooleanField
      FieldName = 'NamPov3'
      Visible = False
    end
    object SortaSifra_dok: TSmallintField
      DisplayLabel = 'Šifra'
      FieldName = 'Sifra_dok'
      Required = True
      Visible = False
    end
    object SortaUpisni_broj: TStringField
      DisplayLabel = 'Upisni broj'
      FieldName = 'Upisni_broj'
      Required = True
      Visible = False
      Size = 6
    end
    object SortaTip_zahtjeva: TSmallintField
      FieldName = 'Tip_zahtjeva'
      Visible = False
    end
    object SortaDatum_promjene: TDateTimeField
      DisplayLabel = 'Datum promjene'
      FieldName = 'Datum_promjene'
      Visible = False
    end
    object SortaSifra_vrste: TIntegerField
      DisplayLabel = 'Šifra vrste'
      FieldName = 'Sifra_vrste'
    end
    object Sortalook_Tip_Sorte: TStringField
      FieldKind = fkLookup
      FieldName = 'look_Tip_Sorte'
      LookupDataSet = tTipSorte
      LookupKeyFields = 'Sifra_tipa_sorte'
      LookupResultField = 'Naziv_tipa_sorte'
      KeyFields = 'Tip_zahtjeva'
      Visible = False
      Size = 30
      Lookup = True
    end
    object SortaSastojci: TMemoField
      FieldName = 'Sastojci'
      BlobType = ftMemo
      Size = 100
    end
    object SortaOpis: TMemoField
      FieldName = 'Opis'
      BlobType = ftMemo
      Size = 100
    end
  end
end
