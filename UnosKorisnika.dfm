inherited FUnosKorisnika: TFUnosKorisnika
  Left = 301
  Top = 102
  Caption = 'Unos korisnika'
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
          Left = 68
          Top = 92
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ime i prezime:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel [3]
          Left = 61
          Top = 117
          Width = 71
          Height = 13
          Alignment = taRightJustify
          Caption = 'Korisnièko ime:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel [4]
          Left = 92
          Top = 142
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'Lozinka:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
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
          DataField = 'ImePrezime'
          DataSource = dsTable
          TabOrder = 2
        end
        object DBEdit2: TDBEdit
          Left = 136
          Top = 113
          Width = 169
          Height = 21
          DataField = 'LoginName'
          DataSource = dsTable
          TabOrder = 3
        end
        object DBEdit3: TDBEdit
          Left = 136
          Top = 138
          Width = 169
          Height = 21
          DataField = 'Lozinka'
          DataSource = dsTable
          PasswordChar = '*'
          TabOrder = 4
        end
      end
    end
  end
  inherited dsTable: TDataSource
    DataSet = tKorisnici
  end
  object tKorisnici: TTable
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
    TableName = 'Korisnici'
    Left = 435
    Top = 303
    object tKorisniciSifra: TAutoIncField
      DisplayLabel = 'Šifra'
      FieldName = 'Sifra'
      ReadOnly = True
    end
    object tKorisniciImePrezime: TStringField
      DisplayLabel = 'Ime i prezime'
      FieldName = 'ImePrezime'
      Required = True
      Size = 50
    end
    object tKorisniciLoginName: TStringField
      DisplayLabel = 'Korisnièko ime'
      FieldName = 'LoginName'
      Required = True
    end
    object tKorisniciLozinka: TStringField
      FieldName = 'Lozinka'
      Visible = False
    end
  end
end
