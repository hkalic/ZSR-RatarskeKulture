inherited FUnosDrzava: TFUnosDrzava
  Left = 271
  Top = 155
  Caption = 'Šifrarnik država'
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
          Left = 76
          Top = 61
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Šifra:'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel [2]
          Left = 35
          Top = 85
          Width = 65
          Height = 13
          Alignment = taRightJustify
          Caption = 'Naziv države:'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit3: TDBEdit
          Tag = 1
          Left = 104
          Top = 57
          Width = 57
          Height = 21
          DataField = 'Sifra'
          DataSource = dsTable
          Enabled = False
          TabOrder = 1
        end
        object DBEdit1: TDBEdit
          Tag = 128
          Left = 104
          Top = 81
          Width = 129
          Height = 21
          DataField = 'Naziv_Drzave'
          DataSource = dsTable
          TabOrder = 2
        end
      end
    end
  end
  inherited dsTable: TDataSource
    DataSet = tDrzava
  end
  object tDrzava: TTable
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
    TableName = 'Drzava'
    Left = 436
    Top = 305
    object tDrzavaSifra: TAutoIncField
      DisplayLabel = 'Šifra'
      FieldName = 'Sifra'
      ReadOnly = True
    end
    object tDrzavaNaziv_Drzave: TStringField
      DisplayLabel = 'Naziv države'
      FieldName = 'Naziv_Drzave'
      Size = 60
    end
  end
end
