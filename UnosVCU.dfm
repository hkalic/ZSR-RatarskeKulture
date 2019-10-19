inherited FUnosVCU: TFUnosVCU
  Left = 231
  Top = 165
  Height = 427
  Caption = 'Šifrarnik statusa VCU-a'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pregled: TPageControl
    Height = 400
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
        Height = 371
        object Label4: TLabel [1]
          Left = 58
          Top = 68
          Width = 74
          Height = 13
          Alignment = taRightJustify
          Caption = 'Oznaka VCU-a:'
          FocusControl = DBEdit4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel [2]
          Left = 40
          Top = 100
          Width = 92
          Height = 13
          Alignment = taRightJustify
          Caption = 'Naziv statusa VCU:'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel [3]
          Left = 36
          Top = 133
          Width = 134
          Height = 13
          Alignment = taRightJustify
          Caption = 'Boja za prikazivanje statusa:'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        inherited Panel2: TPanel
          Height = 339
        end
        object DBEdit4: TDBEdit
          Tag = 128
          Left = 136
          Top = 64
          Width = 57
          Height = 21
          DataField = 'VCU_oznaka'
          DataSource = dsTable
          TabOrder = 1
        end
        object DBEdit1: TDBEdit
          Tag = 128
          Left = 136
          Top = 96
          Width = 273
          Height = 21
          DataField = 'VCU_Status'
          DataSource = dsTable
          TabOrder = 2
        end
        object dxDBButtonEdit1: TdxDBButtonEdit
          Left = 174
          Top = 130
          Width = 110
          TabOrder = 3
          DataField = 'Boja'
          DataSource = dsTable
          Buttons = <
            item
              Default = True
            end>
          OnButtonClick = dxDBButtonEdit1ButtonClick
          ExistButtons = True
        end
        object Panel3: TPanel
          Left = 303
          Top = 130
          Width = 61
          Height = 22
          TabOrder = 4
        end
      end
    end
  end
  inherited dsTable: TDataSource
    DataSet = sVCU
    OnDataChange = dsTableDataChange
  end
  object sVCU: TTable
    DatabaseName = 'kulture'
    IndexFieldNames = 'VCU_oznaka'
    TableName = 'VCU_status'
    Left = 436
    Top = 305
    object sVCUVCU_oznaka: TStringField
      DisplayLabel = 'Oznaka VCU'
      FieldName = 'VCU_oznaka'
      Required = True
      Size = 5
    end
    object sVCUVCU_Status: TStringField
      DisplayLabel = 'Naziv statusa VCU'
      FieldName = 'VCU_Status'
      Size = 40
    end
    object sVCUBoja: TStringField
      FieldName = 'Boja'
      Visible = False
      Size = 10
    end
  end
  object ColorDialog1: TColorDialog
    Ctl3D = True
    Left = 452
    Top = 173
  end
end
