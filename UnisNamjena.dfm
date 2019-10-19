inherited UnosNamjena: TUnosNamjena
  Caption = 'Unos namjena'
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
          OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        end
      end
    end
    inherited Tunos: TTabSheet
      inherited Panel1: TPanel
        object Label2: TLabel [1]
          Left = 68
          Top = 52
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = #352'ifra:'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel [2]
          Left = 47
          Top = 84
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
        object DBEdit2: TDBEdit
          Left = 96
          Top = 48
          Width = 57
          Height = 21
          DataField = 'SifraNamjene'
          DataSource = dsTable
          Enabled = False
          TabOrder = 1
        end
        object DBMemo1: TDBMemo
          Tag = 128
          Left = 96
          Top = 80
          Width = 273
          Height = 65
          DataField = 'Namjena'
          DataSource = dsTable
          TabOrder = 2
        end
      end
    end
  end
  inherited dsTable: TDataSource
    DataSet = tNamjena
  end
  object tNamjena: TTable
    Active = True
    AfterInsert = TsAfterInsert
    AfterEdit = TsAfterEdit
    AfterPost = aAfterPost
    AfterCancel = aAfterCancel
    DatabaseName = 'kulture'
    IndexFieldNames = 'SifraNamjene'
    TableName = 'Namjena'
    Left = 436
    Top = 305
    object tNamjenaSifraNamjene: TAutoIncField
      DisplayLabel = #352'ifra'
      FieldName = 'SifraNamjene'
      ReadOnly = True
    end
    object tNamjenaNamjena: TMemoField
      FieldName = 'Namjena'
      BlobType = ftMemo
      Size = 240
    end
  end
end
