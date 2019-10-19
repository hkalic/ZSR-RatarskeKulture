object FZahtjevPravo: TFZahtjevPravo
  Left = 107
  Top = 224
  Width = 917
  Height = 516
  Caption = 'Zahtjev za stjecanje oplemenjiva'#269'kog prava'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 909
    Height = 489
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabIndex = 1
    TabOrder = 0
    TabStop = False
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Podatci o zahtjevima'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      object ToolBar1: TToolBar
        Left = 0
        Top = 0
        Width = 901
        Height = 26
        ButtonWidth = 43
        Caption = 'ToolBar2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        List = True
        ParentFont = False
        ShowCaptions = True
        TabOrder = 0
        object wwDBNavigator2: TwwDBNavigator
          Left = 0
          Top = 2
          Width = 225
          Height = 22
          AutosizeStyle = asSizeNavButtons
          DataSource = dsZahtjev_Master
          Flat = False
          ShowHint = True
          RepeatInterval.InitialDelay = 500
          RepeatInterval.Interval = 100
          Align = alRight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentShowHint = False
          object btNovi: TwwNavButton
            Left = 0
            Top = 0
            Width = 75
            Height = 22
            Hint = 'Unos novog'
            ImageIndex = 0
            NumGlyphs = 2
            ShowText = True
            Spacing = 4
            Transparent = False
            Caption = 'Novi'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 0
            Style = nbsInsert
          end
          object btIzmjena: TwwNavButton
            Left = 75
            Top = 0
            Width = 75
            Height = 22
            Hint = 'Izmjena ozna'#263'enog podatka'
            ImageIndex = 0
            NumGlyphs = 2
            ShowText = True
            Spacing = 4
            Transparent = False
            Caption = 'Izmjena'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 1
            Style = nbsEdit
          end
          object btObnovi: TwwNavButton
            Left = 150
            Top = 0
            Width = 75
            Height = 22
            Hint = 'Obnovi podatke'
            ImageIndex = 0
            NumGlyphs = 2
            ShowText = True
            Spacing = 4
            Transparent = False
            Caption = 'Obnovi'
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            OnClick = btObnoviClick
            Index = 2
            Style = nbsCustom
          end
        end
      end
      object dxDBGrid1: TdxDBGrid
        Left = 0
        Top = 26
        Width = 901
        Height = 432
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'Sifra_zahtjeva'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        Color = clBtnFace
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnDblClick = dxDBGrid1DblClick
        OnKeyDown = dxDBGrid1KeyDown
        BandFont.Charset = EASTEUROPE_CHARSET
        BandFont.Color = clBlack
        BandFont.Height = -13
        BandFont.Name = 'Arial'
        BandFont.Style = []
        DataSource = dsZahtjev_Master
        Filter.Criteria = {00000000}
        GridLineColor = clGray
        HeaderColor = clSkyBlue
        HeaderFont.Charset = EASTEUROPE_CHARSET
        HeaderFont.Color = clNavy
        HeaderFont.Height = -11
        HeaderFont.Name = 'MS Sans Serif'
        HeaderFont.Style = []
        OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSmartRefresh, edgoSmartReload, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlack
        PreviewFont.Height = -13
        PreviewFont.Name = 'Arial'
        PreviewFont.Style = [fsBold, fsItalic]
        object dxDBGrid1Upisni_broj: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Upisni_broj'
        end
        object dxDBGrid1Datum_prijavljivanja: TdxDBGridDateColumn
          Width = 80
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Datum_prijavljivanja'
        end
        object dxDBGrid1Ime_sorte: TdxDBGridMaskColumn
          Width = 130
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Ime_sorte'
        end
        object dxDBGrid1Oznaka_sorte: TdxDBGridMaskColumn
          Width = 117
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Oznaka_sorte'
        end
        object dxDBGrid1Vrsta_hrv: TdxDBGridMaskColumn
          Width = 182
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Vrsta_hrv'
        end
        object dxDBGrid1Vrsta_lat: TdxDBGridMaskColumn
          Visible = False
          Width = 610
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Vrsta_lat'
        end
        object dxDBGrid1Ime_partnera: TdxDBGridMaskColumn
          Width = 224
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Ime_partnera'
        end
        object dxDBGrid1Sifra_zahtjeva: TdxDBGridMaskColumn
          Visible = False
          Width = 62
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Sifra_zahtjeva'
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Detalji zahtjeva'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ImageIndex = 1
      ParentFont = False
      object ToolBar2: TToolBar
        Left = 0
        Top = 0
        Width = 901
        Height = 28
        ButtonWidth = 68
        Caption = 'ToolBar2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Images = Images
        List = True
        ParentFont = False
        ShowCaptions = True
        TabOrder = 0
        object wwDBNavigator1: TwwDBNavigator
          Left = 0
          Top = 2
          Width = 289
          Height = 22
          AutosizeStyle = asSizeNavButtons
          DataSource = ds
          Flat = False
          ShowHint = True
          RepeatInterval.InitialDelay = 500
          RepeatInterval.Interval = 100
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentShowHint = False
          object wwNavButton2: TwwNavButton
            Left = 0
            Top = 0
            Width = 58
            Height = 22
            Hint = 'Unos novog'
            ImageIndex = 0
            NumGlyphs = 2
            ShowText = True
            Spacing = 4
            Transparent = False
            Caption = 'Novi'
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 0
            Style = nbsInsert
          end
          object wwNavButton5: TwwNavButton
            Left = 58
            Top = 0
            Width = 58
            Height = 22
            Hint = 'Izmjena ozna'#263'enog podatka'
            ImageIndex = 0
            NumGlyphs = 2
            ShowText = True
            Spacing = 4
            Transparent = False
            Caption = 'Izmjena'
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 1
            Style = nbsEdit
          end
          object wwNavButton6: TwwNavButton
            Left = 116
            Top = 0
            Width = 58
            Height = 22
            Hint = 'Obnovi podatke'
            ImageIndex = 0
            NumGlyphs = 2
            ShowText = True
            Spacing = 4
            Transparent = False
            Caption = 'Obnovi'
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 2
            Style = nbsCustom
            Visible = False
          end
          object wwNavButton7: TwwNavButton
            Left = 174
            Top = 0
            Width = 58
            Height = 22
            Hint = 'Snimi promjene sloga'
            ImageIndex = 0
            NumGlyphs = 2
            ShowText = True
            Spacing = 4
            Transparent = False
            Caption = 'Prihvati'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 3
            Style = nbsPost
          end
          object wwNavButton8: TwwNavButton
            Left = 232
            Top = 0
            Width = 57
            Height = 22
            Hint = 'Odustani od izmjena sloga'
            ImageIndex = 0
            NumGlyphs = 2
            ShowText = True
            Spacing = 4
            Transparent = False
            Caption = 'Otka'#382'i'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 4
            Style = nbsCancel
          end
        end
        object Splitter1: TSplitter
          Left = 289
          Top = 2
          Width = 16
          Height = 22
          Cursor = crHSplit
        end
        object DBNavigator1: TDBNavigator
          Left = 305
          Top = 2
          Width = 160
          Height = 22
          DataSource = ds
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alRight
          TabOrder = 1
        end
        object Print: TToolButton
          Left = 465
          Top = 2
          AutoSize = True
          Caption = 'Printanje'
          Enabled = False
          ImageIndex = 7
          Visible = False
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 28
        Width = 901
        Height = 430
        Align = alClient
        TabOrder = 1
        object wwDBLookupCombo9: TwwDBLookupCombo
          Tag = 1
          Left = 128
          Top = 112
          Width = 272
          Height = 22
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Ime_partnera'#9'60'#9'Ime partnera'#9'F'#9
            'Adresa'#9'60'#9'Adresa'#9'F'#9
            'Mjesto'#9'25'#9'Mjesto'#9'F'#9)
          DataField = 'look_ImeOplemenjivaca'
          DataSource = ds
          LookupTable = tPartner2
          LookupField = 'Sifra_partnera'
          Options = [loColLines, loSearchOnBackspace]
          Frame.Enabled = True
          Frame.FocusStyle = efsFrameBump
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 3
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = False
          ShowMatchText = True
          OnKeyDown = DelLookup
        end
        object wwDBLookupCombo10: TwwDBLookupCombo
          Left = 128
          Top = 88
          Width = 272
          Height = 22
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Ime_partnera'#9'60'#9'Ime partnera'#9#9
            'Adresa'#9'60'#9'Adresa'#9#9
            'Mjesto'#9'25'#9'Mjesto'#9#9)
          DataField = 'look_ImePodnositelja'
          DataSource = ds
          LookupTable = tPartner1
          LookupField = 'Sifra_partnera'
          Options = [loColLines, loSearchOnBackspace]
          Frame.Enabled = True
          Frame.FocusStyle = efsFrameBump
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 2
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = False
          ShowMatchText = True
          OnKeyDown = DelLookup
        end
        object wwDBEdit25: TwwDBEdit
          Left = 176
          Top = 8
          Width = 49
          Height = 22
          TabStop = False
          BorderStyle = bsNone
          DataField = 'Upisni_broj'
          DataSource = ds
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          Picture.PictureMask = '######'
          ReadOnly = True
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit83: TdxEdit
          Left = 72
          Top = 8
          Width = 89
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 13
          Text = 'Upisni broj:'
          Alignment = taRightJustify
          StyleController = dxEditStyleController1
          StoredValues = 1
        end
        object dxEdit84: TdxEdit
          Left = 15
          Top = 40
          Width = 145
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 14
          Text = 'Datum prijavljivanja:'
          Alignment = taRightJustify
          StyleController = dxEditStyleController1
          StoredValues = 1
        end
        object wwDBDateTimePicker23: TwwDBDateTimePicker
          Left = 160
          Top = 40
          Width = 121
          Height = 19
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          ButtonStyle = cbsEllipsis
          DataField = 'Datum_prijavljivanja'
          DataSource = ds
          Date = 38614
          Epoch = 1950
          Frame.Enabled = True
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = True
          TabOrder = 1
          OnKeyDown = DelTimePick
        end
        object dxEdit85: TdxEdit
          Left = 32
          Top = 208
          Width = 97
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 15
          Text = 'Naziv vrste:'
          Alignment = taRightJustify
          StyleController = dxEditStyleController1
          StoredValues = 1
        end
        object dxEdit86: TdxEdit
          Left = 32
          Top = 88
          Width = 97
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 16
          Text = 'Podnositelj:'
          Alignment = taRightJustify
          StyleController = dxEditStyleController1
          StoredValues = 1
        end
        object dxEdit87: TdxEdit
          Left = 16
          Top = 112
          Width = 113
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 17
          Text = 'Oplemenjiva'#269':'
          Alignment = taRightJustify
          StyleController = dxEditStyleController1
          StoredValues = 1
        end
        object dxEdit89: TdxEdit
          Left = 448
          Top = 160
          Width = 297
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 18
          Text = 'Podneseni zahtjevi izvan Republike Hrvatske:'
          Alignment = taLeftJustify
          StyleController = dxEditStyleController1
          StoredValues = 1
        end
        object wwDBEdit32: TwwDBEdit
          Left = 160
          Top = 8
          Width = 17
          Height = 22
          BorderStyle = bsNone
          DataField = 'Sifra_dok'
          DataSource = ds
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 19
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit113: TdxEdit
          Left = 24
          Top = 232
          Width = 105
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 20
          Text = 'Oznaka sorte:'
          Alignment = taRightJustify
          StyleController = dxEditStyleController1
          StoredValues = 1
        end
        object dxEdit114: TdxEdit
          Left = 8
          Top = 256
          Width = 121
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 21
          Text = 'Predlo'#382'eno ime:'
          Alignment = taRightJustify
          StyleController = dxEditStyleController1
          StoredValues = 1
        end
        object wwDBEdit33: TwwDBEdit
          Left = 128
          Top = 256
          Width = 273
          Height = 22
          BorderStyle = bsNone
          DataField = 'look_ImeSorte'
          DataSource = ds
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 6
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBLookupCombo13: TwwDBLookupCombo
          Left = 128
          Top = 232
          Width = 273
          Height = 22
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Oznaka_sorte'#9'30'#9'Oznaka_sorte'#9'F'#9
            'Ime_sorte'#9'30'#9'Ime_sorte'#9'F'#9
            'look_Vrsta_HR'#9'30'#9'Vrsta hrvatski'#9'F'#9
            'Sifra_vrste'#9'10'#9#352'ifra vrste'#9'F'#9)
          DataField = 'look_OznakaSorte'
          DataSource = ds
          LookupTable = tZahtPB
          LookupField = 'Sifra_zahtjeva'
          Options = [loColLines, loSearchOnBackspace]
          Frame.Enabled = True
          Frame.FocusStyle = efsFrameBump
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 5
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = False
          ShowMatchText = True
          OnKeyDown = DelLookup
          OnMouseLeave = wwDBLookupCombo13MouseLeave
        end
        object wwDBEdit37: TwwDBEdit
          Left = 128
          Top = 208
          Width = 273
          Height = 22
          BorderStyle = bsNone
          DataField = 'look_VrstaHR'
          DataSource = ds
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 4
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit123: TdxEdit
          Left = 24
          Top = 136
          Width = 105
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 22
          Text = 'Ime zastupnik:'
          Alignment = taRightJustify
          StyleController = dxEditStyleController1
          StoredValues = 1
        end
        object dxEdit88: TdxEdit
          Left = 6
          Top = 312
          Width = 123
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 23
          Text = 'Zemlja razvoja:'
          Alignment = taRightJustify
          StyleController = dxEditStyleController1
          StoredValues = 1
        end
        object wwCheckBox8: TwwCheckBox
          Left = 440
          Top = 6
          Width = 161
          Height = 25
          AlwaysTransparent = False
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          DisplayValueChecked = 'True'
          DisplayValueUnchecked = 'False'
          NullAndBlankState = cbUnchecked
          Alignment = taLeftJustify
          Caption = 'Sorta ve'#263' kori'#353'tena?'
          Checked = True
          Color = clMenu
          DataField = 'Koristena_prodavana'
          DataSource = ds
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clInactiveCaption
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          State = cbChecked
          TabOrder = 8
          OnClick = wwCheckBox8Click
        end
        object Panel4: TPanel
          Left = 424
          Top = 32
          Width = 345
          Height = 129
          BevelOuter = bvNone
          TabOrder = 10
          object dxEdit90: TdxEdit
            Left = 22
            Top = 9
            Width = 113
            Color = clMenu
            Enabled = False
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 0
            Text = 'U kojoj zemlji?'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit91: TdxEdit
            Left = 24
            Top = 40
            Width = 193
            Color = clMenu
            Enabled = False
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 4
            Text = 'Datum 1. prodaje/ustupanja:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBDateTimePicker24: TwwDBDateTimePicker
            Left = 224
            Top = 40
            Width = 97
            Height = 22
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            ButtonStyle = cbsEllipsis
            DataField = 'Datum_kor_prod'
            DataSource = ds
            Epoch = 1950
            Frame.Enabled = True
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ShowButton = True
            TabOrder = 1
            OnKeyDown = DelTimePick
          end
          object dxEdit92: TdxEdit
            Left = 0
            Top = 65
            Width = 137
            Color = clMenu
            Enabled = False
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 5
            Text = 'Pod kojim uvjetima?'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBEdit28: TwwDBEdit
            Left = 136
            Top = 67
            Width = 185
            Height = 22
            BorderStyle = bsNone
            DataField = 'Koji_uvjeti'
            DataSource = ds
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            ParentFont = False
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwCheckBox9: TwwCheckBox
            Left = 80
            Top = 96
            Width = 185
            Height = 25
            AlwaysTransparent = False
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            DisplayValueChecked = 'True'
            DisplayValueUnchecked = 'False'
            NullAndBlankState = cbUnchecked
            Alignment = taLeftJustify
            Caption = 'Podnositeljev pristanak?'
            Color = clMenu
            DataField = 'Podnositeljev_pristanak'
            DataSource = ds
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clInactiveCaption
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 3
          end
        end
        object wwCheckBox10: TwwCheckBox
          Left = 488
          Top = 278
          Width = 217
          Height = 25
          AlwaysTransparent = False
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          DisplayValueChecked = 'True'
          DisplayValueUnchecked = 'False'
          NullAndBlankState = cbUnchecked
          Alignment = taLeftJustify
          Caption = 'Da li tra'#382'ite pravo prvenstva?'
          Color = clMenu
          DataField = 'Pravo_za_zahtjev'
          DataSource = ds
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clInactiveCaption
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 11
          OnClick = wwCheckBox10Click
        end
        object dxEdit93: TdxEdit
          Left = 488
          Top = 313
          Width = 217
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 24
          Text = 'Pravo prvenstva za koji zahtjev?'
          Alignment = taRightJustify
          StyleController = dxEditStyleController1
          StoredValues = 1
        end
        object wwDBEdit29: TwwDBEdit
          Left = 432
          Top = 339
          Width = 353
          Height = 22
          Hint = 'F1 - odabir prava prvenstva'
          BorderStyle = bsNone
          DataField = 'Koji_zahtjev'
          DataSource = ds
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
          OnKeyDown = wwDBEdit29KeyDown
        end
        object wwDBEdit1: TwwDBEdit
          Left = 128
          Top = 136
          Width = 273
          Height = 22
          BorderStyle = bsNone
          DataField = 'Ime_zastupnika'
          DataSource = ds
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 25
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit1: TdxEdit
          Left = 0
          Top = 160
          Width = 129
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 26
          Text = 'Adresa zastupnika:'
          Alignment = taRightJustify
          StyleController = dxEditStyleController1
          StoredValues = 1
        end
        object wwDBEdit2: TwwDBEdit
          Left = 128
          Top = 160
          Width = 273
          Height = 22
          BorderStyle = bsNone
          DataField = 'Adresa_zastupnika'
          DataSource = ds
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 27
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxDBGrid2: TdxDBGrid
          Left = 416
          Top = 184
          Width = 465
          Height = 83
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'Podneseni_zahtjevi'
          SummaryGroups = <>
          SummarySeparator = ', '
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 28
          OnExit = wwDBGrid5Exit
          OnKeyDown = wwDBGrid5KeyDown
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = [fsBold]
          DataSource = dsQZemlje
          Filter.Criteria = {00000000}
          HeaderFont.Charset = EASTEUROPE_CHARSET
          HeaderFont.Color = clNavy
          HeaderFont.Height = -13
          HeaderFont.Name = 'Arial'
          HeaderFont.Style = [fsBold]
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = [fsBold]
          object dxDBGrid2look_NazivDrzave: TdxDBGridLookupColumn
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'look_NazivDrzave'
          end
          object dxDBGrid2Datum: TdxDBGridDateColumn
            Width = 71
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Datum'
            DateOnError = deNull
            DateValidation = True
            SaveTime = False
          end
          object dxDBGrid2Registarski_broj: TdxDBGridMaskColumn
            Width = 127
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Registarski_broj'
          end
          object dxDBGrid2Ime: TdxDBGridMaskColumn
            Width = 108
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Ime'
          end
          object dxDBGrid2Drzava: TdxDBGridMaskColumn
            Visible = False
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Drzava'
          end
          object dxDBGrid2Datum_promjene: TdxDBGridDateColumn
            Visible = False
            Width = 122
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Datum_promjene'
          end
          object dxDBGrid2Sifra_zahtjeva: TdxDBGridMaskColumn
            Visible = False
            Width = 102
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Sifra_zahtjeva'
          end
        end
        object wwDBLookupCombo12: TwwDBLookupCombo
          Tag = 2
          Left = 128
          Top = 312
          Width = 273
          Height = 22
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Naziv_Drzave'#9'40'#9'Naziv dr'#382'ave'#9'F'#9)
          DataField = 'look_MaticnaZemlja'
          DataSource = ds
          LookupTable = tDrzava2
          LookupField = 'Sifra'
          Options = [loColLines, loSearchOnBackspace]
          Frame.Enabled = True
          Frame.FocusStyle = efsFrameBump
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 7
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = False
          ShowMatchText = True
          OnKeyDown = DelLookup
        end
        object wwDBLookupCombo1: TwwDBLookupCombo
          Tag = 2
          Left = 560
          Top = 42
          Width = 273
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Naziv_Drzave'#9'40'#9'Naziv dr'#382'ave'#9'F'#9)
          DataField = 'look_KojaZemlja'
          DataSource = ds
          LookupTable = tDrzava3
          LookupField = 'Sifra'
          Options = [loColLines, loSearchOnBackspace]
          Frame.Enabled = True
          Frame.FocusStyle = efsFrameBump
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 9
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = False
          ShowMatchText = True
          OnKeyDown = DelLookup
        end
      end
    end
  end
  object dxEditStyleController1: TdxEditStyleController
    BorderStyle = xbsNone
    Left = 400
  end
  object Images: TImageList
    Left = 432
    Top = 4
    Bitmap = {
      494C010149004A00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003001000001001000000000000098
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001000104200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001000100010420000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000100010001000104200000000EF3DF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75E000000000000000000000000000000000000000000000F00
      0F000F000F000F00000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000000000000000000000000000000000
      000000000000100010001000100010420000EF3DFF7FE07FFF7FFF7FFF7FFF7F
      FF7FEF3D000000000000EF3D00000000000000000F000F000F000F000F000F00
      0F000F000F000F000F000F000F000F000F000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F0000000000000000EF3D0000000000000000FF7FFF7FFF7F10001000FF7F
      FF7FFF7FFF7F100010001000100010000000EF3DFF7FFF7FFF7F000000000000
      0000EF3DF75EF75EEF3D0000EF3D0000000000000F000F000F000F000F000F00
      EF3D0F00FF7F0F000F000F000F000F000F000000FF7FFF7FFF7FFF7FFF7FFF7F
      0000EF3DF75EF75EEF3D0000EF3D000000000000FF7FFF7F1000FF7FFF7F1000
      FF7FFF7FFF7F100010001000100000000000EF3DFF7FE07F00001F001F000000
      EF3DF75EF75EFF03EF3DEF3D00000000000000000F000F00EF3DEF3DEF3DEF3D
      EF3D0F00FF7FFF7FFF7FFF7FFF7F0F000F000000FF7FFF7FFF7FFF7FFF7F0000
      EF3DF75EF75EFF03EF3DEF3D0000000000000000FF7FFF7F1000FF7FFF7FFF7F
      FF7FFF7FFF7F100010001000000000000000EF3DFF7FEF3D1F001F00E0010000
      F75EFF03F75EF75EEF3DF75E00000000000000000F000F00EF3DEF3DEF3DEF3D
      EF3D0F00FF7FFF7FFF7FFF7FFF7F0F000F000000FF7FFF7FFF7FFF7FFF7F0000
      F75EF75EF75EF75EEF3DF75E0000000000000000FF7FFF7F1000FF7FFF7F1000
      FF7FFF7FFF7F100010000000000000000000EF3DFF7FEF3D1F00E001E0010000
      FF03FF03FF03F75EEF3DF75E00000000000000000F000F00EF3DEF3DEF3DEF3D
      EF3D0F00FF7FFF7FFF7FFF7FFF7F0F000F000000FF7FFF7FFF7FFF7FFF7F0000
      F75EFF03F75EF75EEF3DF75E0000000000000000FF7FFF7FFF7F10001000FF7F
      FF7FFF7FFF7F1000FF7F0000000000000000EF3DFF7FEF3D1F00E001E001EF3D
      EF3DFF03FF03F75EEF3DEF3D00000000000000000F000F00EF3DEF3DEF3DEF3D
      EF3D0F00FF7FFF7FFF7FFF7FFF7F0F000F000000FF7FFF7FFF7FFF7FFF7F0000
      EF3DFF03FF03F75EEF3DEF3D0000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000000000000000EF3DFF7FEF3D1F00FF7FEF01E001
      0000EF3DFF03F75EEF3D000000000000000000000F000F00EF3DEF3DEF3DEF3D
      EF3D0F00FF7FFF7FFF7FFF7FFF7F0F000F000000FF7FFF7FFF7FFF7FFF7FFF7F
      0000EF3DF75EF75EEF3D00000000000000000000FF7FFF7F10001000FF7FFF7F
      FF7F100010001000FF7F0000000000000000EF3DFF7FFF7FEF3D1F00FF7F1F00
      E001EF3D000000000000000000000000000000000F000F00EF3DEF3DEF3DEF3D
      EF3D0F00FF7FFF7FFF7FFF7FFF7F0F000F000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F000000000000000000000000000000000000FF7F1000FF7FFF7F1000FF7F
      1000FF7FFF7FFF7FFF7F0000000000000000EF3DFF7FE07FFF7FEF3DEF3DEF3D
      EF3DFF7FFF7FE07F0000000000000000000000000F000F00EF3DEF3DEF3DEF3D
      EF3D0F00FF7FFF7FFF7FFF7FFF7F0F000F000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000000000FF7F1000FF7FFF7F1000FF7F
      1000100010001000FF7F0000000000000000EF3DFF7FFF7FFF7FE07FFF7FFF7F
      FF7F0000000000000000000000000000000000000F000F00EF3DEF3DEF3DEF3D
      0F0000000F00FF7FFF7FFF7FFF7F0F000F000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F000000000000000000000000000000000000FF7F1000FF7FFF7F1000FF7F
      1000FF7FFF7F1000FF7F0000000000000000EF3DFF7FE07FFF7FFF7FFF7FE07F
      FF7FF75EF75EEF3D00000000000000000000000000000F000F000F000F000F00
      0000000000000F000F000F000F000F0000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F0000F75E0000000000000000000000000000FF7FFF7F10001000FF7FFF7F
      FF7F10001000FF7FFF7F0000000000000000EF3DFF7FFF7FFF7FE07FFF7FFF7F
      FF7FF75EEF3D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EF3DEF3DEF3DEF3DEF3DEF3DEF3D
      EF3DEF3D00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000F00EF3D00000000000000000000000000000000000000000000
      0000000000000F00EF3D00000000000000000000000000000000000000000000
      0000000000001000104200000000000000000000000000000000000000000000
      0000000000001000104200000000000000000000000000000000000000000000
      0000000000000F000F00EF3D0000000000000000000000000000000000000000
      0000000000000F000F00EF3D0000000000000000000000000000000000000000
      0000000000001000100010420000000000000000000000000000000000000000
      0000000000001000100010420000000000000000000000000000000000000000
      0000000000000F000F000F00EF3D000000000000000000000000000000000000
      0000000000000F000F000F00EF3D000000000000000000000000000000000000
      0000000000001000100010001042000000000000000000000000000000000000
      0000000000001000100010001042000000000000000000000000000000000000
      0000000000000F000F000F000F00EF3D00000000000000000000000000000000
      0000000000000F000F000F000F00EF3D00000000000000000000000000000000
      0000000000001000100010001000104200000000000000000000000000000000
      0000000000001000100010001000104200000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F0F000F000F000F000F0000000000E07FE07FE07FE07FE07FE07F
      E07FE07FE07F0F000F000F000F000F0000000000FF03FF03FF03FF03FF03FF03
      FF03FF03FF031000100010001000100000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F1000100010001000100000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F0F000F000F000F00000000000000E07FE07FE07FE07FE07FE07F
      E07FE07FE07F0F000F000F000F00000000000000FF03FF03FF03FF03FF03FF03
      FF03FF03FF031000100010001000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F1000100010001000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F0F000F000F000000000000000000E07FE07FE07F000000000000
      0000E07FE07F0F000F000F000000000000000000FF03FF03FF03000000000000
      0000FF03FF031000100010000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F1000100010000000000000000000FF7F1F001F00FF7FFF7FFF7F
      1F001F00FF7F0F000F0000000000000000000000E07FE07F00000000E07FE07F
      00000000E07F0F000F0000000000000000000000FF03FF0300000000FF03FF03
      00000000FF031000100000000000000000000000FF7FFF7FFF7FFF7F10021002
      1002FF7FFF7F1000100000000000000000000000FF7F1F001F00FF7FFF7FFF7F
      1F001F00FF7F0F00FF7F00000000000000000000E07FE07F00000000E07FE07F
      00000000E07F0F00E07F00000000000000000000FF03FF0300000000FF03FF03
      00000000FF031000FF0300000000000000000000FF7FFF7FFF7FFF7F10021002
      1002FF7FFF7F1000FF7F00000000000000000000FF7F1F001F00FF7FFF7FFF7F
      1F001F00FF7FFF7FFF7F00000000000000000000E07FE07F00000000E07FE07F
      00000000E07FE07FE07F00000000000000000000FF03FF0300000000FF03FF03
      00000000FF03FF03FF0300000000000000000000FF7FFF7FFF7F10021002FF7F
      10021002FF7FFF7FFF7F00000000000000000000FF7F1F001F00FF7F1F00FF7F
      1F001F00FF7FFF7FFF7F00000000000000000000E07FE07F00000000E07FE07F
      00000000E07FE07FE07F00000000000000000000FF03FF0300000000FF03FF03
      00000000FF03FF03FF0300000000000000000000FF7FFF7FFF7F10021002FF7F
      10021002FF7FFF7FFF7F00000000000000000000FF7F1F001F001F00FF7F1F00
      1F001F00FF7FFF7FFF7F00000000000000000000E07FE07F00000000E07FE07F
      00000000E07FE07FE07F00000000000000000000FF03FF0300000000FF03FF03
      00000000FF03FF03FF0300000000000000000000FF7FFF7FFF7F10021002FF7F
      10021002FF7FFF7FFF7F00000000000000000000FF7F1F001F00FF7FFF7FFF7F
      1F001F00FF7FFF7FFF7F00000000000000000000E07FE07FE07F000000000000
      0000E07FE07FE07FE07F00000000000000000000FF03FF03FF03000000000000
      0000FF03FF03FF03FF0300000000000000000000FF7FFF7F10021002FF7FFF7F
      FF7F10021002FF7FFF7F00000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000E07FE07FE07FE07FE07FE07F
      E07FE07FE07FE07FE07F00000000000000000000FF03FF03FF03FF03FF03FF03
      FF03FF03FF03FF03FF0300000000000000000000FF7FFF7F10021002FF7FFF7F
      FF7F10021002FF7FFF7F00000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000E07FE07FE07FE07FE07FE07F
      E07FE07FE07FE07FE07F00000000000000000000FF03FF03FF03FF03FF03FF03
      FF03FF03FF03FF03FF0300000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000F00EF3D00000000000000000000000000000000000000000000
      0000000000000F00EF3D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000F000F00EF3D0000000000000000000000000000000000000000
      0000000000000F000F00EF3D0000000000000000000000000000FF7F00000000
      00000000000000000000FF7F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000F000F000F00EF3D000000000000000000000000000000000000
      0000000000000F000F000F00EF3D000000000000000000000000FF7F00000000
      00000000000000000000FF7F0000000000000000F75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75E00000000000000000000000000000000
      0000000000000F000F000F000F00EF3D00000000000000000000000000000000
      0000000000000F000F000F000F00EF3D00000000000000000000000000000000
      000000000000FF7F000000000000000000000000FF7FFF7FF75EFF7FFF7FFF7F
      F75EFF7FFF7FFF7FF75EFF7FFF7FF75E000000000F3C0F3C0F3C0F3C0F3C0F3C
      0F3C0F3C0F3C0F000F000F000F000F0000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F0F000F000F000F000F0000000F000F000F0000000000FF7F0000
      0000F75E0000FF7F000000000000000000000000FF7FFF7FF75EFF7FFF7FFF7F
      F75EFF7FFF7FFF7FF75EFF7FFF7FF75E000000000F3C0F3C0F3C0F3C0F3C0F3C
      0F3C0F3C0F3C0F000F000F000F00000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F0F000F000F000F00000000000F00FF7FFF7FFF7F000000000000
      0000F75E00000000000000000000000000000000F75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75E000000000F3C0F3C0F3CFF7FFF7FFF7F
      FF7F0F3C0F3C0F000F000F000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F0F000F000F000000000000000F00FF7FEF3DEF3D0000FF7F0000
      000000000000FF7F000000000000000000000000FF7FFF7FF75EFF7FFF7FFF7F
      F75EFF7FFF7FFF7FF75EFF7FFF7FF75E000000000F3C0F3CFF7FFF7F0F3C0F3C
      FF7FFF7F0F3C0F000F0000000000000000000000FF7FFF7FFF7F007C007C007C
      007CFF7FFF7F0F000F0000000000000000000F00FF7FFF7FFF7FFF7F00000000
      0000000000000000000000000000000000000000FF7FFF7FF75EFF7FFF7FFF7F
      F75EFF7FFF7FFF7FF75EFF7FFF7FF75E000000000F3C0F3CFF7FFF7F0F3C0F3C
      FF7FFF7F0F3C0F000F3C00000000000000000000FF7FFF7F007C007CFF7FFF7F
      007C007CFF7F0F00FF7F00000000000000000F00FF7FEF3DEF3DFF7F0000FF7F
      0000EF3DEF3D0000FF7F00000000000000000000F75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75E000000000F3C0F3CFF7FFF7F0F3C0F3C
      FF7FFF7F0F3C0F3C0F3C00000000000000000000FF7FFF7FFF7FFF7FFF7F007C
      007C007CFF7FFF7FFF7F00000000000000000F00FF7FFF7FFF7FFF7F00000000
      0000FF7FFF7F0000000000000000000000000000FF7FFF7FF75EFF7FFF7FFF7F
      F75EFF7FFF7FFF7FF75EFF7FFF7FF75E000000000F3C0F3CFF7FFF7F0F3C0F3C
      FF7FFF7F0F3C0F3C0F3C00000000000000000000FF7FFF7FFF7F007C007C007C
      007CFF7FFF7FFF7FFF7F00000000000000000F00FF7FEF3DEF3DFF7FEF3DEF3D
      FF7FEF3DEF3DFF7F0F0000000000000000000000FF7FFF7FF75EFF7FFF7FFF7F
      F75EFF7FFF7FFF7FF75EFF7FFF7FF75E000000000F3C0F3CFF7FFF7F0F3C0F3C
      FF7FFF7F0F3C0F3C0F3C00000000000000000000FF7FFF7F007C007C007CFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000F00FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F0F00000000000000000000000F000F000F000F000F000F00
      0F000F000F000F000F000F000F000F00000000000F3C0F3C0F3CFF7FFF7FFF7F
      FF7F0F3C0F3C0F3C0F3C00000000000000000000FF7FFF7F007C007CFF7FFF7F
      007C007CFF7FFF7FFF7F00000000000000000F000F000F000F000F000F000F00
      0F000F000F000F000F00000000000000000000000F000F000F000F000F000F00
      0F000F000F000F000F000F000F000F00000000000F3C0F3C0F3C0F3C0F3C0F3C
      0F3C0F3C0F3C0F3C0F3C00000000000000000000FF7FFF7FFF7F007C007C007C
      007CFF7FFF7FFF7FFF7F00000000000000000F00F75E0F000F00F75E0F000F00
      F75E0F000F00F75E0F0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000F3C0F3C0F3C0F3C0F3C0F3C
      0F3C0F3C0F3C0F3C0F3C00000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000F000F000F000F000F000F000F00
      0F000F000F000F000F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EF3DE001EF3DE001EF3D00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E001EF3DE001
      EF3DE001EF3DE001FF7FE001EF3DE00100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EF3DE001EF3D
      E001EF3DE001FF7FE001EF3DE00100000000EF3DEF3DEF3DEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3D00000000EF3DEF3DFF7FFF7FFF7F
      EF3DFF7FFF7FFF7FEF3DFF7FFF7FFF7F00000000000000000000000000000000
      0000000000000000000000000000000000000000F75EF75EF75EE001EF3DE001
      EF3DE001FF7FE001EF3DE001EF3DF75E0000EF3D00000000EF3D000000000000
      EF3D000000000000EF3D000000000000EF3D00000000EF3DEF3DFF7FFF7FFF7F
      EF3DFF7FFF7FFF7FEF3DFF7FFF7FFF7F00000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FF75EFF7FE001EF3D
      E001FF7FE001EF3DE001EF3DE001F75E0000EF3D00000000EF3D000000000000
      EF3D000000000000EF3D000000000000EF3D000000000000EF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3D00000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FF75EFF7FFF7FE001
      FF7FE001EF3DE001EF3DFF7FFF7FF75E0000EF3D00000000EF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3D0000E07F00000000FF7FFF7FFF7F
      EF3DFF7FFF7FFF7FEF3DFF7FFF7FFF7F00000000000000000000000000000000
      0000000000000000000000000000000000000000F75EF75EF75EF75EE001FF7F
      E001EF3DE001EF3DE001EF3DF75EF75E0000EF3D00000000EF3D000000000000
      EF3D000000000000EF3D000000000000EF3D0000EF3DE07F00000000FF7FFF7F
      EF3DFF7FFF7FFF7FEF3DFF7FFF7FFF7F00000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FF75EE001FF7FE001
      EF3DE001EF3DE001EF3DE001EF3DF75E0000EF3D00000000EF3D000000000000
      EF3D000000000000EF3D000000000000EF3D00000000EF3DE07F000000000000
      EF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3D00000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FF75EEF3DE001EF3D
      E001EF3DFF7FEF3DE001EF3DE001F75E0000EF3D00000000EF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3D0000000000000000FF7FE07F0000
      0000FF7FFF7FFF7FEF3DFF7FFF7FFF7F00000000000000000000000000000000
      0000000000000000000000000000000000000000F75EF75EF75EE001EF3DE001
      EF3DF75EF75EF75EEF3DE001EF3DF75E0000EF3D00000000EF3D000000000000
      EF3D000000000000EF3D000000000000EF3DEF3DFF7FE07FE07FE07FE07FE07F
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FF75EFF7FFF7FFF7F
      F75EFF7FFF7FFF7FF75EFF7FFF7FF75E0000EF3D00000000EF3D000000000000
      EF3D000000000000EF3D000000000000EF3D0000EF3DFF7FE07F00000000003C
      003C003C003C003C003C003C003C003C00000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FF75EFF7FFF7FFF7F
      F75EFF7FFF7FFF7FF75EFF7FFF7FF75E0000EF3DEF3DEF3DEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3D00000000EF3DFF7FE07F00000000
      003C003C003C003C003C003C003C003C00000000000000000000000000000000
      00000000000000000000000000000000000000000F000F000F000F000F000F00
      0F000F000F000F000F000F000F000F000000EF3D00000000EF3D000000000000
      00000000000000000000000000000000EF3D00000000EF3DFF7FE07FE07F0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000F000F000F000F000F000F00
      0F000F000F000F000F000F000F000F000000EF3D00000000EF3D000000000000
      00000000000000000000000000000000EF3D000000000000EF3DFF7FE07FE07F
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EF3DEF3DEF3DEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3D0000000000000000EF3DFF7FE07F
      E07F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EF3D003CEF3D00000000000000000000000000000000
      00000000EF3DEF3DF75EF75EF75EF75E00000000000000000000000000000000
      0000FF7FFF7FFF7FFF7FFF7F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000003C003C003C00000000000000000000000000000000
      000000000000EF3DEF3DEF3DEF3DF75E00000000000000000000000000000000
      0000FF7F1F001F001F00FF7F0000000000000000F75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75E000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7F000000000000EF3D003CEF3D0000000000000000000000000000EF3D
      EF3DF75EF75E00000000EF3DEF3DF75E00000000000000000000000000000000
      0000FF7FFF7FFF7FFF7FFF7F0000000000000000FF7FFF7FF75EFF7FFF7FFF7F
      F75EFF7FFF7FFF7FF75EFF7FFF7FF75E000000000000FF7FEF3DEF3DEF3DEF3D
      EF3DFF7F00000000000000000000000000000000000000000000000000000000
      EF3DEF3DF75E000000000000EF3DF75E00000000000000000000000000000000
      0000FF7F1F001F001F00FF7F0000000000000000FF7FFF7FF75EFF7FFF7FFF7F
      F75EFF7FFF7FFF7FF75EFF7FFF7FF75E000000000000FF7FEF3DFF7FFF7FFF7F
      EF3DFF7F0000000000000000003C00000000000000000000F75EF75EF75E0000
      0000EF3DEF3DF75EF75E0000EF3DF75E0000000000000000F75EF75EF75EF75E
      0000FF7FFF7FFF7FFF7FFF7F0000000000000000F75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75E000000000000FF7FEF3DEF3DEF3DEF3D
      EF3DFF7F000000000000EF3D003CEF3D00000000000000000000EF3DEF3D0000
      F75E0000EF3DEF3DF75E0000EF3DF75E0000000000000000F75E1F001F001F00
      0000FF7F1F001F001F00FF7F0000000000000000FF7FFF7FF75EFF7FFF7FFF7F
      F75EFF7FFF7FFF7FF75EFF7FFF7FF75E000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7F000000000000003C003C003C00000000F75EF75E00000000EF3D0000
      000000000000F75EF75E0000EF3DF75E00000000EF010000F75EF75EF75EF75E
      0000FF7FFF7FFF7FFF7FFF7F0000000000000000FF7FFF7FF75EFF7FFF7FFF7F
      F75EFF7FFF7FFF7FF75EFF7FFF7FF75E000000000000FF7FEF3DEF3DF75EF75E
      F75EFF7F000000000000003C003C003C00000000F75EF75E0000EF3D0000EF3D
      EF3DF75E0000EF3DF75E00000000000000000000EF010000F75E1F001F001F00
      0000000000000000000000000000000000000000F75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75E000000000000FF7FFF7FFF7FFF7F0000
      00000000000000000000003C003C003C00000000F75E0000EF3DEF3DEF3D0000
      EF3DF75E0000F75EF75E00000000000000000000EF010000F75EF75EF75EF75E
      F75E000000000000000000000000000000000000FF7FFF7FF75EFF7FFF7FFF7F
      F75EFF7FFF7FFF7FF75EFF7FFF7FF75E000000000000FF7FEF3DEF3DF75E0000
      F75E0000000000000000003C003C003C00000000F75E000000000000EF3DEF3D
      0000F75E00000000000000000000000000000000EF010000F75E1F001F001F00
      F75E0000000000000000000000000F0000000000FF7FFF7FF75EFF7FFF7FFF7F
      F75EFF7FFF7FFF7FF75EFF7FFF7FF75E000000000000FF7FFF7FFF7FFF7F0000
      00000000000000000000003C003C003C00000000F75EF75EF75EF75E00000000
      0000F75E00000000000000000000000000000000EF010000F75EF75EF75EF75E
      F75E000000000000000000000F000F000F0000000F000F000F000F000F000F00
      0F000F000F000F000F000F000F000F0000000000000000000000000000000000
      00000000000000000000003C003C003C00000000F75EEF3DEF3DEF3DEF3DF75E
      0000000000000000000000000000000000000000EF0100000000000000000000
      00000000000000000000000000000F00000000000F000F000F000F000F000F00
      0F000F000F000F000F000F000F000F0000000000000000000000000000000000
      000000000000000000000000003C000000000000F75EF75EF75EF75EF75EF75E
      0000000000000000000000000000000000000000EF01EF01EF01EF01EF010000
      0000000000000F000000000000000F0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000F000F000F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000E07F00000000000000000000000000000000000000000000
      0000000000000000E07F00000000000000000000000000000000000000000000
      0000000000000000E07F00000000000000000000000000000000000000000000
      0000000000000000E07F000000000000000000000000000000000000FF7FFF7F
      FF7FFF7FFF7F0000E07F000000000000000000000000000000000000FF7FFF7F
      FF7FFF7FFF7F0000E07F000000000000000000000000000000000000FF7FFF7F
      FF7FFF7FFF7F0000E07F000000000000000000000000000000000000FF7FFF7F
      FF7FFF7FFF7F0000E07F000000000000000000000000000000000000FF7F007C
      007C007C007C0000E07FE07F00000000000000000000000000000000FF7F007C
      007C007C007C0000E07FE07F00000000000000000000000000000000FF7F007C
      007C007C007C0000E07FE07F00000000000000000000000000000000FF7F007C
      007C007C007C0000E07FE07F00000000000000000000000000000000FF7FFF7F
      FF7FFF7FFF7FFF7F0000E07F00000000000000000000000000000000FF7FFF7F
      FF7FFF7FFF7FFF7F0000E07F00000000000000000000000000000000FF7FFF7F
      FF7FFF7FFF7FFF7F0000E07F00000000000000000000000000000000FF7FFF7F
      FF7FFF7FFF7FFF7F0000E07F00000000000000000000000000000000FF7F007C
      007C007C007C007C0000E07FE07F0000000000000000000000000000FF7F007C
      007C007C007C007C0000E07FE07F00000000000000000000FF7FFF7FFF7FFF7F
      007C007C007C007C0000E07FE07F000000000000000000000000FF7FFF7F007C
      007C007C007C007C0000E07FE07F0000000000000000000000000000FF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000003C000000000000FF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000000000000000000000000000FF7F0F00FF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000000000000000000000000000FF7F0F00FF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000000000000F00FF7FFF7F007C
      007C007C007C007CFF7F0000003C003C00000000003C003C00000000FF7F007C
      007C003C007C007CFF7F0000003C003C0000FF7FFF7FFF7FFF7F0F000F00FF7F
      007C007C007C007CFF7F0000003C003C000000000000FF7F0F000F00FF7FFF7F
      FF7FFF7F007C007CFF7F0000003C003C0000000000000F000F000F00FF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000EF3D003CEF3DFF7FFF7FEF3D
      003CEF3DFF7FFF7FFF7F00000000000000000F000F000F000F000F000F000F00
      FF7FFF7FFF7FFF7FFF7F00000000000000000000FF7F0F000F000F000F000F00
      0F000F00FF7FFF7FFF7F000000000000000000000F000F000F000F00EF3DFF7F
      007C007CFF7F000000000000EF3D0000000000000000003C003CEF3DEF3D003C
      003CFF7FFF7F000000000000EF3D000000000F000F000F000F000F000F000F00
      0F00FF7FFF7F000000000000EF3D00000000FF7F0F000F000F000F000F000F00
      0F000F00FF7F000000000000EF3D000000000F000F000F0000000F000F00FF7F
      FF7FFF7FFF7F0000FF7F000000000000000000000000EF3D003C003C003C003C
      FF7FFF7FFF7F0000FF7F00000000000000000F000F000F000F000F000F000F00
      0F000F00FF7F0000FF7F00000000000000000F000F000F000F000F000F000F00
      0F000F00FF7F0000FF7F0000000000000000EF3D0F000000000000000F000F00
      FF7FFF7FFF7F00000000000000000000000000000000EF3D003C003C003CFF7F
      FF7FFF7FFF7F0000000000000000000000000F000F000F000F000F000F000F00
      0F00FF7FFF7F00000000000000000000000000000F000F000F000F000F000F00
      0F000F00FF7F0000000000000000000000000000000000000000000000000F00
      EF3DFF7F00000000000000000000000000000000EF3D003C003C003C003CEF3D
      FF7F000000000000000000000000000000000F000F000F000F000F000F000F00
      FF7F00000000000000000000000000000000000000000F000F000F000F000F00
      0F000F00FF7F0000000000000000000000000000000000000000000000000000
      0F00000000000000000000000000000000000000003C003CEF3D0000003C003C
      EF3D0000000000000000000000000000000000000000000000000F000F00FF7F
      0000000000000000000000000000000000000000000000000F000F0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000F000000000000000000000000000000000000000000000000000000003C
      003CEF3D000000000000000000000000000000000000000000000F00FF7F0000
      00000000000000000000000000000000000000000000000000000F0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F75E
      F75E0000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000E07F00000000000000000000000000000000F75E0000F75E
      FF7FF75EF75E00000000000000000000000000000000FF7F00000000FF7F003C
      FF7F000000000000FF7FFF7F0000000000000000000000000000000000000000
      00000000E07F0000000000000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7F0000E07F000000000000000000000000F75E0000F75E0000EF3D
      E03DEF3DF75EF75E0000000000000000000000000000FF7FFF7FFF7F003C003C
      EF3DFF7FFF7FFF7FFF7FFF7F00000000000000000000FF7FFF7FFF7FFF7FFF7F
      FF7F0000E07F0000000000000000000000000000000000000000FF7F007C007C
      007C007C007C0000E07FE07F00000000000000000000F75E0000F75E0000F75E
      003C0000EF3DF75E0000000000000000000000000000FF7FFF7F003C003C003C
      003CFF7F00000000FF7FFF7F00000000000000000000FF7F007C007C007C007C
      007C0000E07FE07F000000000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7F0000E07F00000000000000000000F75E0000F75E0000FF7F
      F75EEF3DE03D00000000000000000000000000000000FF7F003C003C003CEF3D
      003C003CFF7FFF7FFF7FFF7F00000000000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7F0000E07F000000000000000000000000000000000000FF7F007C007C
      007C007C007C007C0000E07FE07F0000000000000000F75E0000F75E0000F75E
      F75EF75E0F00EF010000000000000000000000000000FF7FFF7F003CEF3DFF7F
      FF7F003CEF3DFF7FFF7FFF7F00000000000000000000FF7F007C007C007C007C
      007C007C0000E07FE07F00000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F000000000000000000000000F75E0000F75E0000F75E
      F75EF75EF75E0F00EF01000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7F003CEF3DFF7FFF7F00000000000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F0000000000000000000000000000000000000000FF7F007C007C
      007C007C007C007CFF7F0000003C003C000000000000EF3D0000F75E0000F75E
      FF7FF75EF75EFF7F0F00EF0100000000000000000000FF7F0000000000000000
      0000FF7FFF7F003CFF7FFF7F00000000000000000000FF7F007C007C007C007C
      007C007CFF7F0000003C003C000000000000E07F0000FF7FEF3DFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F000000000000000000000000F75E0000F75EF75E0000
      0000EF3DF75E000000000F00EF010000000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F003CFF7F00000000000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F000000000000000000000000EF3DE07FE07FEF3DFF7F007CEF3D
      007CFF7F000000000000000000000000000000000000EF3DEF3D00000000FF7F
      EF3D000000000000000000000F00EF01000000000000FF7F0000000000000000
      000000000000FF7FFF7FFF7F00000000000000000000FF7F007C007C007CFF7F
      0000000000000000000000000000000000000000EF3DFF7FEF3DE07FEF3DE07F
      FF7FFF7F0000FF7F000000000000000000000000000000000000EF3DEF3D0000
      00000000000000000000000000000F00000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F00000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      0000FF7F0000000000000000000000000000EF3DEF3DEF3DFF7FEF3DFF7FFF7F
      FF7FFF7F00000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7F0000000000000000
      0000FF7FFF7F0000FF7F000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      000000000000000000000000000000000000FF7FE07FEF3DE07FFF7FEF3DEF3D
      EF3DEF3D00000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000EF3DE07FEF3DE07FEF3DE07F
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EF3DE07F0000EF3DFF7F0000EF3D
      E07F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000EF3DFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000000000000000000000000000
      0000000000000000000000000000000000000000EF3DFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000EF3DFF7FFF7F0000
      00000000000000000000FF7FFF7F00000000000000000000EF3DFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F0000000000000000F75E000000000000FF7F0000
      00000000EF3D0000000000000000EF3D00000000FF7FFF7FFF7FFF7FFF7F0000
      00000000FF7FFF7FFF7FFF7FFF7F00000000000000000000EF3DFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000EF3DFF7FF75EF75E
      007C007C007CF75EF75EFF7F0000000000000000EF3D00001F001F0000000000
      E07FE07F00000000007C007C003C000000000000FF7F0000000000000000FF7F
      0000FF7F0000000000000000000000000000000000000000EF3DFF7FFF7F0000
      00000000000000000000FF7FFF7F00000000000000000000EF3DFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F0000000000000000EF3D00001F001F000F000000
      E07FE07FE03D0000007C007C003C000000000000FF7F0000FF7FFF7FFF7F0000
      0000FF7FFF7FFF7FFF7F0000FF03000000000000E07F00000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000EF3DFF7F007C007C
      007C007CF75EF75EF75EFF7F0000000000000000EF3D00001F001F000F000000
      E07FE07FE03D0000007C007C003C000000000000FF7F0000FF7F00000000FF7F
      0000FF7FFF7FFF7FFF7F00000000000000000000EF3DE07F0000000000000000
      00000000000000000000FF7FFF7F000000000000E07F00000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F0000000000000000EF3D00001F001F000F000000
      E07FE07FE03D0000007C007C003C000000000000FF7F0000FF7FFF7FFF7FFF7F
      00000000FF7FFF7FFF7F0000E07F0000000000000000EF3DFF7FE07F00000000
      00000000000000000000FF7FFF7F000000000000EF3DE07F000000000000F75E
      F75E007C007CF75EF75EFF7F0000000000000000EF3D00001F001F000F000000
      E07FE07FE03D0000007C007C003C000000000000FF7F0000FF7FFF7FFF7F0000
      0000FF7F00000000FF7F00000000000000000000000000000000FF7FE07F0000
      0000FF7FFF7FFF7FFF7FFF7FFF7F0000000000000000EF3DFF7FE07F00000000
      F75EF75E007C007C007CFF7F0000000000000000F75E00001F001F000F000000
      E07FE07FE03D0000007C007C003C000000000000FF7F0000FF7F00000000FF7F
      00000000FF7FFF7FFF7F0000FF7F00000000EF3DFF7FE07FE07FE07FE07FE07F
      00000000FF7FFF7FEF3D00000000000000000000000000000000FF7FE07F0000
      0000FF7FFF7FFF7FFF7FFF7F0000000000000000EF3DF75E0000000000000000
      E07FE07FE03D0000007C007C003C000000000000FF7F0000FF7FFF7FFF7F0000
      0000FF7F00000000FF7F00000000000000000000EF3DFF7FE07F00000000FF7F
      FF7FFF7FFF7FFF7FEF3DFF7F000000000000EF3DFF7FE07FE07FE07FE07FE07F
      00000000F75EEF3D000000000000000000000000F75EEF3D0000000000000000
      E07FE07FE03D0000007C007C003C000000000000FF7F0000FF7F00000000FF7F
      0000FF7FFF7FFF7FFF7F0000007C0000000000000000EF3DFF7FE07F00000000
      FF7FFF7FFF7FFF7FEF3D00000000000000000000EF3DFF7FE07F00000000FF7F
      FF7FFF7FFF7FEF3DFF7F00000000000000000000EF3DF75E0000000000000000
      E07FE07FE03D00000000007C003C00000000000000000000FF7FFF7FFF7F0000
      00000000FF7FFF7FFF7F000000000000000000000000EF3DFF7FE07FE07F0000
      0000EF3DEF3DEF3DEF3D000000000000000000000000EF3DFF7FE07F00000000
      FF7FFF7FFF7FEF3D000000000000000000000000FF7FEF3D0000000000000000
      E07FE07FE03D0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000EF3DFF7FE07FE07F
      00000000000000000000000000000000000000000000EF3DFF7FE07FE07F0000
      0000EF3DEF3DEF3D0000000000000000000000000000FF7F0000000000000000
      E07FE07FF75E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EF3DFF7FE07F
      E07F00000000000000000000000000000000000000000000EF3DFF7FE07FE07F
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EF3DFF7FE07F
      E07F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000EF3DEF3DEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3D0000000000000000000000000000
      000000000000EF3DE001EF3DE001EF3D00000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000F75EFF7F
      F75EFF7F0000FF7FF75EFF7FF75E000000000000000000000000000000000000
      00000000000000000000000000000000EF3D0000000000000000E001EF3DE001
      EF3DE001EF3DE001FF7FE001EF3DE001000000000000EF3DEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3D0000000000000000F75E00000000
      0000000000000000000000000000F75E00000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000EF3D0000000000000000EF3DE001EF3D
      E001EF3DE001FF7FE001EF3DE001000000000000000000000000000000000000
      00000000000000000000000000000000EF3D0000000000000000FF7F0000EF3D
      00000000000000000000EF3D0000FF7F00000000FF7F00000000000000000000
      000000000000000000000000FF7F0000EF3D0000F75EF75EF75EE001EF3DE001
      EF3DE001FF7FE001EF3DE001EF3DF75E000000000000FF7FE07FFF7FE07FFF7F
      E07FFF7FE07F00000000FF7FE07F0000EF3D0000000000000000F75E00000000
      0000000000000000000000000000F75E00000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000EF3D0000FF7FFF7FF75EFF7FE001EF3D
      E001FF7FE001EF3DE001EF3DE001F75E0000EF3D0000E07FFF7FE07FFF7FE07F
      FF7FE07FFF7F0000F75E0000FF7F0000EF3D0000000000000F000000F75EFF7F
      F75EFF7F0000FF7FF75EFF7FF75E000000000000FF7F00000000000000000000
      000000000000000000000000FF7F0000EF3D0000FF7FFF7FF75EFF7FFF7FE001
      FF7FE001EF3DE001EF3DFF7FFF7FF75E0000003C0000FF7FE07FFF7FE07FFF7F
      E07FFF7FE07F0000E07FF75E00000000EF3D000000001F001F001F0000000000
      000000000F000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000EF3D0000F75EF75EF75EF75EE001FF7F
      E001EF3DE001EF3DE001EF3DF75EF75E0000003C003CE07FFF7FE07FFF7FEF3D
      003CE07FFF7F00000000000000000000EF3DEF3D0F001F001F001F00E001E001
      E001E0011F000F00EF3D00000000000000000000FF7F00000000000000000000
      000000000000000000000000FF7F0000EF3D0000FF7FFF7FF75EE001FF7FE001
      EF3DE001EF3DE001EF3DE001EF3DF75E0000EF3D003CEF3DE07FFF7FEF3D003C
      EF3DFF7FE07FFF7FE07FFF7FE07F0000EF3DEF3D1F001F001F001F00E001E001
      E001E001EF011F00000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000EF3D0000FF7FFF7FF75EEF3DE001EF3D
      E001EF3DFF7FEF3DE001EF3DE001F75E00000000003C003CEF3DE07F003C003C
      FF7FE07FFF7FE07FFF7FE07FFF7F0000EF3DEF3D1F001F00F75EE001E001E001
      E001E0011F001F00000000000000000000000000FF7F000000000000FF7F0000
      00000000FF7F000000000000FF7F0000EF3D0000F75EF75EF75EE001EF3DE001
      EF3DF75EF75EF75EEF3DE001EF3DF75E00000000EF3D003C003C003C003CFF7F
      E07FFF7FE07FFF7FE07FFF7FE07F0000EF3DEF3D1F00F75EE001E001E001E001
      0F00EF010F00E001000000000000000000000000FF7FFF7F0000F75EFF7FF75E
      0000FF7FFF7FFF7FFF7FFF7FFF7F0000EF3D0000FF7FFF7FF75EFF7FFF7FFF7F
      F75EFF7FFF7FFF7FF75EFF7FFF7FF75E00000000EF3D003C003C003CFF7FE07F
      FF7FE07FFF7FE07FFF7FE07FFF7F0000EF3DEF3D1F00F75EF75EF75E0F00E001
      E0011F00E001E001000000000000000000000000FF7FFF7FF75E000000000000
      F75EFF7FFF7F000000000000FF7F0000EF3D0000FF7FFF7FF75EFF7FFF7FFF7F
      F75EFF7FFF7FFF7FF75EFF7FFF7FF75E0000EF3D003C003C003C003CEF3D0000
      000000000000000000000000000000000000EF3DEF3D1F00FF7FF75E1F001F00
      1F001F00E001E001EF3D00000000000000000000FF7FFF7FFF7FEF3DEF3DEF3D
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000EF3D00000F000F000F000F000F000F00
      0F000F000F000F000F000F000F000F000000003C003CEF3D0000003C003CEF3D
      0000000000000000000000000000000000000000EF3DFF7FF75EFF7FF75EE001
      E001E001E0010000000000000000000000000000FF7FFF7FFF7FFF7F0000FF7F
      FF7FFF7FFF7F000000000000FF7F0000EF3D00000F000F000F000F000F000F00
      0F000F000F000F000F000F000F000F00000000000000000000000000003C003C
      EF3D0000000000000000000000000000000000000000EF3DEF3DEF01F75EF75E
      F75EE00100000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000EF3D0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000003C
      003CEF3D0000000000000000000000000000000000000000EF3DEF3DEF3DEF3D
      EF3DEF3D00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EF3DEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3D000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F000000000000000000000000000000000000FF7F
      F75EFF7FF75EFF7FF75EFF7FF75EFF7F000000000000EF3DEF3DEF3DEF3DEF3D
      000000000000EF3DEF3DEF3DEF3DEF3D00000000000000000000000000000000
      00000000000000000000000000000000EF3D000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F000000000000000000000000000000000000F75E
      0000000000000000000000000000F75E000000000F000F000F000F000F00EF3D
      000000000F000F000F000F000F00EF3D000000000000FF7FE07FFF7FE07FFF7F
      E07FFF7FE07F00000000FF7FE07F0000EF3D000000000000FF7FFF7F0F00FF7F
      FF7F0F00FF7FFF7FFF7FFF7F0000000000000000F75EFF7FF75EFF7F0000FF7F
      F75EFF7FF75EFF7FF75EFF7FF75EFF7F000000000F000F000F000F000F00EF3D
      000000000F000F000F000F000F00EF3D000000000000E07FFF7FE07FFF7FE07F
      FF7FE07FFF7F0000F75E0000FF7F0000EF3D000000000000FF7FFF7F0F00FF7F
      FF7F0F00FF7FFF7FFF7FFF7F0000000000000000FF7F0000000000000000F75E
      FF7FF75E003C003CFF7FF75EFF7FF75E000000000F00000000000F000F000000
      000000000F000F00000000000F000000000000000000FF7FE07FFF7FE07FFF7F
      E07FFF7FE07F0000E07FF75E00000000EF3D000000000000FF7F0F000F000F00
      0F000F000F000F00FF7FFF7F0000000000000000F75EFF7FF75EFF7F0000FF7F
      F75EFF7F003C003CF75EFF7FF75EFF7F000000000000000000000F0000000000
      000000000F00EF3DEF3D000000000000000000000000E07FFF7FE07FFF7FE07F
      FF7FE07FFF7F00000000000000000000EF3D000000000000FF7FFF7FFF7F0F00
      FF7FFF7F0F00FF7FFF7FFF7F0000000000000000FF7FEF3D003C003C0000F75E
      FF7FF75EFF7F003C003CF75EFF7FF75E00000000000000000F00EF3D00000000
      0000000000000F00EF3DEF3D000000000000FF7F0000FF7FEF3DE07FFF7FE07F
      FF7FE07FE07FFF7FE07FFF7FE07F0000EF3D000000000000FF7FFF7FFF7F0F00
      FF7FFF7F0F00FF7FFF7FFF7F0000000000000000F75E003C003CFF7F0000FF7F
      F75EFF7FF75EFF7F003C003CF75EFF7F0000000000000F000F00000000000000
      0000000000000F000F00EF3DEF3D00000000EF3DE07FE07FEF3DFF7FE07FEF3D
      E07FFF7FFF7FE07FFF7FE07FFF7F0000EF3D000000000000FF7FFF7F0F000F00
      0F000F000F000F000F00FF7F0000000000000000FF7FEF3D003C003C0000F75E
      FF7F003C003C003C003C003CFF7FF75E000000000F000F00EF3D000000000000
      00000000000000000F000F00EF3D000000000000EF3DFF7FEF3DE07FEF3DE07F
      FF7FE07FE07FFF7FE07FFF7FE07F0000EF3D000000000000FF7FFF7FFF7FFF7F
      0F00FF7FFF7F0F00FF7FFF7F0000000000000000F75E003C003CFF7F0000FF7F
      F75EFF7FF75EFF7FF75EFF7FF75EFF7F000000000F000F00EF3D000000000000
      00000000000000000F000F00EF3D00000000EF3DEF3DEF3DFF7FEF3DFF7FE07F
      FF7FE07FFF7FE07FFF7FE07FFF7F0000EF3D000000000000000000000000FF7F
      0F00FF7FFF7F0F00FF7FFF7F0000000000000000FF7FEF3D003C003C00000F00
      0F000F000F000F000F000F000F000F00000000000F000F00EF3DEF3D00000000
      00000000000000000F000F00000000000000FF7FE07FEF3DE07FFF7FEF3DEF3D
      EF3DEF3D00000000000000000000000000000000000000000000FF7F0000FF7F
      FF7FFF7FFF7FFF7FFF7FFF7F0000000000000000F75EFF7FF75EFF7F00000F00
      0F000F000F000F000F000F000F000F000000000000000F000F00EF3DEF3D0000
      0000000000000F000F00EF3D0000000000000000EF3DE07FEF3DE07FEF3DE07F
      000000000000000000000000000000000000000000000000000000000000FF7F
      FF7FFF7FFF7FFF7FFF7FFF7F00000000000000000F000F000F000F0000000000
      000000000000000000000000000000000000000000000F000F000F00EF3DEF3D
      EF3DEF3D0F000F000F000000000000000000EF3DE07F0000EF3DFF7F0000EF3D
      E07F000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000F000F000F000F000F000F00
      0F000F000F0000000000000000000000000000000000000000000F000F000F00
      0F000F000F00000000000000000000000000E07F00000000EF3DE07F00000000
      EF3D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000EF3DFF7F00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EF01EF3DEF01EF3DEF01
      EF3DEF01EF3DEF01EF3DEF01EF3DEF0100000000000000000000000000000000
      000000001F001F00E0010F00000000000000000000000000EF3D000000000000
      000000000000000000000000EF3D00000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000EF3DEF01EF3D00000000
      00000000000000000000EF3DEF01EF3D00000000000000000000000000000000
      EF3D1F001F00E001E0011F000F0000000000000000000000EF3D0000FF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000EF3D00000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000EF01EF3DEF010000FF7F
      FF7FFF7FFF7FFF7F0000EF01EF3DEF0100000000000000000000000000000000
      EF3D1F00F75EE001E001E0011F0000000000000000000000EF3D0000FF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000EF3D00000000000000000000FF7FFF7F0000FF7F
      00000000000000000000FF7FFF7F0000000000000000EF3DEF01EF3D0000FF7F
      0F000F000F00FF7F0000EF3DEF01EF3D00000000000000000000000000000000
      EF3D1F00F75EF75EE0011F00E00100000000000000000000EF3D0000FF7F0000
      0000000000000000FF7F0000EF3D00000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000EF01EF3DEF010000FF7F
      FF7FFF7FFF7FFF7F0000EF01EF3DEF01000000000000FF7FFF7FFF7FFF7FFF7F
      EF3D1F00FF7FEF011F00E001E00100000000000000000000EF3D0000FF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000EF3D00000000000000000000FF7FFF7FFF7FFF7F
      FF7F0000FF7F000000000000FF7F0000000000000000EF3DEF01EF3D0000FF7F
      0F000F00FF7FFF7F0000EF3DEF01EF3D000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FEF3D1F00FF7FF75EE001000000000000000000000000EF3D0000FF7F0000
      0000000000000000FF7F0000EF3D00000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000EF01EF3DEF010000FF7F
      FF7FFF7FFF7FFF7F0000EF01EF3DEF01000000000000FF7FEF3DEF3DEF3DEF3D
      FF7FFF7FEF3DEF3DEF3DEF3D000000000000000000000000EF3D0000FF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000EF3D00000000000000000000FF7FFF7FFF7FFF7F
      FF7F0000FF7F000000000000FF7F0000000000000000EF3DEF01EF3D0000FF7F
      0F000F000F00FF7F0000EF3DEF01EF3D000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000000000000000000000000000EF3D0000FF7F0000
      0000000000000000FF7F0000EF3D00000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000EF01EF3DEF010000FF7F
      FF7FFF7FFF7FFF7F0000EF01EF3DEF01000000000000FF7FEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DFF7F0000000000000000000000000000EF3D0000FF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000EF3D00000000000000000000FF7FFF7F0000FF7F
      00000000000000000000FF7FFF7F0000000000000000EF3DEF01EF3D00000000
      00000000000000000000EF3DEF01EF3D000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000000000000000000000000000EF3D0000FF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000EF3D00000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000EF01EF3DEF01EF3DEF01
      EF3DEF01EF3DEF01EF3DEF01EF3DEF01000000000000FF7F0000000000000000
      0000FF7FFF7FFF7FFF7F0000000000000000000000000000EF3D000000000000
      000000000000000000000000EF3D00000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75E00000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000F00FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000F75E0000000000000000
      0000000000000000000000000000F75E00000000FF7FF75EF75EF75EF75EF75E
      FF7F0000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000F00FF7FFF7FFF7FFF7F0000
      00000000000000000000FF7FFF7FFF7F000000000000F75E0000FF03FF7FFF03
      FF7FFF03FF7FFF03FF7FFF030000F75E00000000FF7FF75EF75EF75EF75EF75E
      FF7F0000000000000000000000000000000000000000FF7F0000000000000000
      0000000000000000000000000000FF7F000000000F00FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000F75E0000FF7FEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DFF7F0000F75E00000000FF7FF75EF75EF75EEF3D0000
      00000000EF3D00000000000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000F00FF7FFF7FFF7FFF7F0000
      0000000000000000FF7FFF7FFF7FFF7F000000000000F75E0000FF03FF7FFF03
      FF7FFF03FF7FFF03FF7FFF030000F75E00000000FF7FF75EF75E00000000FF7F
      FF7FFF7F000000000000000000000000000000000000FF7F0000000000000000
      0000000000000000000000000000FF7F000000000F00FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000F75E0000FF7FEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DFF7F0000F75E00000000FF7FF75E0000EF3DFF7FFF7F
      FF7FFF7F0000EF3D0000000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000F00FF7FFF7F0F00FF7F0000
      000000000000FF7FFF7F0F00FF7FFF7F000000000000F75E0000FF03FF7FFF03
      FF7FFF03FF7FFF03FF7FFF030000F75E00000000FF7FEF3D0000FF0300000000
      0000FF7F0000F75E0000EF3D00000000000000000000FF7F0000000000000000
      0000000000000000000000000000FF7F000000000F00FF7F0F000F00FF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0F000F00FF7F000000000000F75E0000FF7FEF3DEF3D
      EF3DFF7FFF03FF7FFF03FF7F0000F75E00000000FF7F0000FF03FF7FFF03FF7F
      FF03FF7F0000F75EF75E000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000F000F000F000F000F00FF7F
      000000000000FF7F0F000F000F000F00000000000000F75E0000FF03FF7FFF03
      FF7FFF03FF7FFF03FF7FFF030000F75E00000000FF7F0000FF7F000000000000
      0000FF7F0000F75EF75E000000000000000000000000FF7F0000000000000000
      0000000000000000000000000000FF7F000000000F00FF7F0F000F00FF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0F000F00FF7F000000000000F75E0000000000000000
      0000000000000000000000000000F75E0000000000000000FF03FF7FFF03FF7F
      FF7FFF7F0000F75EF75E000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000F00FF7FFF7F0F00FF7F0000
      0000000000000000FF7F0F00FF7FFF7F000000000000F75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75E000000000000EF3D0000000000000000
      000000000000F75E0000EF3D00000000000000000000FF7F0000000000000000
      0000000000000000000000000000FF7F000000000F00FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000F75EF75E
      F75EF75EF75EEF3D0000000000000000000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F75E
      F75EF75E00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000EF3D0000
      00000000EF3D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000F000F000000
      00000000000000000000000000000000000000000000EF3DEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3D00000000EF3DEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3D0000000000000000000000000000
      000000000000007C003C00000000000000000000000000000F000F000F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000EF3D0000000000000000000000000000
      00000000000000000000000000000000EF3D00000000FF7FFF7FFF7FFF7F0000
      FF7FFF7F007CFF7F003C0000FF7FFF7F0000000000000F000F000F000F000000
      00000000000000000000000000000000000000000000FF7FE07FFF7FE07FFF7F
      E07FFF7FE07F00000000FF7FE07F0000EF3D00000000FF7FE07FFF7FE07FFF7F
      E07FFF7FE07F00000000FF7FE07F0000EF3D00000000FF7FFF7F000000000000
      0000007CFF7F003C0000FF7FFF7FFF7F000000000F000F000F000F000F00FF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000E07FFF7FE07FFF7FE07F
      FF7FE07FFF7F0000F75E0000FF7F0000EF3D00000000E07FFF7FE07FFF7FE07F
      FF7FE07FFF7F0000F75E0000FF7F0000EF3D00000000FF7F0000EF3DF75EEF3D
      EF3D0000003C0000F75EF75EFF7FFF7F0000000000000F000F000F000F00F75E
      F75EF75EF75EF75EF75EF75EF75EFF7F000000000000FF7FE07FFF7FE07FFF7F
      E07FFF7FE07F0000E07FF75E00000000EF3D00000000FF7FE07FFF7FE07FFF7F
      E07FFF7FE07F0000E07FF75E00000000EF3D000000000000EF3DF75EFF03EF3D
      FF7FEF3D0000FF7FFF7FFF7FFF7FFF7F00000000000000000F000F000F00F75E
      F75EF75EFF7FF75EF75EF75EF75EFF7F000000000000E07FFF7FFF7FFF7FE07F
      FF7FE07FFF7F00000000000000000000EF3D00000000E07FFF7FFF7FFF7FE07F
      FF7FE07FFF7F00000000000000000000EF3D000000000000F75EFF03F75EEF3D
      F75EFF7F0000F75EF75EF75EF75EFF7F000000000000000000000F000F00EF3D
      EF3DEF3DF75EEF3DEF3DEF3DEF3DFF7F000000000000FF7FFF7F0F00FF7FFF7F
      E07FFF7FE07FFF7FE07FFF7FE07F0000EF3D00000000FF7FFF7F0F00FF7FFF7F
      E07FFF7FE07FFF7FE07FFF7FE07F0000EF3D000000000000FF03FF7FFF03EF3D
      FF03F75E0000FF7FFF7FFF7FFF7FFF7F00000000000000000000FF7F0F00FF7F
      EF3DFF7FFF7FFF7FEF3DEF3DF75EFF7F0000FF7FFF7FFF7FFF7F0F000F00FF7F
      FF7FE07FFF7FE07FFF7FE07FFF7F0000EF3D00000000FF7F0F000F00FF7FFF7F
      FF7FFF7FFF7FE07FFF7FE07FFF7F0000EF3D000000000000EF3DFF7FFF7FEF3D
      F75EEF3D0000F75EF75EF75EF75EFF7F00000000000000000000FF7FF75EF75E
      EF3DEF3DEF3DEF3DEF3DEF3DF75EFF7F00000F000F000F000F000F000F000F00
      FF7FFF7FE07FFF7FE07FFF7FE07F0000EF3D0000FF7F0F000F000F000F000F00
      0F000F00FF7FFF7FE07FFF7FE07F0000EF3D00000000FF7F0000EF3DFF03EF3D
      EF3D0000FF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000FF7FFF7FFF7F
      FF7FEF3DFF7FEF3DEF3DF75EFF7FFF7F00000F000F000F000F000F000F000F00
      0F00FF7FFF7FE07FFF7FE07FFF7F0000EF3DFF7F0F000F000F000F000F000F00
      0F000F00FF7FE07FFF7FE07FFF7F0000EF3D00000000FF7FF75E000000000000
      0000F75EF75EF75EF75EF75EFF7FFF7F00000000000000000000FF7FF75EF75E
      F75EEF3DFF7FEF3DEF3DF75EF75EFF7F00000F000F000F000F000F000F000F00
      0F000F00FF7F0000000000000000000000000F000F000F000F000F000F000F00
      0F000F00FF7F00000000000000000000000000000000FF7FFF7FFF7FFF7F0000
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000FF7FFF7FFF7F
      FF7FFF7FEF3DEF3DF75EFF7FFF7FFF7F00000F000F000F000F000F000F000F00
      0F000000000000000000000000000000000000000F000F000F000F000F000F00
      0F000F00FF7F00000000000000000000000000000F000F000F000F000F000F00
      0F000F000F000F000F000F000F000F000F000000000000000000FF7FF75EF75E
      F75EF75EEF3DEF3DF75EF75EF75EFF7F00000F000F000F000F000F000F000F00
      000000000000000000000000000000000000000000000F000F000F000F000F00
      0F000F00FF7F00000000000000000000000000000F000F000F000F000F000F00
      0F000F000F000F000F000F000F000F000F000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000000000000F000F000000
      0000000000000000000000000000000000000000000000000F000F0000000000
      00000000000000000000000000000000000000000F000F000F000F000F000F00
      0F000F000F000F000F000F000F000F000F000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000F0000000000
      00000000000000000000000000000000000000000000000000000F0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000F00000000000000000000000000000000000F00
      0F000F000F000000000000000000000000000000000000000000000000000000
      0F000F000F000F000F000F000F000F000F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000F000F00000000000000000000000F000F000F00
      0F000F000F000F000F0000000000000000000000000000000000000000000000
      0F00FF7FFF7FFF7FFF7FFF7FFF7FFF7F0F000000FF7F00000000000000000000
      0000000000000000FF7F000000000000000000000000000000000F0000000F00
      00000F0000000F000F000F000F000F000F000000000000000F000F000F000000
      0000000000000F000F000F000000000000000000000000000000000000000000
      0F00FF7F00000000000000000000FF7F0F000000FF7F00000000000000000000
      0000000000000000FF7F00000000000000000000000000000000000000000000
      0000000000000000000000000F000F0000000000000000000F000F0000000000
      00000000000000000F000F000000000000000000000000000000000000000000
      0F00FF7FFF7FFF7FFF7FFF7FFF7FFF7F0F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000F0000000000000000000F000F00000000000000
      000000000000000000000F000F000000000000000000FF7FFF7FFF7FFF7FFF7F
      0F00FF7F00000000000000000000FF7F0F0000000000FF7F0000000000000000
      00000000FF7F0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F000F00000000000000
      000000000000000000000F000F000000000000000000FF7F0000000000000000
      0F00FF7FFF7FFF7FFF7FFF7FFF7FFF7F0F0000000000FF7F000000000000F75E
      00000000FF7F0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F000F00000000000000
      000000000000000000000F000F000000000000000000FF7FFF7FFF7FFF7FFF7F
      0F00FF7F00000000FF7F0F000F000F000F0000000000FF7F000000000000F75E
      00000000FF7F0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F000F00000000000000
      000000000000000000000F000F000000000000000000FF7F0000000000000000
      0F00FF7FFF7FFF7FFF7F0F00FF7F0F0000000000000000000000000000000000
      00000000000000000000000000000000000000000000EF3D0000000000000000
      EF3D000000000000000000000000000000000000000000000F000F0000000000
      000000000F0000000F000F0000000000000000000000FF7FFF7FFF7FFF7FFF7F
      0F00FF7FFF7FFF7FFF7F0F000F0000000000000000000000FF7F000000000000
      00000000FF7F00000000000000000000000000000000F75E0000000000000000
      F75E000000000000000000000000000000000000000000000F000F0000000000
      000000000F000F000F000F0000000000000000000000FF7F00000000FF7F0000
      0F000F000F000F000F000F000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000F000F000F00000000000000000000000000FF7FFF7FFF7FFF7F0000
      FF7F000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000EF3D000000000000
      EF3D000000000000000000000000000000000000000000000000000000000000
      000000000F000F000F000F0000000000000000000000FF7FFF7FFF7FFF7F0000
      0000000000000000000000000000000000000000000000000000FF7F00000000
      000000000000FF7F000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000F75EF75E0F3CF75E
      F75EF75EF75EF75E0F3CF75E0000000000000000F75EF75EF75EF75EFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000E07FFF7FFF7FFF7FE07FFF7F
      FF7FFF7F0000000000000000000000000000000000000000EF3DF75EE07FF75E
      F75E0000EF3DEF3DEF3D00000000000000000000000000000F3C0F3C0F3C0F3C
      0F3C0F3C0F3C0F3C0F3C0F3C0000000000000000F75E00000000F75EFF7FEF3D
      EF3DEF3DEF3DEF3DFF7F00000000000000000000FF7FFF7FE07FFF7FFF7FFF7F
      E07FFF7F0000000000000000000000000000000000000000EF3DFF7FFF7FFF7F
      E07FFF7F0000E07FF75EEF3DEF3D00000000000000000000F75EF75E0F3CF75E
      F75EF75EF75EF75E0F3CF75E0000000000000000F75EF75EF75EF75EFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000E07FFF7F0000FF7FE07F0000
      0000FF7F00000000000000000000000000000000000000000000EF3DE07FFF7F
      FF7FFF7FE07F0000FF7FE07FF75EEF3D0000000000000000F75EF75E0F3CF75E
      F75EF75EF75EF75E0F3CF75E0000000000000000F75E00000000F75EFF7FEF3D
      EF3DEF3DEF3DEF3DFF7F0000F75EF75E00000000FF7F0000E07F0000FF7FFF7F
      E07FFF7F0000F75EF75EF75EF75EF75E00000000000000000000EF3DFF7FFF7F
      E07FFF7FFF7F0000FF7F00000000EF3D0000000000000000F75EF75E0F3CF75E
      F75EF75EF75EF75E0F3CF75E0000000000000000F75EF75EF75EF75EFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F0000FF7FF75E00000000E07FFF7FFF7FFF7F0000FF7F
      FF7FFF7F0000FF7FFF7FFF7FFF7FF75E000000000000000000000000EF3DFF7F
      FF7FFF7FE07FEF3D0000FF7FE07FF75E0000000000000000F75EF75E0F3CF75E
      F75EF75EF75EF75E0F3CF75E0000000000000000000000000000000000000000
      000000000000000000000000FF7FF75E00000000FF7FFF7FE07FFF7FFF7FFF7F
      E07FFF7F00000F000F00FF7FFF7FF75E00000000000000000000000000000000
      E07FFF7FFF7FFF7FE07FFF7FFF7FF75E0000000000000000F75EF75E0F3CF75E
      F75EF75EF75EF75E0F3CF75E000000000000000000000000EF3DFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FF75E00000000E07FFF7F0000FF7FE07F0000
      0000FF7F0000FF7FFF7FFF7FFF7FF75E000000000000000000000000EF01EF01
      0000FF7FE07FFF7FFF7FFF7FE07FF75E0000000000000000F75EF75E0F3CF75E
      F75EF75EF75EF75E0F3CF75E000000000000000000000000EF3DFF7FFF7F0F00
      0F000F000F000F000F00FF7FFF7FF75E00000000FF7F0000E07F0000FF7FFF7F
      E07FFF7F00000F000F00FF7FFF7FF75E00000000EF01EF01000000000000EF01
      0000FF7FFF7FFF7FE07FFF7FFF7FF75E0000000000000000F75EF75E0F3CF75E
      F75EF75EF75EF75E0F3CF75E000000000000000000000000EF3DFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F003C003CF75E00000000E07FFF7FFF7FFF7F0000FF7F
      FF7FFF7F0000FF7FFF7F003C003CF75E00000000FF03EF010000FF030000EF01
      000000000000FF7FFF7FFF7FE07FF75E0000000000000000F75EF75E0F3CF75E
      F75EF75EF75EF75E0F3CF75E000000000000000000000000EF3DFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F003C003CF75E00000000FF7FFF7FE07FFF7FFF7FFF7F
      E07FFF7F0000FF7FFF7F003C003CF75E00000000FF03FF0300000000FF03FF03
      0000FF7FFF7FFF7FE07FFF7FFF7FF75E0000000000000000F75EF75E0F3CF75E
      F75EF75EF75E000000000000000000000000000000000000EF3DF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75E00000000000000000000000000000000
      000000000000F75EF75EF75EF75EF75E00000000000000000000000000000000
      FF7FFF7FE07FFF7FFF7FFF7FE07FF75E00000000000000000F3C0F3C0F3C0F3C
      0F3C0F3C0F3C0000F75E00000000000000000000000000000000EF3DFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000000000000000EF3DFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000EF3DFF7F
      E07FFF7FFF7FFF7FE07FFF7FFF7FF75E0000000000000000F75EF75E0F3CF75E
      F75EF75EF75E00000000000000000000000000000000000000000000EF3DFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000EF3DFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000EF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3D00000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EF3D
      EF3DEF3DEF3DEF3DEF3D0000000000000000000000000000000000000000EF3D
      EF3DEF3DEF3DEF3DEF3D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E03DE03DE03DE03DE03D
      E03DE03DE03DE03DE03DE03D000000000000EF3DF75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75E000000000000000000000000000000000000000000000F00
      0F000F000F000F00000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F0000000000000000000000000000E03DE03DE03DE03DE03D
      E03DE03DE03DE03DE03DE03D000000000000EF3DFF7FE07FFF7FFF7FFF7FFF7F
      FF7FEF3D000000000000EF3D00000000000000000F000F000F000F000F000F00
      0F000F000F000F000F000F000F000F000F000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F0000000000000000EF3D00000000000000000000E03DE03DE03DE03DE03D
      E03DE03DE03DE03DE03DE03D000000000000EF3DFF7FFF7FFF7F000000000000
      0000EF3DF75EF75EEF3D0000EF3D0000000000000F000F000F000F000F000F00
      EF3D0F00FF7F0F000F000F000F000F000F000000FF7FFF7FFF7FFF7FFF7FFF7F
      0000EF3DF75EF75EEF3D0000EF3D0000000000000000E03DE03DE03DE03DE03D
      E03DE03DE03DE03DE03DE03D000000000000EF3DFF7FE07F00001F001F000000
      EF3DF75EF75EFF03EF3DEF3D00000000000000000F000F00EF3DEF3DEF3DEF3D
      EF3D0F00FF7FFF7FFF7FFF7FFF7F0F000F000000FF7FFF7FFF7FFF7FFF7F0000
      EF3DF75EF75EFF03EF3DEF3D00000000000000000000E03DE03DE03DE03DE03D
      E03DE03DE03DE03DE03DE03D000000000000EF3DFF7FEF3D1F001F00E0010000
      F75EFF03F75EF75EEF3DF75E00000000000000000F000F00EF3DEF3DEF3DEF3D
      EF3D0F00FF7FFF7FFF7FFF7FFF7F0F000F000000FF7FFF7FFF7FFF7FFF7F0000
      F75EF75EF75EF75EEF3DF75E00000000000000000000E03DE03DE03DE03DE03D
      E03DE03DE03DE03DE03DE03D000000000000EF3DFF7FEF3D1F00E001E0010000
      FF03FF03FF03F75EEF3DF75E00000000000000000F000F00EF3DEF3DEF3DEF3D
      EF3D0F00FF7FFF7FFF7FFF7FFF7F0F000F000000FF7FFF7FFF7FFF7FFF7F0000
      F75EFF03F75EF75EEF3DF75E00000000000000000000E03DE03DE03DE03DE03D
      E03DE03DE03DE03DE03DE03D000000000000EF3DFF7FEF3D1F00E001E001EF3D
      EF3DFF03FF03F75EEF3DEF3D00000000000000000F000F00EF3DEF3DEF3DEF3D
      EF3D0F00FF7FFF7FFF7FFF7FFF7F0F000F000000FF7FFF7FFF7FFF7FFF7F0000
      EF3DFF03FF03F75EEF3DEF3D0000000000000000EF3D00000000000000000000
      000000000000000000000000EF3D00000000EF3DFF7FEF3D1F00FF7FEF01E001
      0000EF3DFF03F75EEF3D000000000000000000000F000F00EF3DEF3DEF3DEF3D
      EF3D0F00FF7FFF7FFF7FFF7FFF7F0F000F000000FF7FFF7FFF7FFF7FFF7FFF7F
      0000EF3DF75EF75EEF3D0000000000000000000000000000FF7FFF7FFF7F0000
      000000000000000000000000000000000F00EF3DFF7FFF7FEF3D1F00FF7F1F00
      E001EF3D000000000000000000000000000000000F000F00EF3DEF3DEF3DEF3D
      EF3D0F00FF7FFF7FFF7FFF7FFF7F0F000F000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000F00EF3DFF7FE07FFF7FEF3DEF3DEF3D
      EF3DFF7FFF7FE07F0000000000000000000000000F000F00EF3DEF3DEF3DEF3D
      EF3D0F00FF7FFF7FFF7FFF7FFF7F0F000F000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000000000000000000000000000000000000000
      000000000000000000000F0000000F000000EF3DFF7FFF7FFF7FE07FFF7FFF7F
      FF7F0000000000000000000000000000000000000F000F00EF3DEF3DEF3DEF3D
      0F0000000F00FF7FFF7FFF7FFF7F0F000F000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F000000000000000000000000000000000000000000000000000000000000
      000000000000000000000F000F0000000000EF3DFF7FE07FFF7FFF7FFF7FE07F
      FF7FF75EF75EEF3D00000000000000000000000000000F000F000F000F000F00
      0000000000000F000F000F000F000F0000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F0000F75E0000000000000000000000000000000000000000000000000000
      000000000000000000000F000F000F000000EF3DFF7FFF7FFF7FE07FFF7FFF7F
      FF7FF75EEF3D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7F000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EF3DEF3DEF3DEF3DEF3DEF3DEF3D
      EF3DEF3D00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7F0000FF7F0000FF7F0000
      FF7F0000FF7F0000FF7F0000FF7F0000FF7F00000000EF3DF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF7F0000FF7F0000000000000000
      00000000000000000000FF7F0000FF7F000000000000EF3DFF7FFF7FFF7FE07F
      FF7FFF7FFF7FE07FFF7FFF7FF75E000000000000EF3DFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7F0000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F00000000FF7F0000FF7F00000000EF3DFF7FE07FFF7FFF7F
      FF7FE07FFF7FFF7FFF7FE07FF75E000000000000EF3DFF7FEF3DEF3DEF3DEF3D
      EF3DFF7F0000000000000000000000000000000000000000E03DE03DE03DE03D
      E03DE03DE03DE03DE03D0000000000000000FF7F00000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F0000FF7F0000FF7F000000000000EF3DFF7FFF7FFF7FF75E
      000000000000F75EFF7FFF7FF75E000000000000EF3DFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F000000000000000000000000000000000000E07F0000E03DE03DE03D
      E03DE03DE03DE03DE03DE03D0000000000000000FF7F0000FF7F0F000F000F00
      0F000F000F00FF7F00000000FF7F0000FF7F00000000EF3DFF7FE07FF75E0F00
      1F000F000F000000F75EE07FF75E000000000000EF3DFF7FEF3DEF3DEF3DEF3D
      EF3DFF7F0000F75EF75EF75EF75EF75E000000000000FF7FE07F0000E03DE03D
      E03DE03DE03DE03DE03DE03DE03D00000000FF7F00000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F0000FF7F0000FF7F000000000000EF3DFF7FFF7FEF3D1F00
      1F00E0011F000F000F00FF7FF75E000000000000EF3DFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F0000FF7FFF7FFF7FFF7FF75E000000000000E07FFF7FE07F0000E03D
      E03DE03DE03DE03DE03DE03DE03DE03D00000000FF7F0000FF7F0F000F000F00
      0F000F000F00FF7F00000000FF7F0000FF7F00000000EF3DFF7FE07FEF01F75E
      EF3DE001EF011F000F00E07FF75E000000000000EF3DFF7FEF3DEF3DFF7F0000
      0000000000000F00FF7FFF7FFF7FF75E000000000000FF7FE07FFF7FE07F0000
      000000000000000000000000000000000000FF7F00000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F0000FF7F0000FF7F000000000000EF3DFF7FFF7FEF01FF7F
      F75EE0010F001F000F00FF7FF75E000000000000EF3DFF7FFF7FFF7FFF7FEF3D
      FF7FFF7FEF3DFF7FFF7FFF7FFF7FF75E000000000000E07FFF7FE07FFF7FE07F
      FF7FE07FFF7FE07F000000000000000000000000FF7F0000FF7F0F000F000F00
      0F000F000F00FF7F00000000FF7F0000FF7F00000000EF3DFF7FE07FEF01F75E
      EF011F00EF01E001EF3DE07FF75E000000000000EF3DFF7FFF7FFF7FFF7FEF3D
      FF7FEF3D0F000F00FF7F003C003CF75E000000000000FF7FE07FFF7FE07FFF7F
      E07FFF7FE07FFF7F00000000000000000000FF7F00000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F0000FF7F0000FF7F000000000000EF3DFF7FFF7FF75EEF01
      EF3DEF01E001EF01F75EFF7FF75E000000000000EF3DEF3DEF3DEF3DEF3DEF3D
      EF3DFF7FFF7FFF7FFF7F003C003CF75E000000000000E07FFF7FE07F00000000
      0000000000000000000000000000000000000000FF7F0000FF7FFF7FFF7FFF7F
      0F000F000F00FF7F00000000FF7F0000FF7F00000000EF3DFF7FE07FFF7FF75E
      EF01EF01EF01F75EFF7FE07FF75E000000000000000000000000EF3DF75EF75E
      F75EF75EF75EF75EF75EF75EF75EF75E00000000000000000000000000000000
      000000000000000000000000000000000000FF7F00000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F0000FF7F0000FF7F000000000000EF3DFF7FFF7FFF7FE07F
      FF7FFF7FFF7FE07F0000000000000000000000000000000000000000EF3DFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7F00000000000000000000
      0000000000000000FF7F0000FF7F0000FF7F00000000EF3DFF7FE07FFF7FFF7F
      FF7FE07FFF7FFF7FF75EFF7FEF3D00000000000000000000000000000000EF3D
      FF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000F000F000F000F000F000F000F00
      0F000F000F000F000F000F000F000F000F0000000000EF3DFF7FFF7FFF7FE07F
      FF7FFF7FFF7FE07FF75EEF3D0000000000000000000000000000000000000000
      EF3DFF7FFF7FFF7FFF7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F000F000F000F000F000F000F00
      0F000F000F000F000F000F00FF7F0F00FF7F00000000EF3DEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3D00000000000000000000000000000000000000000000
      0000EF3DEF3DEF3DEF3D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E03DE03D000000000000
      0000F75E0000E03D0000000000000000000000000000F75EF75EF75EF75EF75E
      F75EF75EF75EF75E0000F75E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E03DE03D000000000000
      0000F75E0000E03D000000000000000000000000000000000000000000000000
      000000000000000000000000F75E000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FEF3DEF3DEF3DEF3DEF3D
      EF3DEF3DEF3DEF3DEF3DEF3DEF3DEF3D000000000000E03DE03D000000000000
      000000000000E03D0000E03D0000000000000000F75EF75EF75EF75EF75EF75E
      E07FE07FE07FF75EF75E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7F007CF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EEF3D000000000000E03DE03DE03DE03DE03D
      E03DE03DE03DE03D0000E03D0000000000000000F75EF75EF75EF75EF75EF75E
      EF3DEF3DEF3DF75EF75E0000F75E0000000000000000F75EFF7FF75EFF7FF75E
      00000000FF7FF75EFF7FF75EFF7F000000000000FF7FF75EF75E000000000000
      00000000000000000000F75EF75EEF3D000000000000E03DE03D000000000000
      00000000E03DE03D0000E03D0000E03D00000000000000000000000000000000
      000000000000000000000000F75EF75E00000000F75EFF7F0000000000000000
      000000000000000000000000F75EFF7F00000000FF7FF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EEF3D000000000000E03D0000F75EF75EF75E
      F75EF75E0000E03D0000E03D0000E03D00000000F75EF75EF75EF75EF75EF75E
      F75EF75EF75EF75E0000F75E0000F75E00000000FF7F0000EF3D000000000000
      00000000000000000000EF3D0000F75E00000000FF7FF75EF75E000000000000
      00000000000000000000F75EF75EEF3D000000000000E03D0000F75EF75EF75E
      F75EF75E0000E03D0000E03D0000E03D00000000000000000000000000000000
      0000000000000000F75E0000F75E000000000000F75EFF7F0000000000000000
      000000000000000000000000F75EFF7F00000000FF7FF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EEF3D000000000000E03D0000F75EF75EF75E
      F75EF75E000000000000E03D0000E03D0000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F0000F75E0000F75E000000000000F75EFF7FF75EFF7FF75E
      00000000FF7FF75EFF7FF75EFF7F000000000000FF7FF75EF75EF75EF75EF75E
      F75EF75EF75EF75EF75EF75EF75EEF3D000000000000E03D0000F75EF75EF75E
      F75EF75E0000F75E0000E03D0000E03D00000000000000000000FF7F00000000
      000000000000FF7F000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000
      0000000000000000000000000000E03D00000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E03D0000F75E
      F75EF75EF75EF75E0000F75E0000E03D000000000000000000000000FF7F0000
      0000000000000000FF7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E03D
      0000F75EF75EF75EF75EF75E0000F75E00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018630000186300000000
      1863000000000000000018630000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EF3D
      EF3DEF3D00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000186300000000186300001863
      000000000000FF03000000000000186300000000000000000000EF3D00000000
      000000000000EF3D000000000000000000000000000000000000000000000000
      00000000EF3D0000EF3DEF3D0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000186300001863000000001863
      000018630000FF03100200001863000000000000000000000000003C007C007C
      007C007C007C003C00000000000000000000000000000000EF3D000000000000
      000000000000000000000000EF3D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000018630000FF0310021002000000000000000000000000007C007C007C007C
      007C007C007C007C007C000000000000000000000000EF3D000000000000F75E
      F75EF75E00000000000000000000EF3D00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      186300000000FF031002100200001863000000000000007C007C007C007C007C
      007C007C007C007C007C007C0000000000000000EF3D0000F75EEF3D00000000
      F75EF75E0000EF3DF75E00000000EF3D00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000018631042
      104210420000FF0310021002000018630000EF3D003C007C007C007C007C007C
      007C007C007C007C007C007C003CEF3D000000000000EF3DF75EEF3DF75EF75E
      EF3D0000F75EEF3DEF3DEF3DEF3DEF3D00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001042
      104210420000FF03100210020000186300000000007C007C007CFF7FFF7F007C
      007C007CFF7FFF7F007C007C007C000000000000000000000000F75EF75E0000
      FF7FFF7F0000F75E0000000000000000EF3D00000000F75EFF7FF75EFF7F0000
      000000000000F75EFF7FF75EFF7F000000000000000018631863000010020000
      104210420000FF03104210020000186300000000007C007C007C007CFF7FFF7F
      007CFF7FFF7F007C007C007C007C00000000EF3D0000F75E0000F75E0000F75E
      F75EF75EFF7FEF3D0000F75EF75E0000EF3D0000F75EFF7F0000000000000000
      000000000000000000000000F75EFF7F000000000000000000000000FF031002
      000010420000FF03000010020000186300000000007C007C007C007C007CFF7F
      FF7FFF7F007C007C007C007C007C00000000EF3D0000F75EF75EFF7F0000EF3D
      0000F75EFF7FEF3DF75EF75EF75E0000EF3D0000FF7F00000000000000000000
      0000000000000000000000000000F75E00000000FF03FF03FF03FF03FF03FF03
      100200000000FF03100210020000186300000000007C007C007C007C007CFF7F
      FF7FFF7F007C007C007C007C007C00000000EF3D000000000000FF7F0000EF3D
      EF3DF75E0000F75E000000000000000000000000F75EFF7F0000000000000000
      000000000000000000000000F75EFF7F00000000FF03FF03FF03FF03FF03FF03
      100210420000FF03100210020000186300000000007C007C007C007CFF7FFF7F
      007CFF7FFF7F007C007C007C007C000000000000000000000000F75EFF7F0000
      00000000F75EF75E00000000EF3D0000000000000000F75EFF7FF75EFF7F0000
      000000000000F75EFF7FF75EFF7F0000000000000000000000000000FF031002
      104210420000FF0310021002000018630000EF3D003C007C007CFF7FFF7F007C
      007C007CFF7FFF7F007C007C003CEF3D000000000000EF3DF75EEF3DF75EFF7F
      FF7FF75EF75EEF3DEF3DEF3D0000EF3D00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000010021042
      104210420000FF031002100200001863000000000000007C007C007C007C007C
      007C007C007C007C007C007C0000000000000000EF3D0000F75EEF3D00000000
      F75E00000000F75EF75E0000EF3D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001042
      1042104210420000FF031002000018630000000000000000007C007C007C007C
      007C007C007C007C007C000000000000000000000000EF3D0000EF3D0000F75E
      F75EF75E0000EF3D0000EF3D0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001042
      10421042104210420000FF030000186300000000000000000000003C007C007C
      007C007C007C003C00000000000000000000000000000000EF3D000000000000
      00000000EF3D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EF3D00000000
      000000000000EF3D00000000000000000000000000000000000000000000EF3D
      EF3DEF3D00000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300100000100010000000000800900000000000000000000
      000000000000000000000000FFFFFF00FFCF000080008000FFC7000080008000
      FFC30000000080000001000100018000000100FF803F8000000301FFC03F8000
      0007F3FFE7FF80000007F7FFF7FFFFFF0007FFFFFFFFFFFF0007FFFFFFFFFFFB
      0007FE0007C1FFF90007FE0007C1F5400007FE0007C1FFF9000780000101FFFB
      000780000001FFFF0007800000018E3FFFCFFFCFFFCFFFCFFFC7FFC7FFC7FFC7
      FFC3FFC3FFC3FFC3000100010001000100010001000100010003000300030003
      0007000700070007000700070007000700070007000700070007000700070007
      0007000700070007000700070007000700070007000700070007000700070007
      00070007000700070007000700070007FFFFFFFFFFCFFFCFE1E1FFFFFFC7FFC7
      E1E10000FFC3FFC3E081000000010001E0010000000100010001000000030003
      0003000000070007000300000007000700070000000700070007000000070007
      0007000000070007000F000000070007000F000000070007000F000000070007
      000F000000070007000FFFFF00070007FFC1FFFFFFFFFFFFF001FFFF8000FFFF
      000000008000FFFF00006EEE8000FFFF00006EEE8000E00F000060008000F3EF
      00006EEE8000F9FF00006EEE8000FCFF000060000000FE7F00006EEE0000FCFF
      00006EEE8000F9FF000000008000F3EF00006FFE8000E00F00006FFEE07FFFFF
      00000000F03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FE03FFFF
      FFF1FF00FE0300008031F800FE0300008031F800FE030000803FC000C0030000
      803BC000C0030000803100000003000080310000000300008031000000030000
      80310007007F000080710007007D000080F1003F0078000081F1003F007D0000
      FFFB00FF01DD0000FFFF00FF01E3FFFFF55FF55FF55FF55FFFCFFFCFFFCFFFCF
      F007F007F007F007F007F007F007F007F003F003F003F003F003F003F003F003
      F001F001E001F001F000B000E000E000E00090000000C000C001800100018001
      8003C003000300031007C00700070007380FC00F000F800FFC1F801F001FC01F
      FEFF88FFF1FFE7FFFF7FFC7FF3FFF7FFFFFFFFFFFFFFF55FF8FF8003D57FFFCF
      E03F8003FF3FE007800F8003801FE007800F8003801FE003800F8003800FE003
      800F8003800FE001800F80038007E000800780038003E0008003800380034001
      801180038007000780388003801F800FC0FC8003803F001FF1FF8007807F003F
      FFFF800F80FF81FFFFFF801FFFFF24FFFFFFFFFFE001FFFF0003FFFFE001E003
      00010001E001E00300000001E001E003000000018001E0030001000180018003
      000100018001800300010001C0018003000100010001C0030001000100010003
      00010001800300030C010001C00780070C010101C00FC00F0C11C387E07FC01F
      8C1FFFFFF03FE07FCE1FFFFFFFFFF03FFFFFF8438000FFC1FFFFF0010000F001
      C000E000000000008000E0E0000000008000E000000000000000C00100000000
      00008003000000000000000F000000000000000F000000008000000F00000000
      8000000F000000008000000F000000000001000F0000000011FF801F00000000
      F8FFC03F00000000FC7FE07F0001FFFFFFFFFFFFFFFFFFFFC003F800FFFFC000
      C003F800C1C18000C003000081818000C003000081818000C0030000B39B8000
      C0030000F78F8000C0030000E7C70000C0030000CFC30000C00300008FE38000
      C00300008FE30000C003000087E70001E0030000C3C781FFF0030000C00F24FF
      F803001FF03F66FFFFFF001FFFFFE7FFFFFFFFFFFFFFFFFFC001FF87C001C001
      8000FF03C001C0018000FE01C001C0018000FE01C001C00180008001C001C001
      80008001C001C00180008003C001C00180008007C001C00180008007C001C001
      80008007C001C00180008007C001C00180008007C001C001C0018007C001C001
      FFFF8007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC001007FFFFFC001
      8000007CC0018000800000788000800080000071800080008000002380008000
      80000007800080008000000F8000800080000007800080008000000780008000
      800000078000800080000007800080008000C00780008000C001E00F8000C001
      FFFFF01FC001FFFFFFFFF83FFFFFFFFFFBFFFFFFFFFFFFE7F3FFC000C0008000
      E3FF800080008000C0008000800080008000800080008000C000800080008000
      E000800080008000E000800080008000E000000080008000E000000080008000
      E000000000008000E000000100018000E00000FF803F8000E00001FFC03F8000
      E000F3FFE7FF8000E000F7FFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
      FC3FFE0007C1FFF9F00FFE0007C1F540E3C7FE0007C1FFF9E7E780000101FFFB
      CFF380000001FFFFCFF3800000018E3FCFF3800000018E3FCFF380018003843F
      E7A78003C107843FE7878007C107803FFF8F807FE38FC07FFF8780FFE38FE4FF
      FFFF81FFE38FE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0030007003FF00F
      C0030007003FE003C0030007003FE001C00300000000F000C00300000000F000
      C00300000000F800C00300000000F800C003E00000009000C003E00000000000
      C003E00000000000C003E00000000000C003E00000009800C007F001F001F800
      C00FF803F803F800C01FFC07FC07FFFFFFFFFFFFFFFFFFFF8003000CFFFF000C
      80030000FC1F0008800300018000000180030003800000038003000380000003
      8003000380000003800300038000000380030003800000038003000780000007
      C1FE000F8000000FE3FE000F8000000FFFF5000F8080000FFFF3001FC1C1001F
      FFF1003FFFFF003FFFFF007FFFFF007F0000C001FFFFFFFFAAAAC001803FFFFF
      5005C001803F800FA00AC001803F80076005C00180008003A00AC00180008001
      6005C00180008000A00AC001800080006005C0018000800FA00AC0018000800F
      6005C0018000800FA00AC001F000C7F86015C001F801FFFCBFEAC003FC03FFBA
      0000C007FE07FFC70000C00FFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00FC007
      FFFFFFFF800F8003FFFF000080030001FFFF000080030001C183000080000001
      8001000080000000000000008000000007E0000080008000000000008000C000
      800100008000E001C18300008000E007FFFF0000E000F007FFFFFFFFE000F003
      FFFFFFFFF800F803FFFFFFFFF800FFFFD697FFFFFC7FFFFFB58DF01FFC27FFFF
      AD03E00FEC23EEEF0300C007C401F6DFFE8180038001FFFFF0010001C001C303
      F0010001E0008181C0010001000000C08001000100001FF80001000100030300
      00010001E0038181F0010001C001C0C3F00180038003FFFFF401C007C407FB6F
      FC01E00FEC3FF777FC03F01FFC7FFFFF00000000000000000000000000000000
      000000000000}
  end
  object wwT: TwwTable
    Active = True
    AfterInsert = wwTAfterInsert
    BeforePost = qZemljeBeforePost
    AfterPost = wwTAfterPost
    OnPostError = wwTPostError
    DatabaseName = 'kulture'
    IndexFieldNames = 'Sifra_zahtjeva'
    TableName = 'Zahtjev_Pravo.DB'
    ControlType.Strings = (
      'Sifra_druga_zemlja;CustomEdit;wwDBLookupCombo2;F')
    PictureMasks.Strings = (
      'Upisni_broj'#9'######'#9'T'#9'T')
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 620
    Top = 11
    object wwTSifra_zahtjeva: TAutoIncField
      FieldName = 'Sifra_zahtjeva'
      ReadOnly = True
      Visible = False
    end
    object wwTSifra_dok: TSmallintField
      FieldName = 'Sifra_dok'
      Visible = False
    end
    object wwTUpisni_broj: TStringField
      FieldName = 'Upisni_broj'
      Size = 6
    end
    object wwTDatum_prijavljivanja: TDateTimeField
      FieldName = 'Datum_prijavljivanja'
      DisplayFormat = 'd.m.yyyy hh:mm'
    end
    object wwTlook_ImePodnositelja: TStringField
      DisplayLabel = 'Ime podnositelja'
      DisplayWidth = 60
      FieldKind = fkLookup
      FieldName = 'look_ImePodnositelja'
      LookupDataSet = tPartner1
      LookupKeyFields = 'Sifra_partnera'
      LookupResultField = 'Ime_partnera'
      KeyFields = 'Sifra_podnositelja'
      Size = 60
      Lookup = True
    end
    object wwTlook_ImeOplemenjivaca: TStringField
      DisplayLabel = 'Ime oplemenjiva'#269'a'
      FieldKind = fkLookup
      FieldName = 'look_ImeOplemenjivaca'
      LookupDataSet = tPartner2
      LookupKeyFields = 'Sifra_partnera'
      LookupResultField = 'Ime_partnera'
      KeyFields = 'Sifra_oplemenjivaca'
      Size = 60
      Lookup = True
    end
    object wwTIme_zastupnika: TStringField
      DisplayLabel = 'Ime i prezime zastupnika'
      FieldName = 'Ime_zastupnika'
      Size = 50
    end
    object wwTAdresa_zastupnika: TStringField
      DisplayLabel = 'Adresa zastupnika'
      FieldName = 'Adresa_zastupnika'
      Size = 50
    end
    object wwTMaticna_zemlja: TStringField
      FieldName = 'Maticna_zemlja'
      Size = 30
    end
    object wwTSifra_MaticnaZemlja: TIntegerField
      FieldName = 'Sifra_MaticnaZemlja'
    end
    object wwTlook_MaticnaZemlja: TStringField
      FieldKind = fkLookup
      FieldName = 'look_MaticnaZemlja'
      LookupDataSet = tDrzava2
      LookupKeyFields = 'Sifra'
      LookupResultField = 'Naziv_Drzave'
      KeyFields = 'Sifra_MaticnaZemlja'
      Size = 30
      Lookup = True
    end
    object wwTKoristena_prodavana: TBooleanField
      FieldName = 'Koristena_prodavana'
    end
    object wwTKoja_zemlja: TStringField
      FieldName = 'Koja_zemlja'
      Size = 30
    end
    object wwTSifra_KojaZemlja: TIntegerField
      FieldName = 'Sifra_KojaZemlja'
    end
    object wwTlook_KojaZemlja: TStringField
      FieldKind = fkLookup
      FieldName = 'look_KojaZemlja'
      LookupDataSet = tDrzava3
      LookupKeyFields = 'Sifra'
      LookupResultField = 'Naziv_Drzave'
      KeyFields = 'Sifra_KojaZemlja'
      Size = 30
      Lookup = True
    end
    object wwTDatum_kor_prod: TDateField
      FieldName = 'Datum_kor_prod'
    end
    object wwTKoji_uvjeti: TStringField
      FieldName = 'Koji_uvjeti'
      Size = 50
    end
    object wwTPodnositeljev_pristanak: TBooleanField
      FieldName = 'Podnositeljev_pristanak'
    end
    object wwTPravo_za_zahtjev: TBooleanField
      FieldName = 'Pravo_za_zahtjev'
    end
    object wwTKoji_zahtjev: TStringField
      DisplayWidth = 60
      FieldName = 'Koji_zahtjev'
      Size = 60
    end
    object wwTDokumenti: TStringField
      FieldName = 'Dokumenti'
      Size = 100
    end
    object wwTDatum_promjene: TDateTimeField
      FieldName = 'Datum_promjene'
      Visible = False
    end
    object wwTlook_ImeSorte: TStringField
      FieldKind = fkLookup
      FieldName = 'look_ImeSorte'
      LookupDataSet = tZahtPB
      LookupKeyFields = 'Sifra_zahtjeva'
      LookupResultField = 'Ime_sorte'
      KeyFields = 'Sifra_ZPriznavanja'
      Size = 30
      Lookup = True
    end
    object wwTlook_OznakaSorte: TStringField
      FieldKind = fkLookup
      FieldName = 'look_OznakaSorte'
      LookupDataSet = tZahtPB
      LookupKeyFields = 'Sifra_zahtjeva'
      LookupResultField = 'Oznaka_sorte'
      KeyFields = 'Sifra_ZPriznavanja'
      Size = 30
      Lookup = True
    end
    object wwTlook_VrstaHR: TStringField
      FieldKind = fkLookup
      FieldName = 'look_VrstaHR'
      LookupDataSet = tZahtPB
      LookupKeyFields = 'Sifra_zahtjeva'
      LookupResultField = 'look_Vrsta_HR'
      KeyFields = 'Sifra_ZPriznavanja'
      Size = 30
      Lookup = True
    end
    object wwTSifra_podnositelja: TIntegerField
      FieldName = 'Sifra_podnositelja'
      Visible = False
    end
    object wwTSifra_oplemenjivaca: TIntegerField
      FieldName = 'Sifra_oplemenjivaca'
      Visible = False
    end
    object wwTMjesto_zastupnika: TStringField
      FieldName = 'Mjesto_zastupnika'
      Visible = False
      Size = 30
    end
    object wwTSifra_ZPriznavanja: TIntegerField
      FieldName = 'Sifra_ZPriznavanja'
      Visible = False
    end
    object wwTSifra_druga_zemlja: TIntegerField
      FieldName = 'Sifra_druga_zemlja'
      Visible = False
    end
  end
  object ds: TwwDataSource
    DataSet = wwT
    OnDataChange = dsDataChange
    Left = 588
    Top = 11
  end
  object qMax: TQuery
    DatabaseName = 'kulture'
    SQL.Strings = (
      'select max(cast(upisni_broj as int)) broj'
      'from Zahtjev_Pravo')
    Left = 21
    Top = 88
  end
  object Zahtjev_Master: TQuery
    Active = True
    DatabaseName = 'kulture'
    SQL.Strings = (
      
        'SELECT CAST(Zahtjev_Pravo.sifra_dok as CHAR(2))+'#39' '#39'+ Zahtjev_Pra' +
        'vo.Upisni_broj Upisni_broj, '
      'Zahtjev_Pravo.Datum_prijavljivanja, '
      'PB.Ime_sorte, Vrsta.Vrsta_hrv, Vrsta.Vrsta_lat, '
      
        'Partner.Ime_partnera, Zahtjev_Pravo.Sifra_zahtjeva, PB.Oznaka_so' +
        'rte'
      'FROM "Zahtjev_Pravo.DB" Zahtjev_Pravo'
      '   LEFT OUTER JOIN "Priznanje_PB.DB" PB'
      '   ON  (Zahtjev_Pravo.Sifra_ZPriznavanja = PB.Sifra_zahtjeva)'
      '   LEFT OUTER JOIN "Vrsta.DB" Vrsta'
      '   ON  (PB.Sifra_vrste = Vrsta.Sifra_vrste)'
      '   LEFT OUTER JOIN "Partner.DB" Partner'
      
        '   ON  (Zahtjev_Pravo.Sifra_podnositelja = Partner.Sifra_partner' +
        'a)  ')
    Left = 704
    Top = 8
    object Zahtjev_MasterUpisni_broj: TStringField
      DisplayLabel = 'Upisni broj'
      FieldName = 'Upisni_broj'
      Size = 8
    end
    object Zahtjev_MasterDatum_prijavljivanja: TDateTimeField
      DisplayLabel = 'Datum prijave'
      FieldName = 'Datum_prijavljivanja'
    end
    object Zahtjev_MasterIme_sorte: TStringField
      DisplayLabel = 'Ime sorte'
      FieldName = 'Ime_sorte'
      Size = 30
    end
    object Zahtjev_MasterVrsta_hrv: TStringField
      DisplayLabel = 'Vrsta hrvatski'
      FieldName = 'Vrsta_hrv'
      Size = 30
    end
    object Zahtjev_MasterVrsta_lat: TStringField
      DisplayLabel = 'Vrsta latinski'
      FieldName = 'Vrsta_lat'
      Size = 120
    end
    object Zahtjev_MasterIme_partnera: TStringField
      DisplayLabel = 'Ime podnositelja'
      FieldName = 'Ime_partnera'
      Size = 60
    end
    object Zahtjev_MasterSifra_zahtjeva: TIntegerField
      FieldName = 'Sifra_zahtjeva'
      Visible = False
    end
    object Zahtjev_MasterOznaka_sorte: TStringField
      DisplayLabel = 'Oznaka sorte'
      FieldName = 'Oznaka_sorte'
      Size = 30
    end
  end
  object dsZahtjev_Master: TDataSource
    DataSet = Zahtjev_Master
    Left = 672
    Top = 8
  end
  object tPartner1: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'Sifra_partnera'
    TableName = 'Partner.DB'
    Left = 276
    Top = 131
    object tPartner1Ime_partnera: TStringField
      DisplayLabel = 'Ime partnera'
      DisplayWidth = 60
      FieldName = 'Ime_partnera'
      Size = 60
    end
    object tPartner1Adresa: TStringField
      DisplayWidth = 60
      FieldName = 'Adresa'
      Visible = False
      Size = 60
    end
    object tPartner1Mjesto: TStringField
      DisplayWidth = 25
      FieldName = 'Mjesto'
      Size = 25
    end
    object tPartner1Sifra_partnera: TAutoIncField
      FieldName = 'Sifra_partnera'
      ReadOnly = True
    end
  end
  object dsPartner1: TDataSource
    DataSet = tPartner1
    Left = 304
    Top = 131
  end
  object dsPartner2: TDataSource
    DataSet = tPartner2
    Left = 304
    Top = 163
  end
  object tPartner2: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'Sifra_partnera'
    TableName = 'Partner.DB'
    Left = 276
    Top = 163
    object StringField1: TStringField
      DisplayLabel = 'Ime partnera'
      DisplayWidth = 60
      FieldName = 'Ime_partnera'
      Size = 60
    end
    object StringField2: TStringField
      DisplayWidth = 60
      FieldName = 'Adresa'
      Visible = False
      Size = 60
    end
    object StringField3: TStringField
      DisplayWidth = 25
      FieldName = 'Mjesto'
      Size = 25
    end
    object AutoIncField1: TAutoIncField
      FieldName = 'Sifra_partnera'
      ReadOnly = True
      Visible = False
    end
  end
  object tZahtPB: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'Sifra_zahtjeva'
    TableName = 'Priznanje_PB.DB'
    Left = 276
    Top = 255
    object tZahtPBOznaka_sorte: TStringField
      DisplayWidth = 30
      FieldName = 'Oznaka_sorte'
      Required = True
      Size = 30
    end
    object tZahtPBIme_sorte: TStringField
      DisplayWidth = 30
      FieldName = 'Ime_sorte'
      Size = 30
    end
    object tZahtPBlook_Vrsta_HR: TStringField
      DisplayLabel = 'Vrsta hrvatski'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'look_Vrsta_HR'
      LookupDataSet = tVrsta
      LookupKeyFields = 'Sifra_vrste'
      LookupResultField = 'Vrsta_hrv'
      KeyFields = 'Sifra_vrste'
      Size = 30
      Lookup = True
    end
    object tZahtPBlook_Vrsta_LAT: TStringField
      DisplayLabel = 'Vrsta latinski'
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'look_Vrsta_LAT'
      LookupDataSet = tVrsta
      LookupKeyFields = 'Sifra_vrste'
      LookupResultField = 'Vrsta_lat'
      KeyFields = 'Sifra_vrste'
      Visible = False
      Size = 50
      Lookup = True
    end
    object tZahtPBSifra_zahtjeva: TAutoIncField
      FieldName = 'Sifra_zahtjeva'
      ReadOnly = True
      Visible = False
    end
    object tZahtPBSifra_dok: TSmallintField
      FieldName = 'Sifra_dok'
      Required = True
      Visible = False
    end
    object tZahtPBUpisni_broj: TStringField
      FieldName = 'Upisni_broj'
      Required = True
      Visible = False
      Size = 6
    end
    object tZahtPBSifra_vrste: TIntegerField
      DisplayLabel = #352'ifra vrste'
      DisplayWidth = 10
      FieldName = 'Sifra_vrste'
    end
  end
  object dsZahtPB: TDataSource
    DataSet = tZahtPB
    Left = 308
    Top = 255
  end
  object tVrsta: TTable
    Active = True
    DatabaseName = 'kulture'
    Filtered = True
    IndexFieldNames = 'Sifra_vrste'
    TableName = 'Vrsta.DB'
    Left = 349
    Top = 256
    object tVrstaVrsta_hrv: TStringField
      DisplayLabel = 'Hrvatski naziv'
      DisplayWidth = 30
      FieldName = 'Vrsta_hrv'
      Size = 30
    end
    object tVrstaVrsta_lat: TStringField
      DisplayLabel = 'Latinski naziv'
      DisplayWidth = 50
      FieldName = 'Vrsta_lat'
      Size = 50
    end
    object tVrstaSifra_vrste: TAutoIncField
      DisplayLabel = #352'ifra'
      DisplayWidth = 10
      FieldName = 'Sifra_vrste'
      ReadOnly = True
      Visible = False
    end
  end
  object dsVrsta: TDataSource
    DataSet = tVrsta
    Left = 381
    Top = 256
  end
  object dsQZemlje: TDataSource
    DataSet = qZemlje
    Left = 612
    Top = 287
  end
  object qZemlje: TQuery
    Active = True
    AfterOpen = qZemljeAfterOpen
    BeforeInsert = qZemljeBeforeInsert
    BeforePost = qZemljeBeforePost
    AfterPost = qZemljeAfterPost
    DatabaseName = 'kulture'
    DataSource = ds
    RequestLive = True
    SQL.Strings = (
      
        'SELECT Sifra_zahtjeva, Drzava, Datum, Registarski_broj, Ime, Dat' +
        'um_promjene'
      'FROM Drugi_zahtjevi17'
      'WHERE Sifra_zahtjeva=:Sifra_zahtjeva')
    Left = 644
    Top = 287
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'Sifra_zahtjeva'
        ParamType = ptUnknown
        Size = 4
      end>
    object qZemljelook_NazivDrzave: TStringField
      DisplayLabel = 'Zemlja'
      DisplayWidth = 17
      FieldKind = fkLookup
      FieldName = 'look_NazivDrzave'
      LookupDataSet = tDrzava
      LookupKeyFields = 'Sifra'
      LookupResultField = 'Naziv_Drzave'
      KeyFields = 'Drzava'
      Size = 40
      Lookup = True
    end
    object qZemljeDatum: TDateField
      DisplayWidth = 15
      FieldName = 'Datum'
      Origin = 'KULTURE."Drugi_zahtjevi17.DB".Datum'
    end
    object qZemljeRegistarski_broj: TStringField
      DisplayLabel = 'Registarski broj'
      DisplayWidth = 17
      FieldName = 'Registarski_broj'
      Size = 30
    end
    object qZemljeIme: TStringField
      DisplayWidth = 19
      FieldName = 'Ime'
      Size = 30
    end
    object qZemljeDrzava: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'Drzava'
      Visible = False
    end
    object qZemljeDatum_promjene: TDateTimeField
      FieldName = 'Datum_promjene'
      Visible = False
    end
    object qZemljeSifra_zahtjeva: TIntegerField
      FieldName = 'Sifra_zahtjeva'
      Visible = False
    end
  end
  object tUpisnikDetail: TTable
    Active = True
    DatabaseName = 'kulture'
    TableName = 'Upisnik_detail.DB'
    Left = 620
    Top = 63
  end
  object tDrzava: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'Sifra'
    TableName = 'Drzava'
    Left = 717
    Top = 288
    object AutoIncField4: TAutoIncField
      DisplayLabel = #352'ifra'
      DisplayWidth = 10
      FieldName = 'Sifra'
      ReadOnly = True
    end
    object StringField4: TStringField
      DisplayLabel = 'Naziv dr'#382'ave'
      DisplayWidth = 30
      FieldName = 'Naziv_Drzave'
      Size = 60
    end
  end
  object dsDrzava: TDataSource
    DataSet = tDrzava
    Left = 685
    Top = 288
  end
  object tDrzava2: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'Sifra'
    TableName = 'Drzava.DB'
    Left = 360
    Top = 416
    object tDrzava2Naziv_Drzave: TStringField
      DisplayLabel = 'Naziv dr'#382'ave'
      DisplayWidth = 40
      FieldName = 'Naziv_Drzave'
      Size = 40
    end
    object tDrzava2Sifra: TAutoIncField
      FieldName = 'Sifra'
      ReadOnly = True
      Visible = False
    end
  end
  object dsDrzava2: TDataSource
    DataSet = tDrzava2
    Left = 328
    Top = 416
  end
  object tDrzava3: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'Sifra'
    TableName = 'Drzava.DB'
    Left = 752
    Top = 64
    object StringField5: TStringField
      DisplayLabel = 'Naziv dr'#382'ave'
      DisplayWidth = 40
      FieldName = 'Naziv_Drzave'
      Size = 40
    end
    object AutoIncField2: TAutoIncField
      FieldName = 'Sifra'
      ReadOnly = True
      Visible = False
    end
  end
  object dsDrzava3: TDataSource
    DataSet = tDrzava3
    Left = 720
    Top = 64
  end
end
