inherited FUnosDUS: TFUnosDUS
  Caption = 'Šifrarnik statusa DUS-a'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pregled: TPageControl
    ActivePage = Tunos
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
          Left = 57
          Top = 68
          Width = 75
          Height = 13
          Alignment = taRightJustify
          Caption = 'Oznaka DUS-a:'
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
          Top = 100
          Width = 93
          Height = 13
          Alignment = taRightJustify
          Caption = 'Naziv statusa DUS:'
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
          Width = 57
          Height = 21
          DataField = 'DUS_oznaka'
          DataSource = dsTable
          TabOrder = 1
        end
        object DBEdit1: TDBEdit
          Tag = 128
          Left = 136
          Top = 96
          Width = 273
          Height = 21
          DataField = 'DUS_Status'
          DataSource = dsTable
          TabOrder = 2
        end
      end
    end
  end
  inherited dsTable: TDataSource
    DataSet = Table1
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'DUS_oznaka'
    TableName = 'DUS_status.DB'
    Left = 436
    Top = 305
    object Table1DUS_oznaka: TStringField
      DisplayLabel = 'Oznaka DUS-a'
      FieldName = 'DUS_oznaka'
      Required = True
      Size = 5
    end
    object Table1DUS_Status: TStringField
      DisplayLabel = 'Naziv statusa DUS'
      FieldName = 'DUS_Status'
      Size = 40
    end
  end
end
