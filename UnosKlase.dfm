inherited FUnosKlasa: TFUnosKlasa
  Left = 197
  Top = 194
  Height = 548
  Caption = 'Unos klasa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pregled: TPageControl
    Height = 521
    ActivePage = Tpregled
    inherited Tpregled: TTabSheet
      inherited TBar: TToolBar
        inherited DBNavigator3: TDBNavigator
          Hints.Strings = ()
        end
      end
      inherited PanelGrid: TPanel
        Height = 457
        inherited DBGrid11: TdxDBGrid
          Height = 443
          Filter.Criteria = {00000000}
        end
      end
    end
    inherited Tunos: TTabSheet
      inherited Panel1: TPanel
        Height = 492
        object Label4: TLabel [1]
          Left = 108
          Top = 68
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Šifra:'
          FocusControl = DBEdit4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel [2]
          Left = 74
          Top = 92
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Naziv klase:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel [3]
          Left = 52
          Top = 157
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
        inherited Panel2: TPanel
          Height = 460
        end
        object DBEdit4: TDBEdit
          Left = 136
          Top = 64
          Width = 49
          Height = 21
          DataField = 'Sifra'
          DataSource = dsTable
          Enabled = False
          TabOrder = 1
        end
        object DBEdit1: TDBEdit
          Tag = 128
          Left = 136
          Top = 88
          Width = 169
          Height = 21
          DataField = 'NazivKlase'
          DataSource = dsTable
          TabOrder = 2
          OnKeyDown = Kdown
        end
        object DBEdit6: TDBEdit
          Tag = 128
          Left = 136
          Top = 153
          Width = 113
          Height = 21
          DataField = 'Datum_promjene'
          DataSource = dsTable
          Enabled = False
          TabOrder = 3
        end
      end
    end
  end
  inherited TQ: TRxQuery
    Left = 339
    Top = 306
  end
  inherited dsTable: TDataSource
    DataSet = tKlase
  end
  object tKlase: TTable
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
    IndexFieldNames = 'Sifra'
    TableName = 'Klase'
    Left = 436
    Top = 308
    object tKlaseSifra: TAutoIncField
      FieldName = 'Sifra'
      ReadOnly = True
    end
    object tKlaseNazivKlase: TStringField
      FieldName = 'NazivKlase'
    end
    object tKlaseDatum_Promjene: TDateTimeField
      FieldName = 'Datum_Promjene'
      Visible = False
    end
  end
end
