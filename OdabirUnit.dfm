object Odabir: TOdabir
  Left = 260
  Top = 152
  Width = 615
  Height = 374
  Caption = 'Odabir '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 607
    Height = 347
    Align = alClient
    TabOrder = 0
    object dxDBGrid1: TdxDBGrid
      Left = 1
      Top = 1
      Width = 605
      Height = 345
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 0
      OnKeyDown = dxDBGrid1KeyDown
      OnKeyPress = dxDBGrid1KeyPress
      DataSource = dsOdabir
      Filter.Criteria = {00000000}
    end
  end
  object qOdabir: TQuery
    DatabaseName = 'kulture'
    Left = 264
    Top = 80
  end
  object dsOdabir: TDataSource
    DataSet = qOdabir
    Left = 232
    Top = 80
  end
end
