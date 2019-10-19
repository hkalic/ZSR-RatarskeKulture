object FUpisnik: TFUpisnik
  Left = 241
  Top = 181
  Width = 855
  Height = 667
  Caption = 'Upisnik'
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
    Width = 847
    Height = 640
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabIndex = 1
    TabOrder = 0
    TabStop = False
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Upisnik ...'
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      object dxDBGrid1: TdxDBGrid
        Left = 0
        Top = 26
        Width = 839
        Height = 583
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'Sifra_upisnika'
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
        TabOrder = 0
        OnDblClick = dxDBGrid1DblClick
        OnKeyDown = dxDBGrid1KeyDown
        BandFont.Charset = EASTEUROPE_CHARSET
        BandFont.Color = clBlack
        BandFont.Height = -13
        BandFont.Name = 'Arial'
        BandFont.Style = []
        DataSource = dsQmaster
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
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Datum_prijavljivanja'
        end
        object dxDBGrid1Ime_sorte: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Ime_sorte'
        end
        object dxDBGrid1Ime_partnera: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Ime_partnera'
        end
        object dxDBGrid1Vrsta_hrv: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Vrsta_hrv'
        end
        object dxDBGrid1Sifra_zahtjeva: TdxDBGridMaskColumn
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Sifra_zahtjeva'
        end
        object dxDBGrid1Oznaka_sorte: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Oznaka_sorte'
        end
      end
      object ToolBar1: TToolBar
        Left = 0
        Top = 0
        Width = 839
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
        TabOrder = 1
        object wwDBNavigator2: TwwDBNavigator
          Left = 0
          Top = 2
          Width = 300
          Height = 22
          AutosizeStyle = asSizeNavButtons
          DataSource = dsQmaster
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
          object wwNavButton21: TwwNavButton
            Left = 0
            Top = 0
            Width = 100
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
          object wwNavButton22: TwwNavButton
            Left = 100
            Top = 0
            Width = 100
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
          object wwNavButton23: TwwNavButton
            Left = 200
            Top = 0
            Width = 100
            Height = 22
            Hint = 'Obnovi podatke'
            ImageIndex = 0
            NumGlyphs = 2
            ShowText = True
            Spacing = 4
            Transparent = False
            Caption = 'Obnovi podatke'
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 2
            Style = nbsCustom
          end
        end
        object Button1: TButton
          Left = 300
          Top = 2
          Width = 141
          Height = 22
          Caption = 'Izdaj ispravu OP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu6
          TabOrder = 1
          OnClick = Button1Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'zahtjeva za stjecanje OP'
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
        Width = 839
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
          object wwNavButton5: TwwNavButton
            Left = 0
            Top = 0
            Width = 73
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
            Index = 0
            Style = nbsEdit
          end
          object wwNavButton6: TwwNavButton
            Left = 73
            Top = 0
            Width = 72
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
            Index = 1
            Style = nbsCustom
            Visible = False
          end
          object wwNavButton7: TwwNavButton
            Left = 145
            Top = 0
            Width = 72
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
            Index = 2
            Style = nbsPost
          end
          object wwNavButton8: TwwNavButton
            Left = 217
            Top = 0
            Width = 72
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
            Index = 3
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
          DataSource = dsQmaster
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alRight
          TabOrder = 1
        end
        object Print: TToolButton
          Tag = 1
          Left = 465
          Top = 2
          AutoSize = True
          Caption = 'Printanje'
          DropdownMenu = PopupMenu1
          ImageIndex = 7
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 28
        Width = 839
        Height = 581
        Align = alClient
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object wwDBEdit25: TwwDBEdit
          Left = 184
          Top = 16
          Width = 49
          Height = 22
          TabStop = False
          BorderStyle = bsNone
          DataField = 'Upisni_broj'
          DataSource = dsZPravo
          Enabled = False
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
          Left = 88
          Top = 16
          Width = 81
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
          Text = 'Upisni broj:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object dxEdit84: TdxEdit
          Left = 87
          Top = 120
          Width = 122
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
          Text = 'Predaja zahtjeva:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBDateTimePicker23: TwwDBDateTimePicker
          Left = 208
          Top = 120
          Width = 121
          Height = 19
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          ButtonStyle = cbsEllipsis
          DataField = 'Predaja_zahtjeva'
          DataSource = ds
          Date = 38614
          Epoch = 1950
          Frame.Enabled = True
          Time = 0.165277777778101
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = True
          TabOrder = 2
          OnKeyDown = dtKlik
        end
        object wwDBEdit32: TwwDBEdit
          Left = 168
          Top = 16
          Width = 17
          Height = 22
          BorderStyle = bsNone
          DataField = 'Sifra_dok'
          DataSource = dsZPravo
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 17
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit86: TdxEdit
          Left = 32
          Top = 232
          Width = 89
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
          TabOrder = 18
          Text = 'Podnositelj:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object dxEdit87: TdxEdit
          Left = 16
          Top = 256
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
          TabOrder = 19
          Text = 'Oplemenjiva'#269':'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit1: TwwDBEdit
          Left = 120
          Top = 232
          Width = 321
          Height = 22
          BorderStyle = bsNone
          DataField = 'look_Podnositelj'
          DataSource = dsZPravo
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 7
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit2: TwwDBEdit
          Left = 120
          Top = 256
          Width = 321
          Height = 22
          BorderStyle = bsNone
          DataField = 'look_Oplemenjivac'
          DataSource = dsZPravo
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 8
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit1: TdxEdit
          Left = 24
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
          TabOrder = 20
          Text = 'Jedinstvena oznaka:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit3: TwwDBEdit
          Left = 168
          Top = 40
          Width = 273
          Height = 22
          BorderStyle = bsNone
          DataField = 'Jedinstvena_oznaka'
          DataSource = ds
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit2: TdxEdit
          Left = 15
          Top = 144
          Width = 194
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
          Text = 'Prijem popunjenog zahtjeva:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBDateTimePicker1: TwwDBDateTimePicker
          Left = 208
          Top = 144
          Width = 121
          Height = 19
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          ButtonStyle = cbsEllipsis
          DataField = 'Primljen_zahtjev'
          DataSource = ds
          Date = 38614
          Epoch = 1950
          Frame.Enabled = True
          Time = 0.465972222220444
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = True
          TabOrder = 3
          OnKeyDown = dtKlik
        end
        object dxEdit3: TdxEdit
          Left = 32
          Top = 168
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
          TabOrder = 22
          Text = 'Pravo prvenstva:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit4: TwwDBEdit
          Left = 144
          Top = 168
          Width = 297
          Height = 22
          BorderStyle = bsNone
          DataField = 'Koji_zahtjev'
          DataSource = dsZPravo
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
        object dxEdit4: TdxEdit
          Left = 48
          Top = 195
          Width = 161
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
          Text = 'Datum objave u glasilu:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBDateTimePicker2: TwwDBDateTimePicker
          Left = 208
          Top = 195
          Width = 97
          Height = 19
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          ButtonStyle = cbsEllipsis
          DataField = 'Datum_objave'
          DataSource = ds
          Date = 38694
          Epoch = 1950
          Frame.Enabled = True
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = True
          TabOrder = 5
          OnKeyDown = dtKlik
        end
        object dxEdit5: TdxEdit
          Left = 16
          Top = 280
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
          TabOrder = 24
          Text = 'Zastupnik:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit5: TwwDBEdit
          Left = 120
          Top = 280
          Width = 321
          Height = 22
          BorderStyle = bsNone
          DataField = 'Ime_zastupnika'
          DataSource = dsZPravo
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 9
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit6: TdxEdit
          Left = 56
          Top = 392
          Width = 289
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
          TabOrder = 25
          Text = 'Datum zaklju'#269'ka o obustavljanju postupka:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBDateTimePicker3: TwwDBDateTimePicker
          Left = 344
          Top = 392
          Width = 97
          Height = 22
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          ButtonStyle = cbsEllipsis
          DataField = 'Datum_zaklj_obust'
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
          TabOrder = 11
          OnKeyDown = dtKlik
        end
        object dxEdit7: TdxEdit
          Left = 56
          Top = 416
          Width = 289
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
          Text = 'Datum pravomo'#263'nog rje'#353'enja o za'#353'titi sorte:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBDateTimePicker4: TwwDBDateTimePicker
          Left = 344
          Top = 416
          Width = 97
          Height = 19
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          ButtonStyle = cbsEllipsis
          DataField = 'Datum_rje_zast'
          DataSource = ds
          Date = 38671
          Epoch = 1950
          Frame.Enabled = True
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = True
          TabOrder = 12
          OnKeyDown = dtKlik
        end
        object wwDBDateTimePicker5: TwwDBDateTimePicker
          Left = 344
          Top = 440
          Width = 97
          Height = 22
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          ButtonStyle = cbsEllipsis
          DataField = 'Datum_rje_odbi'
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
          TabOrder = 13
          OnKeyDown = dtKlik
        end
        object dxEdit8: TdxEdit
          Left = 8
          Top = 440
          Width = 337
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
          TabOrder = 27
          Text = 'Datum pravomo'#263'nog rje'#353'enja o odbijanju zahtjeva:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object dxEdit9: TdxEdit
          Left = 16
          Top = 480
          Width = 401
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
          TabOrder = 28
          Text = 'Naznaka o rje'#353'enjima suda u vezi prava na predaju zahtjeva:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit6: TwwDBEdit
          Left = 24
          Top = 504
          Width = 417
          Height = 22
          BorderStyle = bsNone
          DataField = 'Sud_predaja_zaht'
          DataSource = ds
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 14
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit10: TdxEdit
          Left = 16
          Top = 304
          Width = 313
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
          TabOrder = 29
          Text = 'Promjene podataka iz zahtjeva za za'#353'titu sorte:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object DBMemo1: TDBMemo
          Left = 24
          Top = 328
          Width = 417
          Height = 57
          DataField = 'Promjene_zahtjeva_ZS'
          DataSource = ds
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object wwDBEdit35: TwwDBEdit
          Left = 352
          Top = 195
          Width = 89
          Height = 22
          BorderStyle = bsNone
          DataField = 'Broj_objave'
          DataSource = ds
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
        object dxEdit42: TdxEdit
          Left = 312
          Top = 195
          Width = 41
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
          TabOrder = 30
          Text = 'Broj:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object dxEdit63: TdxEdit
          Left = 24
          Top = 64
          Width = 81
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 31
          Text = 'Naziv sorte:'
          Alignment = taRightJustify
          StyleController = dxEditStyleController1
          StoredValues = 1
        end
        object wwDBEdit53: TwwDBEdit
          Left = 104
          Top = 64
          Width = 337
          Height = 19
          BorderStyle = bsNone
          DataField = 'Ime_sorte'
          DataSource = dsQmaster
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          TabOrder = 32
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit64: TdxEdit
          Left = 24
          Top = 85
          Width = 81
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 33
          Text = 'Naziv vrste:'
          Alignment = taRightJustify
          StyleController = dxEditStyleController1
          StoredValues = 1
        end
        object wwDBEdit56: TwwDBEdit
          Left = 104
          Top = 85
          Width = 337
          Height = 19
          BorderStyle = bsNone
          DataField = 'Vrsta_hrv'
          DataSource = dsQmaster
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          TabOrder = 34
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit58: TwwDBEdit
          Left = 448
          Top = 234
          Width = 153
          Height = 19
          BorderStyle = bsNone
          DataField = 'look_PodnositeljAdresa'
          DataSource = dsZPravo
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          TabOrder = 35
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit59: TwwDBEdit
          Left = 608
          Top = 234
          Width = 153
          Height = 19
          BorderStyle = bsNone
          DataField = 'look_PodnosteljMjesto'
          DataSource = dsZPravo
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          TabOrder = 36
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit60: TwwDBEdit
          Left = 448
          Top = 258
          Width = 153
          Height = 19
          BorderStyle = bsNone
          DataField = 'look_Oplemenjivac'
          DataSource = dsZPravo
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          TabOrder = 37
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit61: TwwDBEdit
          Left = 608
          Top = 258
          Width = 153
          Height = 19
          BorderStyle = bsNone
          DataField = 'look_PodnosteljMjesto'
          DataSource = dsZPravo
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          TabOrder = 38
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit62: TwwDBEdit
          Left = 448
          Top = 282
          Width = 153
          Height = 19
          BorderStyle = bsNone
          DataField = 'Adresa_zastupnika'
          DataSource = dsZPravo
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          TabOrder = 39
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit63: TwwDBEdit
          Left = 608
          Top = 282
          Width = 153
          Height = 19
          BorderStyle = bsNone
          DataField = 'Mjesto_zastupnika'
          DataSource = dsZPravo
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          TabOrder = 40
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = '  OP'
      ImageIndex = 2
      object ToolBar3: TToolBar
        Left = 0
        Top = 0
        Width = 839
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
        object wwDBNavigator3: TwwDBNavigator
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
          object wwNavButton3: TwwNavButton
            Left = 0
            Top = 0
            Width = 73
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
            Index = 0
            Style = nbsEdit
          end
          object wwNavButton4: TwwNavButton
            Left = 73
            Top = 0
            Width = 72
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
            Index = 1
            Style = nbsCustom
          end
          object wwNavButton9: TwwNavButton
            Left = 145
            Top = 0
            Width = 72
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
            Index = 2
            Style = nbsPost
          end
          object wwNavButton10: TwwNavButton
            Left = 217
            Top = 0
            Width = 72
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
            Index = 3
            Style = nbsCancel
          end
        end
        object Splitter2: TSplitter
          Left = 289
          Top = 2
          Width = 16
          Height = 22
          Cursor = crHSplit
        end
        object DBNavigator2: TDBNavigator
          Left = 305
          Top = 2
          Width = 160
          Height = 22
          DataSource = dsQmaster
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alRight
          TabOrder = 1
        end
        object ToolButton1: TToolButton
          Tag = 2
          Left = 465
          Top = 2
          AutoSize = True
          Caption = 'Printanje'
          DropdownMenu = PopupMenu2
          ImageIndex = 7
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 28
        Width = 839
        Height = 581
        Align = alClient
        TabOrder = 1
        object dxEdit11: TdxEdit
          Left = 88
          Top = 16
          Width = 81
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
          Text = 'Upisni broj:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit7: TwwDBEdit
          Left = 184
          Top = 16
          Width = 49
          Height = 22
          TabStop = False
          BorderStyle = bsNone
          DataField = 'Upisni_broj'
          DataSource = dsZPravo
          Enabled = False
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
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit12: TdxEdit
          Left = 24
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
          TabOrder = 2
          Text = 'Jedinstvena oznaka:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit8: TwwDBEdit
          Left = 168
          Top = 40
          Width = 273
          Height = 22
          BorderStyle = bsNone
          DataField = 'Jedinstvena_oznaka'
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
          TabOrder = 3
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit9: TwwDBEdit
          Left = 168
          Top = 16
          Width = 17
          Height = 22
          BorderStyle = bsNone
          DataField = 'Sifra_dok'
          DataSource = dsZPravo
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
        object dxEdit13: TdxEdit
          Left = 16
          Top = 176
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
          TabOrder = 5
          Text = 'Oplemenjiva'#269':'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit10: TwwDBEdit
          Left = 120
          Top = 176
          Width = 321
          Height = 22
          BorderStyle = bsNone
          DataField = 'look_Oplemenjivac'
          DataSource = dsZPravo
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
        object dxEdit14: TdxEdit
          Left = 16
          Top = 200
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
          TabOrder = 7
          Text = 'Zastupnik:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit11: TwwDBEdit
          Left = 120
          Top = 200
          Width = 321
          Height = 22
          BorderStyle = bsNone
          DataField = 'Ime_zastupnika'
          DataSource = dsZPravo
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 8
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBLookupCombo10: TwwDBLookupCombo
          Left = 120
          Top = 120
          Width = 321
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
            'Mjesto'#9'25'#9'Mjesto'#9#9)
          DataField = 'look_NositeljOP'
          DataSource = ds
          LookupTable = tPartner3
          LookupField = 'Sifra_partnera'
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
        object dxEdit15: TdxEdit
          Left = 32
          Top = 120
          Width = 89
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
          TabOrder = 10
          Text = 'Nositelj OP:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object dxEdit16: TdxEdit
          Left = 16
          Top = 144
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
          TabOrder = 11
          Text = 'Adresa:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit12: TwwDBEdit
          Left = 120
          Top = 144
          Width = 193
          Height = 22
          BorderStyle = bsNone
          DataField = 'look_NositOPAdresa'
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
          TabOrder = 12
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit13: TwwDBEdit
          Left = 320
          Top = 144
          Width = 121
          Height = 22
          BorderStyle = bsNone
          DataField = 'look_NositOPMjesto'
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
          TabOrder = 13
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBLookupCombo1: TwwDBLookupCombo
          Left = 120
          Top = 232
          Width = 321
          Height = 22
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'look_ImePartnera'#9'30'#9'Ime partnera'#9'F'#9
            'look_AdresaPartnera'#9'20'#9'look_AdresaPartnera'#9'F'#9
            'look_MjestoPartnera'#9'20'#9'look_MjestoPartnera'#9'F'#9)
          DataField = 'look_ImeLicence'
          DataSource = ds
          LookupTable = tLicencije
          LookupField = 'Sifra_licencije'
          Options = [loColLines, loSearchOnBackspace]
          Frame.Enabled = True
          Frame.FocusStyle = efsFrameBump
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 14
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = False
          ShowMatchText = True
          OnKeyDown = DelLookup
        end
        object dxEdit17: TdxEdit
          Left = 0
          Top = 232
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
          TabOrder = 15
          Text = 'Nositelj licencije:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit14: TwwDBEdit
          Left = 240
          Top = 280
          Width = 105
          Height = 22
          BorderStyle = bsNone
          DataField = 'Broj_rje_SOP'
          DataSource = ds
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 16
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit18: TdxEdit
          Left = 72
          Top = 280
          Width = 169
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
          Text = 'Rje'#353'enje o ste'#269'enom OP:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBDateTimePicker6: TwwDBDateTimePicker
          Left = 352
          Top = 280
          Width = 89
          Height = 22
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          ButtonStyle = cbsEllipsis
          DataField = 'Datum_rje_SOP'
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
          TabOrder = 18
          OnKeyDown = dtKlik
        end
        object dxEdit19: TdxEdit
          Left = 72
          Top = 304
          Width = 169
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
          TabOrder = 19
          Text = 'Isprava o ste'#269'enom OP:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit15: TwwDBEdit
          Left = 240
          Top = 304
          Width = 105
          Height = 22
          BorderStyle = bsNone
          DataField = 'Broj_ispr_SOP'
          DataSource = ds
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 20
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBDateTimePicker7: TwwDBDateTimePicker
          Left = 352
          Top = 304
          Width = 89
          Height = 22
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          ButtonStyle = cbsEllipsis
          DataField = 'Datum_ispr_SOP'
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
          TabOrder = 21
          OnKeyDown = dtKlik
        end
        object dxEdit20: TdxEdit
          Left = 52
          Top = 328
          Width = 188
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
          Text = 'Objavljeno u glasilu zavoda:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit16: TwwDBEdit
          Left = 240
          Top = 328
          Width = 105
          Height = 22
          BorderStyle = bsNone
          DataField = 'Broj_objave'
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
          TabOrder = 23
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBDateTimePicker8: TwwDBDateTimePicker
          Left = 352
          Top = 328
          Width = 89
          Height = 22
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          ButtonStyle = cbsEllipsis
          DataField = 'Datum_objave'
          DataSource = ds
          Date = 38694
          Epoch = 1950
          Frame.Enabled = True
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = True
          TabOrder = 24
          OnKeyDown = dtKlik
        end
        object dxEdit21: TdxEdit
          Left = 240
          Top = 256
          Width = 105
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 25
          Text = 'Broj:                  '
          Alignment = taLeftJustify
          StoredValues = 1
        end
        object dxEdit22: TdxEdit
          Left = 352
          Top = 256
          Width = 89
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 26
          Text = 'Datum:         '
          Alignment = taLeftJustify
          StoredValues = 1
        end
        object dxEdit23: TdxEdit
          Left = 52
          Top = 360
          Width = 188
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
          TabOrder = 27
          Text = 'Prestanak za'#353'tite sorte:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBDateTimePicker9: TwwDBDateTimePicker
          Left = 352
          Top = 360
          Width = 89
          Height = 22
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          ButtonStyle = cbsEllipsis
          DataField = 'Datum_prest_zast'
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
          TabOrder = 28
          OnKeyDown = dtKlik
        end
        object dxEdit24: TdxEdit
          Left = 8
          Top = 384
          Width = 233
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
          TabOrder = 29
          Text = 'Ukidanje rje'#353'enja o stjecanju OP:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit17: TwwDBEdit
          Left = 240
          Top = 384
          Width = 105
          Height = 22
          BorderStyle = bsNone
          DataField = 'Broj_ukidanja_SOP'
          DataSource = ds
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 30
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBDateTimePicker10: TwwDBDateTimePicker
          Left = 352
          Top = 384
          Width = 89
          Height = 22
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          ButtonStyle = cbsEllipsis
          DataField = 'Datum_ukidanja_SOP'
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
          TabOrder = 31
          OnKeyDown = dtKlik
        end
        object dxEdit25: TdxEdit
          Left = 32
          Top = 416
          Width = 401
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
          TabOrder = 32
          Text = 'Napomene o promjeni podataka, upisanih u Upisnik OP-a:'
          Alignment = taCenter
          StoredValues = 1
        end
        object wwDBEdit18: TwwDBEdit
          Left = 24
          Top = 440
          Width = 417
          Height = 22
          BorderStyle = bsNone
          DataField = 'Sud_OP'
          DataSource = ds
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 33
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit69: TdxEdit
          Left = 16
          Top = 480
          Width = 401
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
          TabOrder = 34
          Text = 'Naznaka o rje'#353'enjima suda u vezi prava na predaju zahtjeva:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit57: TwwDBEdit
          Left = 24
          Top = 504
          Width = 417
          Height = 22
          BorderStyle = bsNone
          DataField = 'Sud_predaja_zaht'
          DataSource = ds
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 35
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit64: TwwDBEdit
          Left = 448
          Top = 178
          Width = 153
          Height = 20
          BorderStyle = bsNone
          DataField = 'look_Oplemenjivac'
          DataSource = dsZPravo
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 36
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit65: TwwDBEdit
          Left = 608
          Top = 178
          Width = 153
          Height = 20
          BorderStyle = bsNone
          DataField = 'look_PodnosteljMjesto'
          DataSource = dsZPravo
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 37
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit66: TwwDBEdit
          Left = 608
          Top = 202
          Width = 153
          Height = 20
          BorderStyle = bsNone
          DataField = 'Mjesto_zastupnika'
          DataSource = dsZPravo
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 38
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit67: TwwDBEdit
          Left = 448
          Top = 202
          Width = 153
          Height = 20
          BorderStyle = bsNone
          DataField = 'Adresa_zastupnika'
          DataSource = dsZPravo
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 39
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit68: TwwDBEdit
          Left = 448
          Top = 234
          Width = 153
          Height = 20
          BorderStyle = bsNone
          DataField = 'look_AdresaPartnera'
          DataSource = dsLicencija
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 40
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit69: TwwDBEdit
          Left = 608
          Top = 234
          Width = 153
          Height = 20
          BorderStyle = bsNone
          DataField = 'look_MjestoPartnera'
          DataSource = dsLicencija
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 41
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit70: TdxEdit
          Left = 24
          Top = 64
          Width = 81
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 42
          Text = 'Naziv sorte:'
          Alignment = taRightJustify
          StyleController = dxEditStyleController1
          StoredValues = 1
        end
        object dxEdit71: TdxEdit
          Left = 24
          Top = 85
          Width = 81
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 43
          Text = 'Naziv vrste:'
          Alignment = taRightJustify
          StyleController = dxEditStyleController1
          StoredValues = 1
        end
        object wwDBEdit70: TwwDBEdit
          Left = 104
          Top = 85
          Width = 337
          Height = 20
          BorderStyle = bsNone
          DataField = 'Vrsta_hrv'
          DataSource = dsQmaster
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 44
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit71: TwwDBEdit
          Left = 104
          Top = 64
          Width = 337
          Height = 20
          BorderStyle = bsNone
          DataField = 'Ime_sorte'
          DataSource = dsQmaster
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 45
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit79: TdxEdit
          Left = 448
          Top = 280
          Width = 153
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
          TabOrder = 46
          Text = 'Podaci o drugoj osobi:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit85: TwwDBEdit
          Left = 448
          Top = 328
          Width = 185
          Height = 20
          BorderStyle = bsNone
          DataField = 'look_2OsobaAdresa'
          DataSource = ds
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 47
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit86: TwwDBEdit
          Left = 640
          Top = 328
          Width = 121
          Height = 20
          BorderStyle = bsNone
          DataField = 'look_2OsobaMjesto'
          DataSource = ds
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 48
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit101: TwwDBEdit
          Left = 448
          Top = 304
          Width = 313
          Height = 22
          BorderStyle = bsNone
          DataField = 'look_2Osoba'
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
          TabOrder = 49
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'prenesenog OP'
      ImageIndex = 3
      object ToolBar4: TToolBar
        Left = 0
        Top = 0
        Width = 839
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
        object wwDBNavigator4: TwwDBNavigator
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
          object wwNavButton1: TwwNavButton
            Left = 0
            Top = 0
            Width = 73
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
            Index = 0
            Style = nbsEdit
          end
          object wwNavButton2: TwwNavButton
            Left = 73
            Top = 0
            Width = 72
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
            Index = 1
            Style = nbsCustom
          end
          object wwNavButton11: TwwNavButton
            Left = 145
            Top = 0
            Width = 72
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
            Index = 2
            Style = nbsPost
          end
          object wwNavButton12: TwwNavButton
            Left = 217
            Top = 0
            Width = 72
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
            Index = 3
            Style = nbsCancel
          end
        end
        object Splitter3: TSplitter
          Left = 289
          Top = 2
          Width = 16
          Height = 22
          Cursor = crHSplit
        end
        object DBNavigator3: TDBNavigator
          Left = 305
          Top = 2
          Width = 160
          Height = 22
          DataSource = dsQmaster
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alRight
          TabOrder = 1
        end
        object ToolButton2: TToolButton
          Tag = 3
          Left = 465
          Top = 2
          AutoSize = True
          Caption = 'Printanje'
          DropdownMenu = PopupMenu3
          ImageIndex = 7
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 28
        Width = 839
        Height = 581
        Align = alClient
        TabOrder = 1
        object dxEdit26: TdxEdit
          Left = 88
          Top = 16
          Width = 81
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 0
          Text = 'Upisni broj:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit19: TwwDBEdit
          Left = 184
          Top = 16
          Width = 49
          Height = 22
          TabStop = False
          BorderStyle = bsNone
          DataField = 'Upisni_broj'
          DataSource = dsZPravo
          Enabled = False
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
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit27: TdxEdit
          Left = 24
          Top = 40
          Width = 145
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 2
          Text = 'Jedinstvena oznaka:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit20: TwwDBEdit
          Left = 168
          Top = 40
          Width = 273
          Height = 22
          BorderStyle = bsNone
          DataField = 'Jedinstvena_oznaka'
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
          TabOrder = 3
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit21: TwwDBEdit
          Left = 168
          Top = 16
          Width = 17
          Height = 22
          BorderStyle = bsNone
          DataField = 'Sifra_dok'
          DataSource = dsZPravo
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
        object dxEdit28: TdxEdit
          Left = 0
          Top = 192
          Width = 105
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 5
          Text = 'Oplemenjiva'#269':'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit22: TwwDBEdit
          Left = 104
          Top = 192
          Width = 321
          Height = 22
          BorderStyle = bsNone
          DataField = 'look_Oplemenjivac'
          DataSource = dsZPravo
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
        object dxEdit30: TdxEdit
          Left = 16
          Top = 120
          Width = 377
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 14
          Text = 
            'Nositelj oplemenjiva'#269'kog prava koji prenosi oplemenjiva'#269'ko pravo' +
            ':'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object dxEdit31: TdxEdit
          Left = 0
          Top = 168
          Width = 105
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 15
          Text = 'Adresa:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit24: TwwDBEdit
          Left = 104
          Top = 168
          Width = 193
          Height = 22
          BorderStyle = bsNone
          DataField = 'look_NositOPAdresa'
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
          TabOrder = 16
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit26: TwwDBEdit
          Left = 304
          Top = 168
          Width = 121
          Height = 22
          BorderStyle = bsNone
          DataField = 'look_NositOPMjesto'
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
          TabOrder = 17
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit27: TwwDBEdit
          Left = 624
          Top = 40
          Width = 105
          Height = 22
          BorderStyle = bsNone
          DataField = 'Broj_rje_SOP'
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
          TabOrder = 18
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit33: TdxEdit
          Left = 456
          Top = 40
          Width = 169
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 19
          Text = 'Rje'#353'enje o ste'#269'enom OP:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBDateTimePicker11: TwwDBDateTimePicker
          Left = 736
          Top = 40
          Width = 89
          Height = 22
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          ButtonStyle = cbsCustom
          DataField = 'Datum_rje_SOP'
          DataSource = ds
          Date = 38614
          Epoch = 1950
          Frame.Enabled = True
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = True
          TabOrder = 20
          OnKeyDown = dtKlik
        end
        object dxEdit34: TdxEdit
          Left = 456
          Top = 64
          Width = 169
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 21
          Text = 'Isprava o ste'#269'enom OP:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit28: TwwDBEdit
          Left = 624
          Top = 64
          Width = 105
          Height = 22
          BorderStyle = bsNone
          DataField = 'Broj_ispr_SOP'
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
          TabOrder = 22
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBDateTimePicker12: TwwDBDateTimePicker
          Left = 736
          Top = 64
          Width = 89
          Height = 22
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          ButtonStyle = cbsCustom
          DataField = 'Datum_ispr_SOP'
          DataSource = ds
          Epoch = 1950
          Frame.Enabled = True
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = True
          TabOrder = 23
          OnKeyDown = dtKlik
        end
        object dxEdit35: TdxEdit
          Left = 448
          Top = 88
          Width = 176
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 24
          Text = 'Objavljeno u glasilu zavoda:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit29: TwwDBEdit
          Left = 624
          Top = 88
          Width = 105
          Height = 22
          BorderStyle = bsNone
          DataField = 'Broj_objave'
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
          TabOrder = 25
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBDateTimePicker13: TwwDBDateTimePicker
          Left = 736
          Top = 88
          Width = 89
          Height = 22
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          ButtonStyle = cbsCustom
          DataField = 'Datum_objave'
          DataSource = ds
          Date = 38694
          Epoch = 1950
          Frame.Enabled = True
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = True
          TabOrder = 26
          OnKeyDown = dtKlik
        end
        object dxEdit36: TdxEdit
          Left = 624
          Top = 16
          Width = 105
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 27
          Text = 'Broj:                  '
          Alignment = taLeftJustify
          StoredValues = 1
        end
        object dxEdit37: TdxEdit
          Left = 736
          Top = 16
          Width = 89
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 29
          Text = 'Datum:         '
          Alignment = taLeftJustify
          StoredValues = 1
        end
        object dxEdit38: TdxEdit
          Left = 472
          Top = 136
          Width = 152
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 31
          Text = 'Prestanak za'#353'tite sorte:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBDateTimePicker14: TwwDBDateTimePicker
          Left = 736
          Top = 136
          Width = 89
          Height = 22
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          ButtonStyle = cbsCustom
          DataField = 'Datum_prest_zast'
          DataSource = ds
          Epoch = 1950
          Frame.Enabled = True
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = True
          TabOrder = 32
          OnKeyDown = dtKlik
        end
        object wwDBEdit30: TwwDBEdit
          Left = 624
          Top = 160
          Width = 105
          Height = 22
          BorderStyle = bsNone
          DataField = 'Broj_ukidanja_SOP'
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
          TabOrder = 34
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBDateTimePicker15: TwwDBDateTimePicker
          Left = 736
          Top = 160
          Width = 89
          Height = 22
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          ButtonStyle = cbsCustom
          DataField = 'Datum_ukidanja_SOP'
          DataSource = ds
          Epoch = 1950
          Frame.Enabled = True
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = True
          TabOrder = 35
          OnKeyDown = dtKlik
        end
        object wwDBEdit23: TwwDBEdit
          Left = 104
          Top = 144
          Width = 321
          Height = 22
          BorderStyle = bsNone
          DataField = 'look_NositeljOP'
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
          TabOrder = 36
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit29: TdxEdit
          Left = 432
          Top = 112
          Width = 192
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 37
          Text = 'Ugovor o prenosu OP na 3. osobu:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit31: TwwDBEdit
          Left = 624
          Top = 112
          Width = 105
          Height = 22
          BorderStyle = bsNone
          DataField = 'Broj_ugovora_POP3'
          DataSource = ds
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 28
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBDateTimePicker16: TwwDBDateTimePicker
          Left = 736
          Top = 112
          Width = 89
          Height = 22
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          ButtonStyle = cbsEllipsis
          DataField = 'Datum_ugovora_POP3'
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
          TabOrder = 30
          OnKeyDown = dtKlik
        end
        object dxEdit32: TdxEdit
          Left = 8
          Top = 261
          Width = 177
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 38
          Text = 'OP je na 2. osobu preneseno:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit33: TwwDBEdit
          Left = 184
          Top = 285
          Width = 113
          Height = 22
          BorderStyle = bsNone
          DataField = 'Djelomicno_OP'
          DataSource = ds
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 7
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit34: TwwDBEdit
          Left = 312
          Top = 285
          Width = 113
          Height = 22
          BorderStyle = bsNone
          DataField = 'Upotpunosti_OP'
          DataSource = ds
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 8
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit40: TdxEdit
          Left = 184
          Top = 261
          Width = 113
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 39
          Text = 'Djelomi'#269'no:        '
          Alignment = taLeftJustify
          StoredValues = 1
        end
        object dxEdit41: TdxEdit
          Left = 312
          Top = 261
          Width = 113
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 40
          Text = 'U potpunosti:      '
          Alignment = taLeftJustify
          StoredValues = 1
        end
        object wwDBLookupCombo2: TwwDBLookupCombo
          Left = 104
          Top = 344
          Width = 321
          Height = 22
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          BorderStyle = bsNone
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'Ime_partnera'#9'60'#9'Ime partnera'#9'F'
            'Adresa'#9'60'#9'Adresa'#9#9
            'Mjesto'#9'25'#9'Mjesto'#9#9)
          DataField = 'look_2Osoba'
          DataSource = ds
          LookupTable = tPartner5
          LookupField = 'Sifra_partnera'
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
        object dxEdit43: TdxEdit
          Left = 48
          Top = 320
          Width = 281
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 41
          Text = 'Podaci o pravnom subjektu na koji se prenosi OP:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object dxEdit44: TdxEdit
          Left = 0
          Top = 144
          Width = 105
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 42
          Text = 'Naziv:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object dxEdit45: TdxEdit
          Left = 40
          Top = 344
          Width = 65
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 43
          Text = 'Naziv:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object dxEdit46: TdxEdit
          Left = 16
          Top = 368
          Width = 89
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 44
          Text = 'Adresa:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit36: TwwDBEdit
          Left = 104
          Top = 368
          Width = 193
          Height = 22
          BorderStyle = bsNone
          DataField = 'look_2OsobaAdresa'
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
          TabOrder = 10
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit37: TwwDBEdit
          Left = 304
          Top = 368
          Width = 121
          Height = 22
          BorderStyle = bsNone
          DataField = 'look_2OsobaMjesto'
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
          TabOrder = 11
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit47: TdxEdit
          Left = 16
          Top = 392
          Width = 89
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 45
          Text = 'Sadr'#382'aj prava:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit38: TwwDBEdit
          Left = 104
          Top = 392
          Width = 321
          Height = 22
          BorderStyle = bsNone
          DataField = 'Sadrzaj_POP'
          DataSource = ds
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 12
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit48: TdxEdit
          Left = 8
          Top = 416
          Width = 114
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 46
          Text = 'Vrsta ugovora o PP:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit39: TwwDBEdit
          Left = 120
          Top = 416
          Width = 305
          Height = 22
          BorderStyle = bsNone
          DataField = 'Broj_ugovora_POP'
          DataSource = ds
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 13
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit72: TdxEdit
          Left = 24
          Top = 64
          Width = 81
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 47
          Text = 'Naziv sorte:'
          Alignment = taRightJustify
          StyleController = dxEditStyleController1
          StoredValues = 1
        end
        object wwDBEdit72: TwwDBEdit
          Left = 104
          Top = 64
          Width = 337
          Height = 20
          BorderStyle = bsNone
          DataField = 'Ime_sorte'
          DataSource = dsQmaster
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 48
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit73: TdxEdit
          Left = 24
          Top = 85
          Width = 81
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 49
          Text = 'Naziv vrste:'
          Alignment = taRightJustify
          StyleController = dxEditStyleController1
          StoredValues = 1
        end
        object wwDBEdit73: TwwDBEdit
          Left = 104
          Top = 85
          Width = 337
          Height = 20
          BorderStyle = bsNone
          DataField = 'Vrsta_hrv'
          DataSource = dsQmaster
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 50
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit74: TwwDBEdit
          Left = 104
          Top = 218
          Width = 169
          Height = 20
          BorderStyle = bsNone
          DataField = 'look_Oplemenjivac'
          DataSource = dsZPravo
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 51
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit75: TwwDBEdit
          Left = 280
          Top = 218
          Width = 145
          Height = 20
          BorderStyle = bsNone
          DataField = 'look_PodnosteljMjesto'
          DataSource = dsZPravo
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 52
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit39: TdxEdit
          Left = 432
          Top = 160
          Width = 193
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 33
          Text = 'Ukidanje rje'#353'enja o stjecanju OP:'
          Alignment = taRightJustify
          StoredValues = 1
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'ustupljenog OP'
      ImageIndex = 4
      object ToolBar5: TToolBar
        Left = 0
        Top = 0
        Width = 839
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
        object wwDBNavigator5: TwwDBNavigator
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
          object wwNavButton13: TwwNavButton
            Left = 0
            Top = 0
            Width = 73
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
            Index = 0
            Style = nbsEdit
          end
          object wwNavButton14: TwwNavButton
            Left = 73
            Top = 0
            Width = 72
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
            Index = 1
            Style = nbsCustom
          end
          object wwNavButton15: TwwNavButton
            Left = 145
            Top = 0
            Width = 72
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
            Index = 2
            Style = nbsPost
          end
          object wwNavButton16: TwwNavButton
            Left = 217
            Top = 0
            Width = 72
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
            Index = 3
            Style = nbsCancel
          end
        end
        object Splitter4: TSplitter
          Left = 289
          Top = 2
          Width = 16
          Height = 22
          Cursor = crHSplit
        end
        object DBNavigator4: TDBNavigator
          Left = 305
          Top = 2
          Width = 160
          Height = 22
          DataSource = dsQmaster
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alRight
          TabOrder = 1
        end
        object ToolButton3: TToolButton
          Tag = 4
          Left = 465
          Top = 2
          AutoSize = True
          Caption = 'Printanje'
          DropdownMenu = PopupMenu4
          ImageIndex = 7
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 28
        Width = 839
        Height = 581
        Align = alClient
        TabOrder = 1
        object dxEdit49: TdxEdit
          Left = 72
          Top = 16
          Width = 81
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 0
          Text = 'Upisni broj:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit40: TwwDBEdit
          Left = 168
          Top = 16
          Width = 49
          Height = 22
          TabStop = False
          BorderStyle = bsNone
          DataField = 'Upisni_broj'
          DataSource = dsZPravo
          Enabled = False
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
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit50: TdxEdit
          Left = 32
          Top = 40
          Width = 121
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 2
          Text = 'Jedinstvena oznaka:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit41: TwwDBEdit
          Left = 152
          Top = 40
          Width = 273
          Height = 22
          BorderStyle = bsNone
          DataField = 'Jedinstvena_oznaka'
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
          TabOrder = 3
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit42: TwwDBEdit
          Left = 152
          Top = 16
          Width = 17
          Height = 22
          BorderStyle = bsNone
          DataField = 'Sifra_dok'
          DataSource = dsZPravo
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
        object dxEdit51: TdxEdit
          Left = 16
          Top = 200
          Width = 89
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 5
          Text = 'Oplemenjiva'#269':'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit43: TwwDBEdit
          Left = 104
          Top = 200
          Width = 321
          Height = 22
          BorderStyle = bsNone
          DataField = 'look_Oplemenjivac'
          DataSource = dsZPravo
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
        object dxEdit52: TdxEdit
          Left = 48
          Top = 120
          Width = 377
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 8
          Text = 'Nositelj oplemenjiva'#269'kog prava koji ustupa oplemenjiva'#269'ko pravo:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object dxEdit53: TdxEdit
          Left = 32
          Top = 168
          Width = 73
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 9
          Text = 'Adresa:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit44: TwwDBEdit
          Left = 104
          Top = 168
          Width = 193
          Height = 22
          BorderStyle = bsNone
          DataField = 'look_NositOPAdresa'
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
          TabOrder = 10
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit45: TwwDBEdit
          Left = 304
          Top = 168
          Width = 121
          Height = 22
          BorderStyle = bsNone
          DataField = 'look_NositOPMjesto'
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
          TabOrder = 11
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit46: TwwDBEdit
          Left = 616
          Top = 40
          Width = 105
          Height = 22
          BorderStyle = bsNone
          DataField = 'Broj_rje_SOP'
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
          TabOrder = 12
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit54: TdxEdit
          Left = 464
          Top = 40
          Width = 153
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 13
          Text = 'Rje'#353'enje o ste'#269'enom OP:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBDateTimePicker17: TwwDBDateTimePicker
          Left = 728
          Top = 40
          Width = 89
          Height = 22
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          ButtonStyle = cbsCustom
          DataField = 'Datum_rje_SOP'
          DataSource = ds
          Date = 38614
          Epoch = 1950
          Frame.Enabled = True
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = True
          TabOrder = 14
          OnKeyDown = dtKlik
        end
        object dxEdit55: TdxEdit
          Left = 472
          Top = 64
          Width = 145
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 15
          Text = 'Isprava o ste'#269'enom OP:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit47: TwwDBEdit
          Left = 616
          Top = 64
          Width = 105
          Height = 22
          BorderStyle = bsNone
          DataField = 'Broj_ispr_SOP'
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
          TabOrder = 16
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBDateTimePicker18: TwwDBDateTimePicker
          Left = 728
          Top = 64
          Width = 89
          Height = 22
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          ButtonStyle = cbsCustom
          DataField = 'Datum_ispr_SOP'
          DataSource = ds
          Epoch = 1950
          Frame.Enabled = True
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = True
          TabOrder = 17
          OnKeyDown = dtKlik
        end
        object dxEdit56: TdxEdit
          Left = 448
          Top = 88
          Width = 168
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 18
          Text = 'Objavljeno u glasilu zavoda:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit48: TwwDBEdit
          Left = 616
          Top = 88
          Width = 105
          Height = 22
          BorderStyle = bsNone
          DataField = 'Broj_objave'
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
        object wwDBDateTimePicker19: TwwDBDateTimePicker
          Left = 728
          Top = 88
          Width = 89
          Height = 22
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          ButtonStyle = cbsCustom
          DataField = 'Datum_objave'
          DataSource = ds
          Date = 38694
          Epoch = 1950
          Frame.Enabled = True
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = True
          TabOrder = 20
          OnKeyDown = dtKlik
        end
        object dxEdit57: TdxEdit
          Left = 616
          Top = 16
          Width = 105
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 21
          Text = 'Broj:                  '
          Alignment = taLeftJustify
          StoredValues = 1
        end
        object dxEdit58: TdxEdit
          Left = 728
          Top = 16
          Width = 89
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 22
          Text = 'Datum:         '
          Alignment = taLeftJustify
          StoredValues = 1
        end
        object dxEdit59: TdxEdit
          Left = 464
          Top = 144
          Width = 152
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 23
          Text = 'Prestanak za'#353'tite sorte:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBDateTimePicker20: TwwDBDateTimePicker
          Left = 728
          Top = 144
          Width = 89
          Height = 22
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          ButtonStyle = cbsCustom
          DataField = 'Datum_prest_zast'
          DataSource = ds
          Epoch = 1950
          Frame.Enabled = True
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = True
          TabOrder = 24
          OnKeyDown = dtKlik
        end
        object dxEdit60: TdxEdit
          Left = 432
          Top = 168
          Width = 185
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 25
          Text = 'Ukidanje rje'#353'enja o stjecanju OP:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit49: TwwDBEdit
          Left = 616
          Top = 168
          Width = 105
          Height = 22
          BorderStyle = bsNone
          DataField = 'Broj_ukidanja_SOP'
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
          TabOrder = 26
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBDateTimePicker21: TwwDBDateTimePicker
          Left = 728
          Top = 168
          Width = 89
          Height = 22
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          ButtonStyle = cbsCustom
          DataField = 'Datum_ukidanja_SOP'
          DataSource = ds
          Epoch = 1950
          Frame.Enabled = True
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = True
          TabOrder = 27
          OnKeyDown = dtKlik
        end
        object wwDBEdit50: TwwDBEdit
          Left = 104
          Top = 144
          Width = 321
          Height = 22
          BorderStyle = bsNone
          DataField = 'look_NositeljOP'
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
          TabOrder = 28
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBLookupCombo3: TwwDBLookupCombo
          Left = 104
          Top = 288
          Width = 321
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
            'Adresa'#9'60'#9'Adresa'#9#9)
          DataField = 'look_2osobaUstup'
          DataSource = ds
          LookupTable = tPartner6
          LookupField = 'Sifra_partnera'
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
        object dxEdit65: TdxEdit
          Left = 40
          Top = 266
          Width = 305
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 29
          Text = 'Podaci o pravnom subjektu na koji je ustupljeno OP:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object dxEdit66: TdxEdit
          Left = 40
          Top = 144
          Width = 65
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 30
          Text = 'Naziv:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object dxEdit67: TdxEdit
          Left = 40
          Top = 288
          Width = 65
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 31
          Text = 'Naziv:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object dxEdit68: TdxEdit
          Left = 32
          Top = 312
          Width = 73
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 32
          Text = 'Adresa:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit54: TwwDBEdit
          Left = 104
          Top = 312
          Width = 193
          Height = 22
          BorderStyle = bsNone
          DataField = 'look_2oUstupAdresa'
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
          TabOrder = 33
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit55: TwwDBEdit
          Left = 304
          Top = 312
          Width = 121
          Height = 22
          BorderStyle = bsNone
          DataField = 'look_2oUstupMjesto'
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
          TabOrder = 34
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit61: TdxEdit
          Left = 24
          Top = 352
          Width = 81
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 35
          Text = 'Licencija:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit51: TwwDBEdit
          Left = 104
          Top = 352
          Width = 321
          Height = 22
          BorderStyle = bsNone
          DataField = 'look_ImeLicence'
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
          TabOrder = 36
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit62: TdxEdit
          Left = 504
          Top = 114
          Width = 209
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 37
          Text = 'Visina naknade za ustupljeno OP:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit52: TwwDBEdit
          Left = 712
          Top = 114
          Width = 105
          Height = 22
          BorderStyle = bsNone
          DataField = 'Naknada_ustup_OP'
          DataSource = ds
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 38
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit76: TwwDBEdit
          Left = 104
          Top = 226
          Width = 169
          Height = 20
          BorderStyle = bsNone
          DataField = 'look_Oplemenjivac'
          DataSource = dsZPravo
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 39
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit77: TwwDBEdit
          Left = 280
          Top = 226
          Width = 145
          Height = 20
          BorderStyle = bsNone
          DataField = 'look_PodnosteljMjesto'
          DataSource = dsZPravo
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 40
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit78: TwwDBEdit
          Left = 104
          Top = 378
          Width = 153
          Height = 20
          BorderStyle = bsNone
          DataField = 'look_AdresaPartnera'
          DataSource = dsLicencija
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 41
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit79: TwwDBEdit
          Left = 272
          Top = 378
          Width = 153
          Height = 20
          BorderStyle = bsNone
          DataField = 'look_MjestoPartnera'
          DataSource = dsLicencija
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 42
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit74: TdxEdit
          Left = 40
          Top = 424
          Width = 65
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 43
          Text = 'Ugovor:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit80: TwwDBEdit
          Left = 104
          Top = 424
          Width = 97
          Height = 20
          BorderStyle = bsNone
          DataField = 'Broj_ugovora'
          DataSource = dsLicencija
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 44
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit81: TwwDBEdit
          Left = 320
          Top = 400
          Width = 105
          Height = 20
          BorderStyle = bsNone
          DataField = 'Trajanje_licencije'
          DataSource = dsLicencija
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 45
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit75: TdxEdit
          Left = 216
          Top = 400
          Width = 105
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 46
          Text = 'Trajanje licencije:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object dxEdit76: TdxEdit
          Left = 8
          Top = 445
          Width = 97
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 47
          Text = 'Opseg licencije:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit82: TwwDBEdit
          Left = 104
          Top = 445
          Width = 321
          Height = 20
          BorderStyle = bsNone
          DataField = 'Opseg_licencije'
          DataSource = dsLicencija
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 48
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit77: TdxEdit
          Left = 8
          Top = 64
          Width = 81
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 49
          Text = 'Naziv sorte:'
          Alignment = taRightJustify
          StyleController = dxEditStyleController1
          StoredValues = 1
        end
        object dxEdit78: TdxEdit
          Left = 8
          Top = 85
          Width = 81
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 50
          Text = 'Naziv vrste:'
          Alignment = taRightJustify
          StyleController = dxEditStyleController1
          StoredValues = 1
        end
        object wwDBEdit83: TwwDBEdit
          Left = 88
          Top = 85
          Width = 337
          Height = 20
          BorderStyle = bsNone
          DataField = 'Vrsta_hrv'
          DataSource = dsQmaster
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 51
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit84: TwwDBEdit
          Left = 88
          Top = 64
          Width = 337
          Height = 20
          BorderStyle = bsNone
          DataField = 'Ime_sorte'
          DataSource = dsQmaster
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 52
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit100: TdxEdit
          Left = 8
          Top = 467
          Width = 97
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 53
          Text = 'Uvjeti dodjele:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit102: TwwDBEdit
          Left = 104
          Top = 467
          Width = 321
          Height = 20
          BorderStyle = bsNone
          DataField = 'Uvjeti_dodjele'
          DataSource = dsLicencija
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 54
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit101: TdxEdit
          Left = 8
          Top = 400
          Width = 97
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 55
          Text = 'Datum licencije:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit103: TwwDBEdit
          Left = 104
          Top = 400
          Width = 105
          Height = 20
          BorderStyle = bsNone
          DataField = 'Datum_ugovora'
          DataSource = dsLicencija
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 56
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = ' zastupnika '
      ImageIndex = 5
      object ToolBar6: TToolBar
        Left = 0
        Top = 0
        Width = 839
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
        object wwDBNavigator6: TwwDBNavigator
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
          object wwNavButton17: TwwNavButton
            Left = 0
            Top = 0
            Width = 73
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
            Index = 0
            Style = nbsEdit
          end
          object wwNavButton18: TwwNavButton
            Left = 73
            Top = 0
            Width = 72
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
            Index = 1
            Style = nbsCustom
          end
          object wwNavButton19: TwwNavButton
            Left = 145
            Top = 0
            Width = 72
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
            Index = 2
            Style = nbsPost
          end
          object wwNavButton20: TwwNavButton
            Left = 217
            Top = 0
            Width = 72
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
            Index = 3
            Style = nbsCancel
          end
        end
        object Splitter5: TSplitter
          Left = 289
          Top = 2
          Width = 16
          Height = 22
          Cursor = crHSplit
        end
        object DBNavigator5: TDBNavigator
          Left = 305
          Top = 2
          Width = 160
          Height = 22
          DataSource = dsQmaster
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alRight
          TabOrder = 1
        end
        object ToolButton4: TToolButton
          Tag = 4
          Left = 465
          Top = 2
          AutoSize = True
          Caption = 'Printanje'
          DropdownMenu = PopupMenu5
          ImageIndex = 7
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 28
        Width = 839
        Height = 581
        Align = alClient
        TabOrder = 1
        object dxEdit80: TdxEdit
          Left = 88
          Top = 16
          Width = 81
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
          Text = 'Upisni broj:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit87: TwwDBEdit
          Left = 184
          Top = 16
          Width = 49
          Height = 22
          TabStop = False
          BorderStyle = bsNone
          DataField = 'Upisni_broj'
          DataSource = dsZPravo
          Enabled = False
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
          TabOrder = 1
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit88: TwwDBEdit
          Left = 168
          Top = 40
          Width = 273
          Height = 22
          BorderStyle = bsNone
          DataField = 'Jedinstvena_oznaka'
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
          TabOrder = 2
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit81: TdxEdit
          Left = 24
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
          TabOrder = 3
          Text = 'Jedinstvena oznaka:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object dxEdit82: TdxEdit
          Left = 24
          Top = 64
          Width = 81
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 4
          Text = 'Naziv sorte:'
          Alignment = taRightJustify
          StyleController = dxEditStyleController1
          StoredValues = 1
        end
        object wwDBEdit89: TwwDBEdit
          Left = 104
          Top = 64
          Width = 337
          Height = 20
          BorderStyle = bsNone
          DataField = 'Ime_sorte'
          DataSource = dsQmaster
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 5
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit85: TdxEdit
          Left = 24
          Top = 85
          Width = 81
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 6
          Text = 'Naziv vrste:'
          Alignment = taRightJustify
          StyleController = dxEditStyleController1
          StoredValues = 1
        end
        object wwDBEdit90: TwwDBEdit
          Left = 104
          Top = 85
          Width = 337
          Height = 20
          BorderStyle = bsNone
          DataField = 'Vrsta_hrv'
          DataSource = dsQmaster
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 7
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit88: TdxEdit
          Left = 40
          Top = 128
          Width = 169
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 8
          Text = 'Ugovor o zastupanju:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object dxEdit91: TdxEdit
          Left = 16
          Top = 152
          Width = 89
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
          TabOrder = 9
          Text = 'Broj:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit93: TwwDBEdit
          Left = 104
          Top = 152
          Width = 137
          Height = 22
          BorderStyle = bsNone
          DataSource = ds
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 10
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit92: TdxEdit
          Left = 240
          Top = 152
          Width = 57
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
          TabOrder = 11
          Text = 'Datum:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBDateTimePicker22: TwwDBDateTimePicker
          Left = 296
          Top = 152
          Width = 121
          Height = 22
          BorderStyle = bsNone
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          ButtonStyle = cbsEllipsis
          DataSource = ds
          Epoch = 1950
          Frame.Enabled = True
          Time = 0.165277777778101
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = True
          TabOrder = 12
          OnKeyDown = dtKlik
        end
        object dxEdit93: TdxEdit
          Left = 48
          Top = 192
          Width = 145
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 13
          Text = 'Podaci o zastupniku:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object dxEdit89: TdxEdit
          Left = 8
          Top = 216
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
          TabOrder = 14
          Text = 'Naziv:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object dxEdit90: TdxEdit
          Left = 8
          Top = 240
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
          Text = 'Adresa:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBLookupCombo5: TwwDBLookupCombo
          Left = 104
          Top = 216
          Width = 337
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
            'Adresa'#9'60'#9'Adresa'#9#9)
          DataField = 'lookImeZastupnika'
          DataSource = dsZastupnik
          LookupTable = tPartner7
          LookupField = 'Sifra_partnera'
          Options = [loColLines, loSearchOnBackspace]
          Frame.Enabled = True
          Frame.FocusStyle = efsFrameBump
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 16
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = False
          ShowMatchText = True
          OnKeyDown = DelLookup
        end
        object wwDBEdit91: TwwDBEdit
          Left = 104
          Top = 240
          Width = 201
          Height = 22
          BorderStyle = bsNone
          DataField = 'lookAdresaZastupnika'
          DataSource = dsZastupnik
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 17
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit92: TwwDBEdit
          Left = 312
          Top = 240
          Width = 129
          Height = 22
          BorderStyle = bsNone
          DataField = 'lookMjestoZastupnika'
          DataSource = dsZastupnik
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 18
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit94: TdxEdit
          Left = 48
          Top = 280
          Width = 105
          Color = clMenu
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Style.BorderStyle = xbsNone
          Style.Edges = []
          Style.Shadow = False
          TabOrder = 19
          Text = 'Oplemenjiva'#269':'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object dxEdit98: TdxEdit
          Left = 8
          Top = 304
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
          TabOrder = 20
          Text = 'Naziv:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object dxEdit99: TdxEdit
          Left = 8
          Top = 328
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
          TabOrder = 21
          Text = 'Adresa:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit96: TwwDBEdit
          Left = 104
          Top = 330
          Width = 201
          Height = 22
          BorderStyle = bsNone
          DataField = 'look_Oplemenjivac'
          DataSource = dsZPravo
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          TabOrder = 22
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit95: TwwDBEdit
          Left = 104
          Top = 304
          Width = 337
          Height = 22
          BorderStyle = bsNone
          DataField = 'look_Oplemenjivac'
          DataSource = dsZPravo
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 23
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit97: TwwDBEdit
          Left = 312
          Top = 330
          Width = 129
          Height = 22
          BorderStyle = bsNone
          DataField = 'look_PodnosteljMjesto'
          DataSource = dsZPravo
          Enabled = False
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          TabOrder = 24
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit95: TdxEdit
          Left = 8
          Top = 376
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
          TabOrder = 25
          Text = 'Predmet zastupanja:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object dxEdit96: TdxEdit
          Left = 8
          Top = 400
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
          TabOrder = 26
          Text = 'Sadr'#382'aj zastupanja:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit99: TwwDBEdit
          Left = 152
          Top = 400
          Width = 289
          Height = 22
          BorderStyle = bsNone
          DataField = 'Sadrzaj_zastupanja'
          DataSource = dsZastupnik
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
        object wwDBEdit98: TwwDBEdit
          Left = 152
          Top = 376
          Width = 289
          Height = 22
          BorderStyle = bsNone
          DataField = 'Predmet_zastupanja'
          DataSource = dsZastupnik
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 28
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object dxEdit97: TdxEdit
          Left = 16
          Top = 440
          Width = 369
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
          TabOrder = 29
          Text = 'Promjene podataka, upisane u upisnik zastupnika sorti:'
          Alignment = taRightJustify
          StoredValues = 1
        end
        object wwDBEdit100: TwwDBEdit
          Left = 24
          Top = 464
          Width = 417
          Height = 22
          BorderStyle = bsNone
          DataField = 'Promjene_upisa'
          DataSource = dsZastupnik
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 30
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
        object wwDBEdit94: TwwDBEdit
          Left = 168
          Top = 16
          Width = 17
          Height = 22
          BorderStyle = bsNone
          DataField = 'Sifra_dok'
          DataSource = dsZPravo
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Enabled = True
          Frame.NonFocusStyle = efsFrameRaised
          ParentFont = False
          TabOrder = 31
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
    end
  end
  object dxEditStyleController1: TdxEditStyleController
    BorderStyle = xbsNone
    Left = 480
    Top = 88
  end
  object Images: TImageList
    Left = 512
    Top = 84
    Bitmap = {
      494C010149004A00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003001000001002000000000000030
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008484840000000000000000007B7B7B00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B0000007B0000007B0000007B0000007B0000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084848400000000007B7B7B00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B0000000000000000000000
      00007B7B7B00000000000000000000000000000000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B00000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00007B7B7B0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF008400000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00840000008400
      0000840000008400000084000000000000007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000007B7B7B00BDBDBD00BDBDBD007B7B
      7B00000000007B7B7B000000000000000000000000007B0000007B0000007B00
      00007B0000007B0000007B0000007B7B7B007B000000FFFFFF007B0000007B00
      00007B0000007B0000007B0000007B00000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000007B7B7B00BDBDBD00BDBDBD007B7B
      7B00000000007B7B7B00000000000000000000000000FFFFFF00FFFFFF008400
      0000FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00840000008400
      0000840000008400000000000000000000007B7B7B00FFFFFF0000FFFF000000
      0000FF000000FF000000000000007B7B7B00BDBDBD00BDBDBD00FFFF00007B7B
      7B007B7B7B00000000000000000000000000000000007B0000007B0000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B0000007B00000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000007B7B7B00BDBDBD00BDBDBD00FFFF00007B7B
      7B007B7B7B0000000000000000000000000000000000FFFFFF00FFFFFF008400
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00840000008400
      0000840000000000000000000000000000007B7B7B00FFFFFF007B7B7B00FF00
      0000FF000000007B000000000000BDBDBD00FFFF0000BDBDBD00BDBDBD007B7B
      7B00BDBDBD00000000000000000000000000000000007B0000007B0000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B0000007B00000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B
      7B00BDBDBD0000000000000000000000000000000000FFFFFF00FFFFFF008400
      0000FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00840000008400
      0000000000000000000000000000000000007B7B7B00FFFFFF007B7B7B00FF00
      0000007B0000007B000000000000FFFF0000FFFF0000FFFF0000BDBDBD007B7B
      7B00BDBDBD00000000000000000000000000000000007B0000007B0000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B0000007B00000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000BDBDBD00FFFF0000BDBDBD00BDBDBD007B7B
      7B00BDBDBD0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF008400000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000FFFF
      FF00000000000000000000000000000000007B7B7B00FFFFFF007B7B7B00FF00
      0000007B0000007B00007B7B7B007B7B7B00FFFF0000FFFF0000BDBDBD007B7B
      7B007B7B7B00000000000000000000000000000000007B0000007B0000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B0000007B00000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000007B7B7B00FFFF0000FFFF0000BDBDBD007B7B
      7B007B7B7B0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000007B7B7B00FFFFFF007B7B7B00FF00
      0000FFFFFF007B7B0000007B0000000000007B7B7B00FFFF0000BDBDBD007B7B
      7B0000000000000000000000000000000000000000007B0000007B0000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B0000007B00000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000007B7B7B00BDBDBD00BDBDBD007B7B
      7B000000000000000000000000000000000000000000FFFFFF00FFFFFF008400
      000084000000FFFFFF00FFFFFF00FFFFFF00840000008400000084000000FFFF
      FF00000000000000000000000000000000007B7B7B00FFFFFF00FFFFFF007B7B
      7B00FF000000FFFFFF00FF000000007B00007B7B7B0000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B0000007B00000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0084000000FFFF
      FF00FFFFFF0084000000FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000007B7B7B00FFFFFF0000FFFF00FFFF
      FF007B7B7B007B7B7B007B7B7B007B7B7B00FFFFFF00FFFFFF0000FFFF000000
      000000000000000000000000000000000000000000007B0000007B0000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B0000007B00000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF0084000000FFFF
      FF00FFFFFF0084000000FFFFFF0084000000840000008400000084000000FFFF
      FF00000000000000000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B7B
      7B007B7B7B007B7B7B007B7B7B007B000000000000007B000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B0000007B00000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0084000000FFFF
      FF00FFFFFF0084000000FFFFFF0084000000FFFFFF00FFFFFF0084000000FFFF
      FF00000000000000000000000000000000007B7B7B00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00BDBDBD00BDBDBD007B7B7B000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      00007B0000007B0000007B0000000000000000000000000000007B0000007B00
      00007B0000007B0000007B0000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BDBDBD00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF008400
      000084000000FFFFFF00FFFFFF00FFFFFF008400000084000000FFFFFF00FFFF
      FF00000000000000000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008484
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      00007B7B7B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000848484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      00007B0000007B7B7B0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      00007B0000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008484840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      00007B0000007B0000007B7B7B00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      00007B0000007B0000007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      00008400000084000000848484000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B0000007B00
      00007B0000007B0000007B000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF007B0000007B00
      00007B0000007B0000007B0000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000840000008400
      00008400000084000000840000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00840000008400
      00008400000084000000840000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B0000007B00
      00007B0000007B00000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF007B0000007B00
      00007B0000007B000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000840000008400
      00008400000084000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00840000008400
      00008400000084000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B0000007B00
      00007B0000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000FFFF0000FFFF007B0000007B00
      00007B00000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      000000000000000000000000000000000000FFFF0000FFFF0000840000008400
      00008400000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00840000008400
      00008400000000000000000000000000000000000000FFFFFF00FF000000FF00
      0000FFFFFF00FFFFFF00FFFFFF00FF000000FF000000FFFFFF007B0000007B00
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      00000000000000FFFF0000FFFF00000000000000000000FFFF007B0000007B00
      00000000000000000000000000000000000000000000FFFF0000FFFF00000000
      000000000000FFFF0000FFFF00000000000000000000FFFF0000840000008400
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00848400008484000084840000FFFFFF00FFFFFF00840000008400
      00000000000000000000000000000000000000000000FFFFFF00FF000000FF00
      0000FFFFFF00FFFFFF00FFFFFF00FF000000FF000000FFFFFF007B000000FFFF
      FF00000000000000000000000000000000000000000000FFFF0000FFFF000000
      00000000000000FFFF0000FFFF00000000000000000000FFFF007B00000000FF
      FF000000000000000000000000000000000000000000FFFF0000FFFF00000000
      000000000000FFFF0000FFFF00000000000000000000FFFF000084000000FFFF
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00848400008484000084840000FFFFFF00FFFFFF0084000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FF000000FF00
      0000FFFFFF00FFFFFF00FFFFFF00FF000000FF000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF0000FFFF000000
      00000000000000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000FFFF0000FFFF00000000
      000000000000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FFFF
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF008484000084840000FFFFFF008484000084840000FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FF000000FF00
      0000FFFFFF00FF000000FFFFFF00FF000000FF000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF0000FFFF000000
      00000000000000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000FFFF0000FFFF00000000
      000000000000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FFFF
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF008484000084840000FFFFFF008484000084840000FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FF000000FF00
      0000FF000000FFFFFF00FF000000FF000000FF000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF0000FFFF000000
      00000000000000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000FFFF0000FFFF00000000
      000000000000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FFFF
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF008484000084840000FFFFFF008484000084840000FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FF000000FF00
      0000FFFFFF00FFFFFF00FFFFFF00FF000000FF000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF008484
      000084840000FFFFFF00FFFFFF00FFFFFF008484000084840000FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF008484
      000084840000FFFFFF00FFFFFF00FFFFFF008484000084840000FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000007B0000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      00007B7B7B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      00007B0000007B7B7B0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      00007B0000007B7B7B0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      00007B0000007B0000007B7B7B00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      00007B0000007B0000007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00BDBDBD0000000000000000007B007B007B007B007B00
      7B007B007B007B007B007B007B007B007B007B007B007B007B007B0000007B00
      00007B0000007B0000007B0000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B0000007B00
      00007B0000007B0000007B000000000000007B0000007B0000007B0000000000
      000000000000FFFFFF000000000000000000BDBDBD0000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00BDBDBD0000000000000000007B007B007B007B007B00
      7B007B007B007B007B007B007B007B007B007B007B007B007B007B0000007B00
      00007B0000007B000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B0000007B00
      00007B0000007B00000000000000000000007B000000FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000BDBDBD0000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD0000000000000000007B007B007B007B007B00
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B007B007B007B007B0000007B00
      00007B00000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B0000007B00
      00007B0000000000000000000000000000007B000000FFFFFF007B7B7B007B7B
      7B0000000000FFFFFF0000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00BDBDBD0000000000000000007B007B007B007B00FFFF
      FF00FFFFFF007B007B007B007B00FFFFFF00FFFFFF007B007B007B0000007B00
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF000000FF00FFFFFF00FFFFFF007B0000007B00
      0000000000000000000000000000000000007B000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00BDBDBD0000000000000000007B007B007B007B00FFFF
      FF00FFFFFF007B007B007B007B00FFFFFF00FFFFFF007B007B007B0000007B00
      7B000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      FF000000FF00FFFFFF00FFFFFF000000FF000000FF00FFFFFF007B000000FFFF
      FF00000000000000000000000000000000007B000000FFFFFF007B7B7B007B7B
      7B00FFFFFF0000000000FFFFFF00000000007B7B7B007B7B7B0000000000FFFF
      FF000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD0000000000000000007B007B007B007B00FFFF
      FF00FFFFFF007B007B007B007B00FFFFFF00FFFFFF007B007B007B007B007B00
      7B000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000007B000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00BDBDBD0000000000000000007B007B007B007B00FFFF
      FF00FFFFFF007B007B007B007B00FFFFFF00FFFFFF007B007B007B007B007B00
      7B000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000007B000000FFFFFF007B7B7B007B7B
      7B00FFFFFF007B7B7B007B7B7B00FFFFFF007B7B7B007B7B7B00FFFFFF007B00
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00BDBDBD0000000000000000007B007B007B007B00FFFF
      FF00FFFFFF007B007B007B007B00FFFFFF00FFFFFF007B007B007B007B007B00
      7B000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000007B000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B00
      000000000000000000000000000000000000000000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B00000000000000000000007B007B007B007B007B00
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B007B007B007B007B007B007B00
      7B000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      FF000000FF00FFFFFF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      000000000000000000000000000000000000000000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B00000000000000000000007B007B007B007B007B00
      7B007B007B007B007B007B007B007B007B007B007B007B007B007B007B007B00
      7B000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000007B000000BDBDBD007B0000007B00
      0000BDBDBD007B0000007B000000BDBDBD007B0000007B000000BDBDBD007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B007B007B007B007B00
      7B007B007B007B007B007B007B007B007B007B007B007B007B007B007B007B00
      7B000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00007B
      00007B7B7B00007B00007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000007B00007B7B7B00007B00007B7B7B00007B00007B7B7B00007B0000FFFF
      FF00007B00007B7B7B00007B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00007B00007B7B7B00007B00007B7B7B00007B0000FFFFFF00007B
      00007B7B7B00007B000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B0000000000000000007B7B7B007B7B
      7B00FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF00FFFFFF007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00007B00007B7B7B00007B00007B7B7B00007B0000FFFFFF00007B00007B7B
      7B00007B00007B7B7B00BDBDBD00000000007B7B7B0000000000000000007B7B
      7B000000000000000000000000007B7B7B000000000000000000000000007B7B
      7B000000000000000000000000007B7B7B0000000000000000007B7B7B007B7B
      7B00FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF00FFFFFF007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00007B00007B7B7B00007B0000FFFFFF00007B00007B7B7B00007B
      00007B7B7B00007B0000BDBDBD00000000007B7B7B0000000000000000007B7B
      7B000000000000000000000000007B7B7B000000000000000000000000007B7B
      7B000000000000000000000000007B7B7B000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00007B0000FFFFFF00007B00007B7B7B00007B00007B7B
      7B00FFFFFF00FFFFFF00BDBDBD00000000007B7B7B0000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000FFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF00FFFFFF007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00007B0000FFFFFF00007B00007B7B7B00007B00007B7B7B00007B
      00007B7B7B00BDBDBD00BDBDBD00000000007B7B7B0000000000000000007B7B
      7B000000000000000000000000007B7B7B000000000000000000000000007B7B
      7B000000000000000000000000007B7B7B00000000007B7B7B0000FFFF000000
      000000000000FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF00FFFFFF007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00BDBD
      BD00007B0000FFFFFF00007B00007B7B7B00007B00007B7B7B00007B00007B7B
      7B00007B00007B7B7B00BDBDBD00000000007B7B7B0000000000000000007B7B
      7B000000000000000000000000007B7B7B000000000000000000000000007B7B
      7B000000000000000000000000007B7B7B0000000000000000007B7B7B0000FF
      FF000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00BDBD
      BD007B7B7B00007B00007B7B7B00007B00007B7B7B00FFFFFF007B7B7B00007B
      00007B7B7B00007B0000BDBDBD00000000007B7B7B0000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000FFFFFF0000FFFF000000000000000000FFFFFF00FFFFFF00FFFFFF007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00007B00007B7B7B00007B00007B7B7B00BDBDBD00BDBDBD00BDBDBD007B7B
      7B00007B00007B7B7B00BDBDBD00000000007B7B7B0000000000000000007B7B
      7B000000000000000000000000007B7B7B000000000000000000000000007B7B
      7B000000000000000000000000007B7B7B007B7B7B00FFFFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00BDBDBD00000000007B7B7B0000000000000000007B7B
      7B000000000000000000000000007B7B7B000000000000000000000000007B7B
      7B000000000000000000000000007B7B7B00000000007B7B7B00FFFFFF0000FF
      FF00000000000000000000007B0000007B0000007B0000007B0000007B000000
      7B0000007B0000007B0000007B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00BDBDBD00000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B0000000000000000007B7B7B00FFFF
      FF0000FFFF00000000000000000000007B0000007B0000007B0000007B000000
      7B0000007B0000007B0000007B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B000000000000007B7B7B0000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B0000000000000000007B7B7B00FFFF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B000000000000007B7B7B0000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B000000000000000000000000007B7B
      7B00FFFFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      00007B7B7B00FFFFFF0000FFFF0000FFFF000000000000000000000000000000
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
      00007B7B7B0000007B007B7B7B00000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B007B7B7B00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000007B0000007B0000007B00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B00BDBDBD00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FF000000FF000000FF00
      0000FFFFFF0000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00007B7B7B0000007B007B7B7B00000000000000000000000000000000000000
      000000000000000000007B7B7B007B7B7B00BDBDBD00BDBDBD00000000000000
      00007B7B7B007B7B7B00BDBDBD00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00BDBDBD00000000000000000000000000FFFFFF007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B007B7B7B00BDBDBD00000000000000
      0000000000007B7B7B00BDBDBD00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FF000000FF000000FF00
      0000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00BDBDBD00000000000000000000000000FFFFFF007B7B
      7B00FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFFFF0000000000000000000000
      00000000000000007B000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD0000000000000000007B7B7B007B7B7B00BDBDBD00BDBD
      BD00000000007B7B7B00BDBDBD0000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000FFFFFF007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B00FFFFFF0000000000000000000000
      00007B7B7B0000007B007B7B7B00000000000000000000000000000000000000
      00007B7B7B007B7B7B0000000000BDBDBD00000000007B7B7B007B7B7B00BDBD
      BD00000000007B7B7B00BDBDBD0000000000000000000000000000000000BDBD
      BD00FF000000FF000000FF00000000000000FFFFFF00FF000000FF000000FF00
      0000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00BDBDBD00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000007B0000007B0000007B000000000000000000BDBDBD00BDBDBD000000
      0000000000007B7B7B0000000000000000000000000000000000BDBDBD00BDBD
      BD00000000007B7B7B00BDBDBD0000000000000000007B7B000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00BDBDBD00000000000000000000000000FFFFFF007B7B
      7B007B7B7B00BDBDBD00BDBDBD00BDBDBD00FFFFFF0000000000000000000000
      000000007B0000007B0000007B000000000000000000BDBDBD00BDBDBD000000
      00007B7B7B00000000007B7B7B007B7B7B00BDBDBD00000000007B7B7B00BDBD
      BD0000000000000000000000000000000000000000007B7B000000000000BDBD
      BD00FF000000FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000007B0000007B0000007B000000000000000000BDBDBD00000000007B7B
      7B007B7B7B007B7B7B00000000007B7B7B00BDBDBD0000000000BDBDBD00BDBD
      BD0000000000000000000000000000000000000000007B7B000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00BDBDBD00000000000000000000000000FFFFFF007B7B
      7B007B7B7B00BDBDBD0000000000BDBDBD000000000000000000000000000000
      000000007B0000007B0000007B000000000000000000BDBDBD00000000000000
      0000000000007B7B7B007B7B7B0000000000BDBDBD0000000000000000000000
      000000000000000000000000000000000000000000007B7B000000000000BDBD
      BD00FF000000FF000000FF000000BDBDBD000000000000000000000000000000
      000000000000000000007B0000000000000000000000FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00BDBDBD00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000007B0000007B0000007B000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00000000000000000000000000BDBDBD0000000000000000000000
      000000000000000000000000000000000000000000007B7B000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000000000000000000000000000
      0000000000007B0000007B0000007B000000000000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000007B0000007B0000007B000000000000000000BDBDBD007B7B7B007B7B
      7B007B7B7B007B7B7B00BDBDBD00000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B00000000000000000000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000007B00000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B00007B7B00007B7B
      00007B7B00007B7B0000000000000000000000000000000000007B0000000000
      000000000000000000007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B00
      00007B0000007B00000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000FF000000FF000000FF000000FF000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000FF000000FF000000FF000000FF000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000FF000000FF000000FF000000FF000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000FF000000FF000000FF000000FF000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000FF000000FF000000FF000000FF000000FF000000
      000000FFFF0000FFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF000000FF000000FF000000FF000000FF000000FF000000
      000000FFFF0000FFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000FF000000FF000000
      000000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF000000FF000000FF000000FF000000FF000000FF000000
      000000FFFF0000FFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000007B00000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF007B000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF007B000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000007B00
      0000FFFFFF00FFFFFF000000FF000000FF000000FF000000FF000000FF00FFFF
      FF000000000000007B0000007B00000000000000000000007B0000007B000000
      000000000000FFFFFF000000FF000000FF0000007B000000FF000000FF00FFFF
      FF000000000000007B0000007B0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B0000007B000000FFFFFF000000FF000000FF000000FF000000FF00FFFF
      FF000000000000007B0000007B00000000000000000000000000FFFFFF007B00
      00007B000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF00FFFF
      FF000000000000007B0000007B000000000000000000000000007B0000007B00
      00007B000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000007B7B7B0000007B007B7B
      7B00FFFFFF00FFFFFF007B7B7B0000007B007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000007B0000007B0000007B0000007B00
      00007B0000007B0000007B000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF007B0000007B00
      00007B0000007B0000007B0000007B0000007B000000FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000007B0000007B0000007B00
      00007B0000007B7B7B00FFFFFF000000FF000000FF00FFFFFF00000000000000
      0000000000007B7B7B000000000000000000000000000000000000007B000000
      7B007B7B7B007B7B7B0000007B0000007B00FFFFFF00FFFFFF00000000000000
      0000000000007B7B7B0000000000000000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B000000FFFFFF00FFFFFF00000000000000
      0000000000007B7B7B000000000000000000FFFFFF007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B000000FFFFFF00000000000000
      0000000000007B7B7B0000000000000000007B0000007B0000007B0000000000
      00007B0000007B000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000000000000000000000000000000000007B7B7B000000
      7B0000007B0000007B0000007B00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000000000000000000000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000007B7B7B007B000000000000000000
      0000000000007B0000007B000000FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      7B0000007B0000007B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B000000FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B0000007B7B7B00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000007B7B7B0000007B000000
      7B0000007B0000007B007B7B7B00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000007B0000007B0000007B0000007B00
      00007B0000007B0000007B000000FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      00007B0000007B0000007B0000007B0000007B000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007B0000007B007B7B
      7B000000000000007B0000007B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B0000007B000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B00
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000007B0000007B007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B0000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000BDBDBD00BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD0000000000BDBDBD00FFFFFF00BDBDBD00BDBDBD00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF0000007B00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000BDBDBD000000
      0000BDBDBD00000000007B7B7B00007B7B007B7B7B00BDBDBD00BDBDBD000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000007B0000007B007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000FF000000FF000000FF000000FF000000FF000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000BDBDBD000000
      0000BDBDBD0000000000BDBDBD0000007B00000000007B7B7B00BDBDBD000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0000007B0000007B0000007B0000007B00FFFFFF000000000000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      FF000000FF000000FF000000FF000000FF000000000000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000FFFF000000000000000000000000000000000000000000BDBDBD000000
      0000BDBDBD0000000000FFFFFF00BDBDBD007B7B7B00007B7B00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      7B0000007B0000007B007B7B7B0000007B0000007B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000FF000000FF000000FF000000FF000000FF000000FF000000
      000000FFFF0000FFFF0000000000000000000000000000000000BDBDBD000000
      0000BDBDBD0000000000BDBDBD00BDBDBD00BDBDBD007B0000007B7B00000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0000007B007B7B7B00FFFFFF00FFFFFF0000007B007B7B7B00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      FF000000FF000000FF000000FF000000FF000000FF000000000000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000BDBDBD000000
      0000BDBDBD0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD007B0000007B7B
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000007B007B7B7B00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000FF000000FF000000FF000000FF000000FF000000FF00FFFF
      FF000000000000007B0000007B000000000000000000000000007B7B7B000000
      0000BDBDBD0000000000BDBDBD00FFFFFF00BDBDBD00BDBDBD00FFFFFF007B00
      00007B7B00000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0000007B00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      FF000000FF000000FF000000FF000000FF000000FF00FFFFFF00000000000000
      7B0000007B0000000000000000000000000000FFFF0000000000FFFFFF007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000BDBDBD000000
      0000BDBDBD00BDBDBD0000000000000000007B7B7B00BDBDBD00000000000000
      00007B0000007B7B000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      7B00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000007B7B7B0000FFFF0000FFFF007B7B
      7B00FFFFFF000000FF007B7B7B000000FF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B000000000000000000FFFFFF007B7B7B000000000000000000000000000000
      0000000000007B0000007B7B0000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      FF000000FF000000FF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00FFFFFF007B7B
      7B0000FFFF007B7B7B0000FFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      000000000000000000007B000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B007B7B7B00FFFF
      FF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000FFFF007B7B7B0000FF
      FF00FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B0000FFFF007B7B
      7B0000FFFF007B7B7B0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000FFFF00000000007B7B
      7B00FFFFFF00000000007B7B7B0000FFFF000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000BDBDBD00000000000000
      000000000000FFFFFF000000000000000000000000007B7B7B00000000000000
      000000000000000000007B7B7B000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000007B7B
      7B00FFFFFF00BDBDBD00BDBDBD000000FF000000FF000000FF00BDBDBD00BDBD
      BD00FFFFFF00000000000000000000000000000000007B7B7B0000000000FF00
      0000FF000000000000000000000000FFFF0000FFFF0000000000000000000000
      FF000000FF0000007B00000000000000000000000000FFFFFF00000000000000
      00000000000000000000FFFFFF0000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000007B7B7B0000000000FF00
      0000FF0000007B0000000000000000FFFF0000FFFF00007B7B00000000000000
      FF000000FF0000007B00000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFF000000000000000000000000000000FFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000007B7B
      7B00FFFFFF000000FF000000FF000000FF000000FF00BDBDBD00BDBDBD00BDBD
      BD00FFFFFF00000000000000000000000000000000007B7B7B0000000000FF00
      0000FF0000007B0000000000000000FFFF0000FFFF00007B7B00000000000000
      FF000000FF0000007B00000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000007B7B7B0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000FFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000007B7B7B0000000000FF00
      0000FF0000007B0000000000000000FFFF0000FFFF00007B7B00000000000000
      FF000000FF0000007B00000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF000000000000FFFF00000000000000000000000000000000007B7B7B00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF000000000000000000000000007B7B7B0000FFFF000000
      00000000000000000000BDBDBD00BDBDBD000000FF000000FF00BDBDBD00BDBD
      BD00FFFFFF00000000000000000000000000000000007B7B7B0000000000FF00
      0000FF0000007B0000000000000000FFFF0000FFFF00007B7B00000000000000
      FF000000FF0000007B00000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000000000007B7B7B00FFFF
      FF0000FFFF000000000000000000BDBDBD00BDBDBD000000FF000000FF000000
      FF00FFFFFF0000000000000000000000000000000000BDBDBD0000000000FF00
      0000FF0000007B0000000000000000FFFF0000FFFF00007B7B00000000000000
      FF000000FF0000007B00000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000007B7B7B00FFFFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000000000FFFFFF00FFFFFF007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000007B7B7B00BDBDBD000000
      000000000000000000000000000000FFFF0000FFFF00007B7B00000000000000
      FF000000FF0000007B00000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF000000000000000000FFFF
      FF0000000000000000000000000000000000000000007B7B7B00FFFFFF0000FF
      FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B
      7B00FFFFFF000000000000000000000000007B7B7B00FFFFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000000000BDBDBD007B7B7B000000
      00000000000000000000000000000000000000000000BDBDBD007B7B7B000000
      000000000000000000000000000000FFFF0000FFFF00007B7B00000000000000
      FF000000FF0000007B00000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000FF00000000000000000000000000000000007B7B7B00FFFF
      FF0000FFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B
      7B0000000000000000000000000000000000000000007B7B7B00FFFFFF0000FF
      FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFF
      FF0000000000000000000000000000000000000000007B7B7B00BDBDBD000000
      000000000000000000000000000000FFFF0000FFFF00007B7B00000000000000
      00000000FF0000007B000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF0000FFFF0000FFFF0000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF0000FFFF000000000000000000FFFFFF00FFFFFF00FFFFFF007B7B7B000000
      00000000000000000000000000000000000000000000FFFFFF007B7B7B000000
      000000000000000000000000000000FFFF0000FFFF00007B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00FFFF
      FF0000FFFF0000FFFF0000000000000000007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000FFFF0000FFFF00BDBDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00FFFFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00FFFFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00007B
      00007B7B7B00007B00007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD00FFFFFF00BDBDBD00FFFFFF0000000000FFFFFF00BDBD
      BD00FFFFFF00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000007B00007B7B7B00007B00007B7B7B00007B00007B7B7B00007B0000FFFF
      FF00007B00007B7B7B00007B00000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000BDBDBD000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000007B7B7B000000000000000000000000000000
      00007B7B7B00007B00007B7B7B00007B00007B7B7B00007B0000FFFFFF00007B
      00007B7B7B00007B000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000FFFFFF00000000007B7B7B00000000000000000000000000000000000000
      00007B7B7B0000000000FFFFFF000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00000000007B7B7B0000000000BDBDBD00BDBDBD00BDBD
      BD00007B00007B7B7B00007B00007B7B7B00007B0000FFFFFF00007B00007B7B
      7B00007B00007B7B7B00BDBDBD00000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000FFFFFF0000FFFF00000000007B7B7B000000000000000000000000000000
      0000BDBDBD000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000007B7B7B0000000000FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00007B00007B7B7B00007B0000FFFFFF00007B00007B7B7B00007B
      00007B7B7B00007B0000BDBDBD00000000007B7B7B000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000BDBD
      BD0000000000FFFFFF00000000007B7B7B000000000000000000000000007B00
      000000000000BDBDBD00FFFFFF00BDBDBD00FFFFFF0000000000FFFFFF00BDBD
      BD00FFFFFF00BDBDBD00000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00000000007B7B7B0000000000FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00007B0000FFFFFF00007B00007B7B7B00007B00007B7B
      7B00FFFFFF00FFFFFF00BDBDBD000000000000007B0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FF
      FF00BDBDBD0000000000000000007B7B7B000000000000000000FF000000FF00
      0000FF000000000000000000000000000000000000007B000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000007B7B7B0000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00007B0000FFFFFF00007B00007B7B7B00007B00007B7B7B00007B
      00007B7B7B00BDBDBD00BDBDBD000000000000007B0000007B0000FFFF00FFFF
      FF0000FFFF00FFFFFF007B7B7B0000007B0000FFFF00FFFFFF00000000000000
      00000000000000000000000000007B7B7B007B7B7B007B000000FF000000FF00
      0000FF000000007B0000007B0000007B0000007B0000FF0000007B0000007B7B
      7B000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00000000007B7B7B0000000000FFFFFF00FFFFFF00BDBD
      BD00007B0000FFFFFF00007B00007B7B7B00007B00007B7B7B00007B00007B7B
      7B00007B00007B7B7B00BDBDBD00000000007B7B7B0000007B007B7B7B0000FF
      FF00FFFFFF007B7B7B0000007B007B7B7B00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00000000007B7B7B007B7B7B00FF000000FF000000FF00
      0000FF000000007B0000007B0000007B0000007B00007B7B0000FF0000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000007B7B7B0000000000FFFFFF00FFFFFF00BDBD
      BD007B7B7B00007B00007B7B7B00007B00007B7B7B00FFFFFF007B7B7B00007B
      00007B7B7B00007B0000BDBDBD00000000000000000000007B0000007B007B7B
      7B0000FFFF0000007B0000007B00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000007B7B7B007B7B7B00FF000000FF000000BDBD
      BD00007B0000007B0000007B0000007B0000007B0000FF000000FF0000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000FFFFFF00000000000000000000000000FFFFFF00000000000000
      000000000000FFFFFF00000000007B7B7B0000000000BDBDBD00BDBDBD00BDBD
      BD00007B00007B7B7B00007B00007B7B7B00BDBDBD00BDBDBD00BDBDBD007B7B
      7B00007B00007B7B7B00BDBDBD0000000000000000007B7B7B0000007B000000
      7B0000007B0000007B00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00000000007B7B7B007B7B7B00FF000000BDBDBD00007B
      0000007B0000007B0000007B00007B0000007B7B00007B000000007B00000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000BDBDBD00FFFFFF00BDBDBD0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000007B7B7B0000000000FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00BDBDBD0000000000000000007B7B7B0000007B000000
      7B0000007B00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000007B7B7B007B7B7B00FF000000BDBDBD00BDBD
      BD00BDBDBD007B000000007B0000007B0000FF000000007B0000007B00000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00BDBD
      BD00000000000000000000000000BDBDBD00FFFFFF00FFFFFF00000000000000
      000000000000FFFFFF00000000007B7B7B0000000000FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00BDBDBD00000000007B7B7B0000007B0000007B000000
      7B0000007B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B00FF000000FFFF
      FF00BDBDBD00FF000000FF000000FF000000FF000000007B0000007B00007B7B
      7B000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF007B7B7B007B7B7B007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000007B7B7B00000000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000000000000000007B0000007B007B7B7B000000
      000000007B0000007B007B7B7B00000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00FFFFFF00BDBD
      BD00FFFFFF00BDBDBD00007B0000007B0000007B0000007B0000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000FFFFFF00000000007B7B7B00000000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B000000000000000000000000000000000000000000
      00000000000000007B0000007B007B7B7B000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B007B7B0000BDBDBD00BDBDBD00BDBDBD00007B000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000007B0000007B007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B0000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBD
      BD00FFFFFF00BDBDBD00FFFFFF000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00000000000000000000000000000000000000
      00000000000000000000BDBDBD0000000000000000007B0000007B0000007B00
      00007B0000007B0000007B7B7B0000000000000000007B0000007B0000007B00
      00007B0000007B0000007B7B7B00000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000FFFFFF0000FFFF00000000007B7B7B00000000000000000000000000FFFF
      FF00FFFFFF007B000000FFFFFF00FFFFFF007B000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000BDBDBD00FFFFFF00BDBD
      BD00FFFFFF0000000000FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBD
      BD00FFFFFF00BDBDBD00FFFFFF0000000000000000007B0000007B0000007B00
      00007B0000007B0000007B7B7B0000000000000000007B0000007B0000007B00
      00007B0000007B0000007B7B7B0000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000BDBD
      BD0000000000FFFFFF00000000007B7B7B00000000000000000000000000FFFF
      FF00FFFFFF007B000000FFFFFF00FFFFFF007B000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000BDBDBD00FFFFFF00BDBDBD0000007B0000007B00FFFF
      FF00BDBDBD00FFFFFF00BDBDBD0000000000000000007B000000000000000000
      00007B0000007B0000000000000000000000000000007B0000007B0000000000
      0000000000007B00000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FF
      FF00BDBDBD0000000000000000007B7B7B00000000000000000000000000FFFF
      FF007B0000007B0000007B0000007B0000007B0000007B0000007B000000FFFF
      FF00FFFFFF0000000000000000000000000000000000BDBDBD00FFFFFF00BDBD
      BD00FFFFFF0000000000FFFFFF00BDBDBD00FFFFFF0000007B0000007B00BDBD
      BD00FFFFFF00BDBDBD00FFFFFF00000000000000000000000000000000000000
      00007B000000000000000000000000000000000000007B0000007B7B7B007B7B
      7B0000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      00000000000000000000000000007B7B7B00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF007B000000FFFFFF00FFFFFF007B000000FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF007B7B7B000000
      7B0000007B0000000000BDBDBD00FFFFFF00BDBDBD00FFFFFF0000007B000000
      7B00BDBDBD00FFFFFF00BDBDBD00000000000000000000000000000000007B00
      00007B7B7B0000000000000000000000000000000000000000007B0000007B7B
      7B007B7B7B00000000000000000000000000FFFFFF0000000000FFFFFF007B7B
      7B0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00000000007B7B7B00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF007B000000FFFFFF00FFFFFF007B000000FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000BDBDBD0000007B000000
      7B00FFFFFF0000000000FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF000000
      7B0000007B00BDBDBD00FFFFFF000000000000000000000000007B0000007B00
      00000000000000000000000000000000000000000000000000007B0000007B00
      00007B7B7B007B7B7B0000000000000000007B7B7B0000FFFF0000FFFF007B7B
      7B00FFFFFF0000FFFF007B7B7B0000FFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000007B7B7B00000000000000000000000000FFFF
      FF00FFFFFF007B0000007B0000007B0000007B0000007B0000007B0000007B00
      0000FFFFFF0000000000000000000000000000000000FFFFFF007B7B7B000000
      7B0000007B0000000000BDBDBD00FFFFFF0000007B0000007B0000007B000000
      7B0000007B00FFFFFF00BDBDBD0000000000000000007B0000007B0000007B7B
      7B00000000000000000000000000000000000000000000000000000000007B00
      00007B0000007B7B7B000000000000000000000000007B7B7B00FFFFFF007B7B
      7B0000FFFF007B7B7B0000FFFF00FFFFFF0000FFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00000000007B7B7B00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B000000FFFFFF00FFFFFF007B000000FFFF
      FF00FFFFFF0000000000000000000000000000000000BDBDBD0000007B000000
      7B00FFFFFF0000000000FFFFFF00BDBDBD00FFFFFF00BDBDBD00FFFFFF00BDBD
      BD00FFFFFF00BDBDBD00FFFFFF0000000000000000007B0000007B0000007B7B
      7B00000000000000000000000000000000000000000000000000000000007B00
      00007B0000007B7B7B0000000000000000007B7B7B007B7B7B007B7B7B00FFFF
      FF007B7B7B00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000007B7B7B000000000000000000000000000000
      00000000000000000000FFFFFF007B000000FFFFFF00FFFFFF007B000000FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF007B7B7B000000
      7B0000007B00000000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B00000000000000000000007B0000007B0000007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000007B00
      00007B000000000000000000000000000000FFFFFF0000FFFF007B7B7B0000FF
      FF00FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000BDBDBD00FFFFFF00BDBD
      BD00FFFFFF00000000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000000000000000000000000000007B0000007B00
      00007B7B7B007B7B7B00000000000000000000000000000000007B0000007B00
      00007B7B7B00000000000000000000000000000000007B7B7B0000FFFF007B7B
      7B0000FFFF007B7B7B0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000007B0000007B0000007B00
      00007B0000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      00007B0000007B7B7B007B7B7B007B7B7B007B7B7B007B0000007B0000007B00
      0000000000000000000000000000000000007B7B7B0000FFFF00000000007B7B
      7B00FFFFFF00000000007B7B7B0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B0000007B0000007B0000007B0000007B0000007B000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000007B7B
      7B0000FFFF0000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000007B7B00007B7B
      7B007B7B00007B7B7B007B7B00007B7B7B007B7B00007B7B7B007B7B00007B7B
      7B007B7B00007B7B7B007B7B0000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000007B
      00007B0000000000000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000000000007B7B7B007B7B
      00007B7B7B000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B00007B7B7B00000000000000000000000000000000000000
      00000000000000000000000000007B7B7B00FF000000FF000000007B0000007B
      0000FF0000007B00000000000000000000000000000000000000000000007B7B
      7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000000000007B7B00007B7B
      7B007B7B000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B00007B7B7B007B7B0000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B00FF000000BDBDBD00007B0000007B
      0000007B0000FF00000000000000000000000000000000000000000000007B7B
      7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00000000000000000000000000000000007B7B7B007B7B
      00007B7B7B0000000000FFFFFF007B0000007B0000007B000000FFFFFF000000
      00007B7B7B007B7B00007B7B7B00000000000000000000000000000000000000
      00000000000000000000000000007B7B7B00FF000000BDBDBD00BDBDBD00007B
      0000FF000000007B000000000000000000000000000000000000000000007B7B
      7B0000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000007B7B7B000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000000000007B7B00007B7B
      7B007B7B000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B00007B7B7B007B7B0000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B7B7B00FF000000FFFFFF007B7B0000FF00
      0000007B0000007B000000000000000000000000000000000000000000007B7B
      7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00000000000000
      000000000000FFFFFF00000000000000000000000000000000007B7B7B007B7B
      00007B7B7B0000000000FFFFFF007B0000007B000000FFFFFF00FFFFFF000000
      00007B7B7B007B7B00007B7B7B00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00FF000000FFFFFF00BDBD
      BD00007B00000000000000000000000000000000000000000000000000007B7B
      7B0000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000007B7B7B000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000000000007B7B00007B7B
      7B007B7B000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B00007B7B7B007B7B0000000000000000000000000000FFFFFF007B7B
      7B007B7B7B007B7B7B007B7B7B00FFFFFF00FFFFFF007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000007B7B
      7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00000000000000
      000000000000FFFFFF00000000000000000000000000000000007B7B7B007B7B
      00007B7B7B0000000000FFFFFF007B0000007B0000007B000000FFFFFF000000
      00007B7B7B007B7B00007B7B7B00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000007B7B
      7B0000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000007B7B7B000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000000000007B7B00007B7B
      7B007B7B000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00007B7B00007B7B7B007B7B0000000000000000000000000000FFFFFF007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00FFFF
      FF00000000000000000000000000000000000000000000000000000000007B7B
      7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00000000000000000000000000000000007B7B7B007B7B
      00007B7B7B000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B00007B7B7B00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000007B7B
      7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007B7B7B000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000000000007B7B00007B7B
      7B007B7B00007B7B7B007B7B00007B7B7B007B7B00007B7B7B007B7B00007B7B
      7B007B7B00007B7B7B007B7B0000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD000000000000000000FFFFFF00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000007B000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000BDBDBD000000
      0000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF000000000000BDBDBD000000000000000000FFFFFF00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000000000007B000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000BDBDBD000000
      0000FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B00FFFFFF0000000000BDBDBD000000000000000000FFFFFF00BDBDBD00BDBD
      BD00BDBDBD007B7B7B000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000007B000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000BDBDBD000000
      0000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF000000000000BDBDBD000000000000000000FFFFFF00BDBDBD00BDBD
      BD000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000000000007B000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000BDBDBD000000
      0000FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B00FFFFFF0000000000BDBDBD000000000000000000FFFFFF00BDBDBD000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000007B000000FFFFFF00FFFF
      FF007B000000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF007B000000FFFFFF00FFFFFF00000000000000000000000000BDBDBD000000
      0000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF000000000000BDBDBD000000000000000000FFFFFF007B7B7B000000
      0000FFFF0000000000000000000000000000FFFFFF0000000000BDBDBD000000
      00007B7B7B000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000000000007B000000FFFFFF007B00
      00007B000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B0000007B000000FFFFFF00000000000000000000000000BDBDBD000000
      0000FFFFFF007B7B7B007B7B7B007B7B7B00FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF0000000000BDBDBD000000000000000000FFFFFF0000000000FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF0000000000BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000007B0000007B0000007B00
      00007B0000007B000000FFFFFF00000000000000000000000000FFFFFF007B00
      00007B0000007B0000007B000000000000000000000000000000BDBDBD000000
      0000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF000000000000BDBDBD000000000000000000FFFFFF0000000000FFFF
      FF0000000000000000000000000000000000FFFFFF0000000000BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000000000007B000000FFFFFF007B00
      00007B000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B0000007B000000FFFFFF00000000000000000000000000BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD0000000000000000000000000000000000FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFFFF00FFFFFF0000000000BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000007B000000FFFFFF00FFFF
      FF007B000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF007B000000FFFFFF00FFFFFF00000000000000000000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000BDBDBD000000
      00007B7B7B000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000000000007B000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B7B000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00BDBDBD00BDBDBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B0000007B00000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B0000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      7B00000000000000000000000000000000000000000000000000000000007B00
      00007B0000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000FF00FFFFFF000000
      7B0000000000FFFFFF00FFFFFF000000000000000000000000007B0000007B00
      00007B0000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000FFFFFF0000FFFF00000000007B7B7B000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000FFFFFF0000FFFF00000000007B7B7B000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000FF00FFFFFF0000007B000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000000000007B0000007B0000007B00
      00007B0000007B000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000BDBD
      BD0000000000FFFFFF00000000007B7B7B00000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000BDBD
      BD0000000000FFFFFF00000000007B7B7B000000000000000000FFFFFF000000
      00007B7B7B00BDBDBD007B7B7B007B7B7B000000000000007B0000000000BDBD
      BD00BDBDBD00FFFFFF00FFFFFF000000000000000000000000007B0000007B00
      00007B0000007B000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00FFFFFF00000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FF
      FF00BDBDBD0000000000000000007B7B7B000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FF
      FF00BDBDBD0000000000000000007B7B7B000000000000000000000000007B7B
      7B00BDBDBD00FFFF00007B7B7B00FFFFFF007B7B7B0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000007B00
      00007B0000007B000000BDBDBD00BDBDBD00BDBDBD00FFFFFF00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00FFFFFF0000000000000000000000000000FFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      00000000000000000000000000007B7B7B00000000000000000000FFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      00000000000000000000000000007B7B7B00000000000000000000000000BDBD
      BD00FFFF0000BDBDBD007B7B7B00BDBDBD00FFFFFF0000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00FFFFFF00000000000000000000000000000000000000
      00007B0000007B0000007B7B7B007B7B7B007B7B7B00BDBDBD007B7B7B007B7B
      7B007B7B7B007B7B7B00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF007B000000FFFFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00000000007B7B7B000000000000000000FFFFFF00FFFF
      FF007B000000FFFFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00000000007B7B7B00000000000000000000000000FFFF
      0000FFFFFF00FFFF00007B7B7B00FFFF0000BDBDBD0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF007B000000FFFFFF007B7B7B00FFFFFF00FFFFFF00FFFFFF007B7B
      7B007B7B7B00BDBDBD00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B0000007B000000FFFFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000007B7B7B000000000000000000FFFFFF007B00
      00007B000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000007B7B7B000000000000000000000000007B7B
      7B00FFFFFF00FFFFFF007B7B7B00BDBDBD007B7B7B0000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00BDBDBD00BDBDBD007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B00BDBDBD00FFFFFF00000000007B0000007B0000007B0000007B00
      00007B0000007B0000007B000000FFFFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00000000007B7B7B0000000000FFFFFF007B0000007B00
      00007B0000007B0000007B0000007B0000007B000000FFFFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00000000007B7B7B000000000000000000FFFFFF000000
      00007B7B7B00FFFF00007B7B7B007B7B7B0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFFFF007B7B7B007B7B
      7B00BDBDBD00FFFFFF00FFFFFF00000000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B000000FFFFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000007B7B7B00FFFFFF007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000007B7B7B000000000000000000FFFFFF00BDBD
      BD0000000000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00BDBDBD00BDBDBD00BDBDBD007B7B7B00FFFFFF007B7B7B007B7B
      7B00BDBDBD00BDBDBD00FFFFFF00000000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B000000FFFFFF00000000000000
      0000000000000000000000000000000000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B007B7B7B00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00000000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B000000FFFFFF00000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000000000000000000000000000000000
      0000FFFFFF00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B7B007B7B7B00BDBD
      BD00BDBDBD00BDBDBD00FFFFFF00000000007B0000007B0000007B0000007B00
      00007B0000007B0000007B000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      00007B0000007B0000007B0000007B0000007B000000FFFFFF00000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00007B0000007B00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B00
      00007B0000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B0000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B00000000000000000000000000000000000000000000000000
      000000000000000000007B0000007B0000007B0000007B000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B0000007B000000000000000000000000000000000000000000
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B00000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00007B000000000000007B000000000000007B000000000000007B0000007B00
      00007B0000007B0000007B0000007B0000000000000000000000000000007B00
      00007B0000007B000000000000000000000000000000000000007B0000007B00
      00007B0000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF007B00000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B0000007B000000000000000000000000000000000000007B00
      00007B0000000000000000000000000000000000000000000000000000007B00
      00007B0000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B000000000000000000000000000000000000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      00007B0000007B00000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF007B0000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      00007B0000007B00000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000007B000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B0000000000000000000000FFFFFF000000
      00000000000000000000BDBDBD000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      00007B0000007B00000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B000000FFFFFF000000000000000000FFFF
      FF007B0000007B0000007B0000007B0000000000000000000000FFFFFF000000
      00000000000000000000BDBDBD000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000000000
      00007B0000007B00000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000007B000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B000000FFFFFF007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B00
      00007B000000000000000000000000000000000000007B000000000000007B00
      00007B0000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B0000007B0000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD000000
      0000000000000000000000000000BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B00
      00007B000000000000000000000000000000000000007B0000007B0000007B00
      00007B0000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF00000000007B0000007B0000007B0000007B0000007B00
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      00007B0000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
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
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD007B007B00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B00
      7B00BDBDBD0000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00BDBDBD0000FFFF00BDBDBD00BDBDBD00000000007B7B7B007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000007B00
      7B007B007B007B007B007B007B007B007B007B007B007B007B007B007B007B00
      7B007B007B0000000000000000000000000000000000BDBDBD00000000000000
      0000BDBDBD00FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF0000FF
      FF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF000000000000FFFF00BDBD
      BD007B7B7B007B7B7B000000000000000000000000000000000000000000BDBD
      BD00BDBDBD007B007B00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B00
      7B00BDBDBD0000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF00FFFFFF000000
      0000FFFFFF0000FFFF000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000FFFF
      FF0000FFFF00BDBDBD007B7B7B0000000000000000000000000000000000BDBD
      BD00BDBDBD007B007B00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B00
      7B00BDBDBD0000000000000000000000000000000000BDBDBD00000000000000
      0000BDBDBD00FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00FFFF
      FF0000000000BDBDBD00BDBDBD000000000000000000FFFFFF000000000000FF
      FF0000000000FFFFFF00FFFFFF0000FFFF00FFFFFF0000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000000000007B7B7B0000000000000000000000000000000000BDBD
      BD00BDBDBD007B007B00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B00
      7B00BDBDBD0000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00BDBDBD00000000000000000000FFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BDBDBD00000000000000000000000000000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF0000FFFF007B7B7B000000
      0000FFFFFF0000FFFF00BDBDBD0000000000000000000000000000000000BDBD
      BD00BDBDBD007B007B00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B00
      7B00BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00BDBDBD000000000000000000FFFFFF00FFFFFF0000FF
      FF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00000000007B0000007B00
      0000FFFFFF00FFFFFF00BDBDBD00000000000000000000000000000000000000
      000000000000000000000000000000FFFF00FFFFFF00FFFFFF00FFFFFF0000FF
      FF00FFFFFF00FFFFFF00BDBDBD0000000000000000000000000000000000BDBD
      BD00BDBDBD007B007B00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B00
      7B00BDBDBD000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BDBDBD00000000000000000000FFFF00FFFFFF000000
      0000FFFFFF0000FFFF000000000000000000FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BDBDBD00000000000000000000000000000000000000
      0000000000007B7B00007B7B000000000000FFFFFF0000FFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00BDBDBD0000000000000000000000000000000000BDBD
      BD00BDBDBD007B007B00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B00
      7B00BDBDBD000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF00FFFFFF007B0000007B0000007B0000007B0000007B0000007B00
      0000FFFFFF00FFFFFF00BDBDBD000000000000000000FFFFFF000000000000FF
      FF0000000000FFFFFF00FFFFFF0000FFFF00FFFFFF00000000007B0000007B00
      0000FFFFFF00FFFFFF00BDBDBD0000000000000000007B7B00007B7B00000000
      000000000000000000007B7B000000000000FFFFFF00FFFFFF00FFFFFF0000FF
      FF00FFFFFF00FFFFFF00BDBDBD0000000000000000000000000000000000BDBD
      BD00BDBDBD007B007B00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B00
      7B00BDBDBD000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000007B0000007B00BDBDBD00000000000000000000FFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000007B0000007B00BDBDBD000000000000000000FFFF00007B7B00000000
      0000FFFF0000000000007B7B0000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000FFFF00BDBDBD0000000000000000000000000000000000BDBD
      BD00BDBDBD007B007B00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B00
      7B00BDBDBD000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000007B0000007B00BDBDBD000000000000000000FFFFFF00FFFFFF0000FF
      FF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000007B0000007B00BDBDBD000000000000000000FFFF0000FFFF00000000
      000000000000FFFF0000FFFF000000000000FFFFFF00FFFFFF00FFFFFF0000FF
      FF00FFFFFF00FFFFFF00BDBDBD0000000000000000000000000000000000BDBD
      BD00BDBDBD007B007B00BDBDBD00BDBDBD00BDBDBD00BDBDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF00BDBDBD00000000000000000000000000000000007B00
      7B007B007B007B007B007B007B007B007B007B007B007B007B0000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000007B7B7B00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FF
      FF00FFFFFF00FFFFFF00BDBDBD0000000000000000000000000000000000BDBD
      BD00BDBDBD007B007B00BDBDBD00BDBDBD00BDBDBD00BDBDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000007B7B00007B
      7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B
      7B00007B7B000000000000000000000000007B7B7B00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B0000007B0000007B0000007B0000007B0000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000007B7B00007B
      7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B
      7B00007B7B000000000000000000000000007B7B7B00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B0000000000000000000000
      00007B7B7B00000000000000000000000000000000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B00000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000007B7B00007B
      7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B
      7B00007B7B000000000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000007B7B7B00BDBDBD00BDBDBD007B7B
      7B00000000007B7B7B000000000000000000000000007B0000007B0000007B00
      00007B0000007B0000007B0000007B7B7B007B000000FFFFFF007B0000007B00
      00007B0000007B0000007B0000007B00000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000007B7B7B00BDBDBD00BDBDBD007B7B
      7B00000000007B7B7B0000000000000000000000000000000000007B7B00007B
      7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B
      7B00007B7B000000000000000000000000007B7B7B00FFFFFF0000FFFF000000
      0000FF000000FF000000000000007B7B7B00BDBDBD00BDBDBD00FFFF00007B7B
      7B007B7B7B00000000000000000000000000000000007B0000007B0000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B0000007B00000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000007B7B7B00BDBDBD00BDBDBD00FFFF00007B7B
      7B007B7B7B000000000000000000000000000000000000000000007B7B00007B
      7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B
      7B00007B7B000000000000000000000000007B7B7B00FFFFFF007B7B7B00FF00
      0000FF000000007B000000000000BDBDBD00FFFF0000BDBDBD00BDBDBD007B7B
      7B00BDBDBD00000000000000000000000000000000007B0000007B0000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B0000007B00000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B
      7B00BDBDBD000000000000000000000000000000000000000000007B7B00007B
      7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B
      7B00007B7B000000000000000000000000007B7B7B00FFFFFF007B7B7B00FF00
      0000007B0000007B000000000000FFFF0000FFFF0000FFFF0000BDBDBD007B7B
      7B00BDBDBD00000000000000000000000000000000007B0000007B0000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B0000007B00000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000BDBDBD00FFFF0000BDBDBD00BDBDBD007B7B
      7B00BDBDBD000000000000000000000000000000000000000000007B7B00007B
      7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B
      7B00007B7B000000000000000000000000007B7B7B00FFFFFF007B7B7B00FF00
      0000007B0000007B00007B7B7B007B7B7B00FFFF0000FFFF0000BDBDBD007B7B
      7B007B7B7B00000000000000000000000000000000007B0000007B0000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B0000007B00000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000007B7B7B00FFFF0000FFFF0000BDBDBD007B7B
      7B007B7B7B00000000000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B0000000000000000007B7B7B00FFFFFF007B7B7B00FF00
      0000FFFFFF007B7B0000007B0000000000007B7B7B00FFFF0000BDBDBD007B7B
      7B0000000000000000000000000000000000000000007B0000007B0000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B0000007B00000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000007B7B7B00BDBDBD00BDBDBD007B7B
      7B0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000007B0000007B7B7B00FFFFFF00FFFFFF007B7B
      7B00FF000000FFFFFF00FF000000007B00007B7B7B0000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B0000007B00000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B0000007B7B7B00FFFFFF0000FFFF00FFFF
      FF007B7B7B007B7B7B007B7B7B007B7B7B00FFFFFF00FFFFFF0000FFFF000000
      000000000000000000000000000000000000000000007B0000007B0000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B0000007B00000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B000000000000007B000000000000007B7B7B00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B7B
      7B007B7B7B007B7B7B007B7B7B007B000000000000007B000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B0000007B00000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B0000007B00000000000000000000007B7B7B00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00BDBDBD00BDBDBD007B7B7B000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      00007B0000007B0000007B0000000000000000000000000000007B0000007B00
      00007B0000007B0000007B0000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BDBDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B0000007B0000007B000000000000007B7B7B00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B0000000000000000000000
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
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000000000007B7B7B00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00FFFFFF00BDBDBD000000000000000000000000007B7B7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000FFFFFF0000000000FFFFFF0000000000000000007B7B7B00FFFF
      FF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF00BDBDBD000000000000000000000000007B7B7B00FFFFFF007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000007B
      7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B
      7B0000000000000000000000000000000000FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00BDBDBD00000000000000000000000000BDBDBD00FFFF
      FF00FFFFFF00BDBDBD000000000000000000000000007B7B7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      0000007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B
      7B00007B7B0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF007B0000007B0000007B0000007B0000007B0000007B000000FFFFFF000000
      000000000000FFFFFF0000000000FFFFFF0000000000000000007B7B7B00FFFF
      FF0000FFFF00BDBDBD007B000000FF0000007B0000007B00000000000000BDBD
      BD0000FFFF00BDBDBD000000000000000000000000007B7B7B00FFFFFF007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B00FFFFFF0000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000FFFFFF0000FF
      FF0000000000007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B
      7B00007B7B00007B7B000000000000000000FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF007B7B7B00FF000000FF000000007B0000FF0000007B0000007B00
      0000FFFFFF00BDBDBD000000000000000000000000007B7B7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BDBDBD0000000000000000000000000000FFFF00FFFF
      FF0000FFFF0000000000007B7B00007B7B00007B7B00007B7B00007B7B00007B
      7B00007B7B00007B7B00007B7B000000000000000000FFFFFF0000000000FFFF
      FF007B0000007B0000007B0000007B0000007B0000007B000000FFFFFF000000
      000000000000FFFFFF0000000000FFFFFF0000000000000000007B7B7B00FFFF
      FF0000FFFF007B7B0000BDBDBD007B7B7B00007B00007B7B0000FF0000007B00
      000000FFFF00BDBDBD000000000000000000000000007B7B7B00FFFFFF007B7B
      7B007B7B7B00FFFFFF00000000000000000000000000000000007B000000FFFF
      FF00FFFFFF00FFFFFF00BDBDBD00000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF007B7B0000FFFFFF00BDBDBD00007B00007B000000FF0000007B00
      0000FFFFFF00BDBDBD000000000000000000000000007B7B7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFFFF007B7B7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BDBDBD0000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF007B0000007B0000007B0000007B0000007B0000007B000000FFFFFF000000
      000000000000FFFFFF0000000000FFFFFF0000000000000000007B7B7B00FFFF
      FF0000FFFF007B7B0000BDBDBD007B7B0000FF0000007B7B0000007B00007B7B
      7B0000FFFF00BDBDBD000000000000000000000000007B7B7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B7B7B00FFFFFF007B7B7B007B0000007B000000FFFF
      FF0000007B0000007B00BDBDBD00000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      000000000000000000000000000000000000FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF00BDBDBD007B7B00007B7B7B007B7B0000007B00007B7B0000BDBD
      BD00FFFFFF00BDBDBD000000000000000000000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000007B0000007B00BDBDBD0000000000000000000000000000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B0000007B0000007B000000FFFFFF000000
      000000000000FFFFFF0000000000FFFFFF0000000000000000007B7B7B00FFFF
      FF0000FFFF00FFFFFF00BDBDBD007B7B00007B7B00007B7B0000BDBDBD00FFFF
      FF0000FFFF00BDBDBD0000000000000000000000000000000000000000000000
      00007B7B7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FFFFFF000000000000000000000000007B7B7B00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000000000007B7B7B00FFFF
      FF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF007B7B7B0000000000000000000000000000000000000000000000
      000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B00000000000000000000007B7B7B00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00BDBD
      BD007B7B7B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B0000007B0000007B0000007B00
      00007B0000007B0000007B0000007B0000007B0000007B0000007B0000007B00
      00007B000000FFFFFF007B000000FFFFFF0000000000000000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007B7B00007B
      7B0000000000000000000000000000000000BDBDBD0000000000007B7B000000
      0000000000000000000000000000000000000000000000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
      0000BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007B7B00007B
      7B0000000000000000000000000000000000BDBDBD0000000000007B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000007B7B00007B
      7B00000000000000000000000000000000000000000000000000007B7B000000
      0000007B7B0000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD0000FFFF0000FFFF0000FFFF00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF000000FF00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD007B7B7B00000000000000000000000000007B7B00007B
      7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B000000
      0000007B7B0000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD007B7B7B007B7B7B007B7B7B00BDBDBD00BDBD
      BD0000000000BDBDBD0000000000000000000000000000000000BDBDBD00FFFF
      FF00BDBDBD00FFFFFF00BDBDBD000000000000000000FFFFFF00BDBDBD00FFFF
      FF00BDBDBD00FFFFFF00000000000000000000000000FFFFFF00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD00BDBDBD007B7B7B00000000000000000000000000007B7B00007B
      7B000000000000000000000000000000000000000000007B7B00007B7B000000
      0000007B7B0000000000007B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD00BDBDBD000000000000000000BDBDBD00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD00FFFFFF000000000000000000FFFFFF00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD007B7B7B00000000000000000000000000007B7B000000
      0000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000007B7B000000
      0000007B7B0000000000007B7B000000000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
      0000BDBDBD0000000000BDBDBD000000000000000000FFFFFF00000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      00007B7B7B0000000000BDBDBD000000000000000000FFFFFF00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD00BDBDBD007B7B7B00000000000000000000000000007B7B000000
      0000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000007B7B000000
      0000007B7B0000000000007B7B00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD0000000000BDBDBD00000000000000000000000000BDBDBD00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD00FFFFFF000000000000000000FFFFFF00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD007B7B7B00000000000000000000000000007B7B000000
      0000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000000000000000
      0000007B7B0000000000007B7B0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000BDBDBD0000000000BDBDBD00000000000000000000000000BDBDBD00FFFF
      FF00BDBDBD00FFFFFF00BDBDBD000000000000000000FFFFFF00BDBDBD00FFFF
      FF00BDBDBD00FFFFFF00000000000000000000000000FFFFFF00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD007B7B7B00000000000000000000000000007B7B000000
      0000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000BDBDBD000000
      0000007B7B0000000000007B7B00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000007B7B00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000007B7B0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
      0000BDBDBD0000000000007B7B00000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000007B7B0000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD0000000000BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6000000
      0000C6C6C6000000000000000000C6C6C6000000000000000000000000000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B7B7B007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      0000C6C6C60000000000C6C6C600000000000000000000000000FFFF00000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      00007B7B7B0000000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00000000007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C60000000000C6C6
      C6000000000000000000C6C6C60000000000C6C6C60000000000FFFF00008484
      000000000000C6C6C60000000000000000000000000000000000000000000000
      000000007B000000FF000000FF000000FF000000FF000000FF0000007B000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000000000FFFF00008484
      0000848400000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000007B7B7B000000
      00000000000000000000BDBDBD00BDBDBD00BDBDBD0000000000000000000000
      000000000000000000007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C6000000000000000000FFFF00008484
      00008484000000000000C6C6C6000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF00000000000000000000000000000000007B7B7B0000000000BDBD
      BD007B7B7B000000000000000000BDBDBD00BDBDBD00000000007B7B7B00BDBD
      BD0000000000000000007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60084848400848484008484840000000000FFFF00008484
      00008484000000000000C6C6C600000000007B7B7B0000007B000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF0000007B007B7B7B000000000000000000000000007B7B7B00BDBD
      BD007B7B7B00BDBDBD00BDBDBD007B7B7B0000000000BDBDBD007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840000000000FFFF00008484
      00008484000000000000C6C6C60000000000000000000000FF000000FF000000
      FF00FFFFFF00FFFFFF000000FF000000FF000000FF00FFFFFF00FFFFFF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000BDBDBD00BDBDBD0000000000FFFFFF00FFFFFF0000000000BDBDBD000000
      00000000000000000000000000007B7B7B000000000000000000BDBDBD00FFFF
      FF00BDBDBD00FFFFFF0000000000000000000000000000000000BDBDBD00FFFF
      FF00BDBDBD00FFFFFF0000000000000000000000000000000000C6C6C600C6C6
      C600000000008484000000000000848484008484840000000000FFFF00008484
      84008484000000000000C6C6C60000000000000000000000FF000000FF000000
      FF000000FF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF0000000000000000007B7B7B0000000000BDBDBD000000
      0000BDBDBD0000000000BDBDBD00BDBDBD00BDBDBD00FFFFFF007B7B7B000000
      0000BDBDBD00BDBDBD00000000007B7B7B0000000000BDBDBD00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD00FFFFFF00000000000000000000000000000000000000
      000000000000FFFF000084840000000000008484840000000000FFFF00000000
      00008484000000000000C6C6C60000000000000000000000FF000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
      FF000000FF000000FF0000000000000000007B7B7B0000000000BDBDBD00BDBD
      BD00FFFFFF00000000007B7B7B0000000000BDBDBD00FFFFFF007B7B7B00BDBD
      BD00BDBDBD00BDBDBD00000000007B7B7B0000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000848400000000000000000000FFFF00008484
      00008484000000000000C6C6C60000000000000000000000FF000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
      FF000000FF000000FF0000000000000000007B7B7B0000000000000000000000
      0000FFFFFF00000000007B7B7B007B7B7B00BDBDBD0000000000BDBDBD000000
      00000000000000000000000000000000000000000000BDBDBD00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD00FFFFFF000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000848400008484840000000000FFFF00008484
      00008484000000000000C6C6C60000000000000000000000FF000000FF000000
      FF000000FF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000BDBDBD00FFFFFF00000000000000000000000000BDBDBD00BDBDBD000000
      0000000000007B7B7B0000000000000000000000000000000000BDBDBD00FFFF
      FF00BDBDBD00FFFFFF0000000000000000000000000000000000BDBDBD00FFFF
      FF00BDBDBD00FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFF000084840000848484008484840000000000FFFF00008484
      00008484000000000000C6C6C600000000007B7B7B0000007B000000FF000000
      FF00FFFFFF00FFFFFF000000FF000000FF000000FF00FFFFFF00FFFFFF000000
      FF000000FF0000007B007B7B7B000000000000000000000000007B7B7B00BDBD
      BD007B7B7B00BDBDBD00FFFFFF00FFFFFF00BDBDBD00BDBDBD007B7B7B007B7B
      7B007B7B7B00000000007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484000084848400848484008484840000000000FFFF00008484
      00008484000000000000C6C6C6000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF00000000000000000000000000000000007B7B7B0000000000BDBD
      BD007B7B7B000000000000000000BDBDBD000000000000000000BDBDBD00BDBD
      BD00000000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008484840084848400848484008484840000000000FFFF
      00008484000000000000C6C6C600000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000007B7B7B000000
      00007B7B7B0000000000BDBDBD00BDBDBD00BDBDBD00000000007B7B7B000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840084848400848484000000
      0000FFFF000000000000C6C6C600000000000000000000000000000000000000
      000000007B000000FF000000FF000000FF000000FF000000FF0000007B000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B0000000000000000000000000000000000000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B0000000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B7B7B007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
  object ds: TwwDataSource
    DataSet = wwT
    Left = 516
    Top = 27
  end
  object wwT: TwwTable
    Active = True
    BeforePost = wwTBeforePost
    DatabaseName = 'kulture'
    IndexName = 'ixUpisnik'
    MasterFields = 'Sifra_zahtjeva'
    MasterSource = dsQmaster
    TableName = 'Upisnik_detail'
    PictureMasks.Strings = (
      'Upisni_broj'#9'######'#9'T'#9'T')
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 548
    Top = 27
    object wwTSifra_detail: TAutoIncField
      FieldName = 'Sifra_detail'
      ReadOnly = True
    end
    object wwTJedinstvena_oznaka: TStringField
      FieldName = 'Jedinstvena_oznaka'
    end
    object wwTPredaja_zahtjeva: TDateTimeField
      FieldName = 'Predaja_zahtjeva'
      DisplayFormat = 'd.m.yyyy hh:mm'
    end
    object wwTPrimljen_zahtjev: TDateTimeField
      FieldName = 'Primljen_zahtjev'
      DisplayFormat = 'd.m.yyyy hh:mm'
    end
    object wwTBroj_objave: TStringField
      DisplayLabel = 'Broj objave u glasilu'
      FieldName = 'Broj_objave'
      Size = 10
    end
    object wwTDatum_objave: TDateField
      FieldName = 'Datum_objave'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object wwTPromjene_zahtjeva_ZS: TMemoField
      FieldName = 'Promjene_zahtjeva_ZS'
      BlobType = ftMemo
      Size = 50
    end
    object wwTDatum_zaklj_obust: TDateField
      FieldName = 'Datum_zaklj_obust'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object wwTDatum_rje_zast: TDateField
      FieldName = 'Datum_rje_zast'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object wwTDatum_rje_odbi: TDateField
      FieldName = 'Datum_rje_odbi'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object wwTSud_predaja_zaht: TMemoField
      FieldName = 'Sud_predaja_zaht'
      BlobType = ftMemo
      Size = 50
    end
    object wwTlook_NositeljOP: TStringField
      FieldKind = fkLookup
      FieldName = 'look_NositeljOP'
      LookupDataSet = tPartner3
      LookupKeyFields = 'Sifra_partnera'
      LookupResultField = 'Ime_partnera'
      KeyFields = 'Sifra_nositelja_OP'
      Size = 30
      Lookup = True
    end
    object wwTlook_NositOPAdresa: TStringField
      FieldKind = fkLookup
      FieldName = 'look_NositOPAdresa'
      LookupDataSet = tPartner3
      LookupKeyFields = 'Sifra_partnera'
      LookupResultField = 'Adresa'
      KeyFields = 'Sifra_nositelja_OP'
      Size = 30
      Lookup = True
    end
    object wwTlook_NositOPMjesto: TStringField
      FieldKind = fkLookup
      FieldName = 'look_NositOPMjesto'
      LookupDataSet = tPartner3
      LookupKeyFields = 'Sifra_partnera'
      LookupResultField = 'Mjesto'
      KeyFields = 'Sifra_nositelja_OP'
      Lookup = True
    end
    object wwTlook_2Osoba: TStringField
      FieldKind = fkLookup
      FieldName = 'look_2Osoba'
      LookupDataSet = tPartner5
      LookupKeyFields = 'Sifra_partnera'
      LookupResultField = 'Ime_partnera'
      KeyFields = 'Sifra_2osoba_prenos'
      Size = 30
      Lookup = True
    end
    object wwTlook_2OsobaAdresa: TStringField
      FieldKind = fkLookup
      FieldName = 'look_2OsobaAdresa'
      LookupDataSet = tPartner5
      LookupKeyFields = 'Sifra_partnera'
      LookupResultField = 'Adresa'
      KeyFields = 'Sifra_2osoba_prenos'
      Size = 30
      Lookup = True
    end
    object wwTlook_2OsobaMjesto: TStringField
      FieldKind = fkLookup
      FieldName = 'look_2OsobaMjesto'
      LookupDataSet = tPartner5
      LookupKeyFields = 'Sifra_partnera'
      LookupResultField = 'Mjesto'
      KeyFields = 'Sifra_2osoba_prenos'
      Lookup = True
    end
    object wwTVrstaUgovoraPP: TStringField
      FieldName = 'VrstaUgovoraPP'
      Size = 30
    end
    object wwTlook_2osobaUstup: TStringField
      FieldKind = fkLookup
      FieldName = 'look_2osobaUstup'
      LookupDataSet = tPartner6
      LookupKeyFields = 'Sifra_partnera'
      LookupResultField = 'Ime_partnera'
      KeyFields = 'Sifra_2osoba_ustup'
      Size = 30
      Lookup = True
    end
    object wwTlook_2oUstupAdresa: TStringField
      FieldKind = fkLookup
      FieldName = 'look_2oUstupAdresa'
      LookupDataSet = tPartner6
      LookupKeyFields = 'Sifra_partnera'
      LookupResultField = 'Mjesto'
      KeyFields = 'Sifra_2osoba_ustup'
      Size = 30
      Lookup = True
    end
    object wwTlook_2oUstupMjesto: TStringField
      FieldKind = fkLookup
      FieldName = 'look_2oUstupMjesto'
      LookupDataSet = tPartner6
      LookupKeyFields = 'Sifra_partnera'
      LookupResultField = 'Mjesto'
      KeyFields = 'Sifra_2osoba_ustup'
      Lookup = True
    end
    object wwTNaknada_ustup_OP: TCurrencyField
      FieldName = 'Naknada_ustup_OP'
    end
    object wwTlook_ImeLicence: TStringField
      FieldKind = fkLookup
      FieldName = 'look_ImeLicence'
      LookupDataSet = tLicencije
      LookupKeyFields = 'Sifra_licencije'
      LookupResultField = 'look_ImePartnera'
      KeyFields = 'Sifra_licencije'
      Size = 30
      Lookup = True
    end
    object wwTBroj_rje_SOP: TStringField
      FieldName = 'Broj_rje_SOP'
      Size = 10
    end
    object wwTDatum_rje_SOP: TDateField
      FieldName = 'Datum_rje_SOP'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object wwTBroj_ispr_SOP: TStringField
      FieldName = 'Broj_ispr_SOP'
      Size = 10
    end
    object wwTDatum_ispr_SOP: TDateField
      FieldName = 'Datum_ispr_SOP'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object wwTDatum_prest_zast: TDateField
      FieldName = 'Datum_prest_zast'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object wwTBroj_ukidanja_SOP: TStringField
      FieldName = 'Broj_ukidanja_SOP'
      Size = 10
    end
    object wwTDatum_ukidanja_SOP: TDateField
      FieldName = 'Datum_ukidanja_SOP'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object wwTSud_OP: TMemoField
      FieldName = 'Sud_OP'
      BlobType = ftMemo
      Size = 50
    end
    object wwTPromjene_upisnika_OP: TMemoField
      FieldName = 'Promjene_upisnika_OP'
      BlobType = ftMemo
      Size = 50
    end
    object wwTDjelomicno_OP: TStringField
      FieldName = 'Djelomicno_OP'
    end
    object wwTUpotpunosti_OP: TStringField
      FieldName = 'Upotpunosti_OP'
    end
    object wwTBroj_ugovora_POP: TStringField
      FieldName = 'Broj_ugovora_POP'
      Size = 10
    end
    object wwTDatum_ugovora_POP: TDateField
      FieldName = 'Datum_ugovora_POP'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object wwTSadrzaj_POP: TStringField
      DisplayLabel = 'Sadr'#382'aj prenesenog prava'
      FieldName = 'Sadrzaj_POP'
      Size = 50
    end
    object wwTBroj_ugovora_POP3: TStringField
      FieldName = 'Broj_ugovora_POP3'
      Size = 10
    end
    object wwTDatum_ugovora_POP3: TDateField
      FieldName = 'Datum_ugovora_POP3'
    end
    object wwTSifra_upisnika: TIntegerField
      FieldName = 'Sifra_upisnika'
    end
    object wwTSifra_nositelja_OP: TIntegerField
      FieldName = 'Sifra_nositelja_OP'
    end
    object wwTSifra_2osoba_prenos: TIntegerField
      FieldName = 'Sifra_2osoba_prenos'
    end
    object wwTSifra_2osoba_ustup: TIntegerField
      FieldName = 'Sifra_2osoba_ustup'
    end
    object wwTSifra_licencije: TIntegerField
      FieldName = 'Sifra_licencije'
    end
  end
  object dsQmaster: TDataSource
    DataSet = qUpisnik_master
    Left = 600
    Top = 24
  end
  object qUpisnik_master: TQuery
    Active = True
    DatabaseName = 'kulture'
    SQL.Strings = (
      
        'SELECT   (CAST( Zahtjev_Pravo.sifra_dok AS CHAR(2) ) + '#39' '#39')  + Z' +
        'ahtjev_Pravo.Upisni_broj  Upisni_broj, '
      
        'Zahtjev_Pravo.Datum_prijavljivanja, PB.Ime_sorte, Vrsta.Vrsta_hr' +
        'v, '
      'Partner.Ime_partnera, Zahtjev_Pravo.Sifra_zahtjeva, '
      'PB.Oznaka_sorte, Upisnik_detail.Sifra_upisnika'
      'FROM Zahtjev_Pravo'
      '   LEFT OUTER JOIN Priznanje_PB PB'
      '   ON  (Zahtjev_Pravo.Sifra_ZPriznavanja = PB.Sifra_zahtjeva)  '
      '   LEFT OUTER JOIN Partner'
      
        '   ON  (Zahtjev_Pravo.Sifra_podnositelja = Partner.Sifra_partner' +
        'a)  '
      '   LEFT OUTER JOIN Upisnik_detail'
      
        '   ON  (Upisnik_detail.Sifra_upisnika = Zahtjev_Pravo.Sifra_zaht' +
        'jeva)  '
      '   LEFT OUTER JOIN Vrsta'
      '   ON  (PB.Sifra_vrste = Vrsta.Sifra_vrste)  ')
    Left = 632
    Top = 24
    object qUpisnik_masterUpisni_broj: TStringField
      DisplayLabel = 'Upisni broj'
      FieldName = 'Upisni_broj'
      Size = 9
    end
    object qUpisnik_masterDatum_prijavljivanja: TDateTimeField
      DisplayLabel = 'Datum prijavljivanja'
      FieldName = 'Datum_prijavljivanja'
    end
    object qUpisnik_masterIme_sorte: TStringField
      DisplayLabel = 'Ime sorte'
      FieldName = 'Ime_sorte'
      Size = 30
    end
    object qUpisnik_masterIme_partnera: TStringField
      DisplayLabel = 'Ime podnositelja'
      FieldName = 'Ime_partnera'
      Size = 30
    end
    object qUpisnik_masterVrsta_hrv: TStringField
      DisplayLabel = 'Hrvatski naziv vrste'
      FieldName = 'Vrsta_hrv'
      Size = 30
    end
    object qUpisnik_masterSifra_zahtjeva: TIntegerField
      DisplayLabel = #352'ifra'
      FieldName = 'Sifra_zahtjeva'
      Visible = False
    end
    object qUpisnik_masterOznaka_sorte: TStringField
      DisplayLabel = 'Oznaka sorte'
      FieldName = 'Oznaka_sorte'
      Size = 30
    end
    object qUpisnik_masterSifra_upisnika: TIntegerField
      FieldName = 'Sifra_upisnika'
    end
  end
  object tZahtPravo: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'Sifra_zahtjeva'
    MasterFields = 'Sifra_upisnika'
    MasterSource = ds
    TableName = 'Zahtjev_Pravo'
    Left = 356
    Top = 119
    object tZahtPravoSifra_zahtjeva: TAutoIncField
      FieldName = 'Sifra_zahtjeva'
      ReadOnly = True
    end
    object tZahtPravoSifra_dok: TIntegerField
      FieldName = 'Sifra_dok'
      Visible = False
    end
    object tZahtPravoUpisni_broj: TStringField
      FieldName = 'Upisni_broj'
      Size = 6
    end
    object tZahtPravoDatum_prijavljivanja: TDateTimeField
      FieldName = 'Datum_prijavljivanja'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object tZahtPravolook_Podnositelj: TStringField
      FieldKind = fkLookup
      FieldName = 'look_Podnositelj'
      LookupDataSet = tPartner1
      LookupKeyFields = 'Sifra_partnera'
      LookupResultField = 'Ime_partnera'
      KeyFields = 'Sifra_podnositelja'
      Size = 30
      Lookup = True
    end
    object tZahtPravolook_PodnositeljAdresa: TStringField
      FieldKind = fkLookup
      FieldName = 'look_PodnositeljAdresa'
      LookupDataSet = tPartner1
      LookupKeyFields = 'Sifra_partnera'
      LookupResultField = 'Adresa'
      KeyFields = 'Sifra_podnositelja'
      Lookup = True
    end
    object tZahtPravolook_PodnositeljMjesto: TStringField
      FieldKind = fkLookup
      FieldName = 'look_PodnosteljMjesto'
      LookupDataSet = tPartner1
      LookupKeyFields = 'Sifra_partnera'
      LookupResultField = 'Mjesto'
      KeyFields = 'Sifra_podnositelja'
      Lookup = True
    end
    object tZahtPravolook_Oplemenjivac: TStringField
      FieldKind = fkLookup
      FieldName = 'look_Oplemenjivac'
      LookupDataSet = tPartner2
      LookupKeyFields = 'Sifra_partnera'
      LookupResultField = 'Ime_partnera'
      KeyFields = 'Sifra_oplemenjivaca'
      Size = 30
      Lookup = True
    end
    object tZahtPravolook_OplemenjAdresa: TStringField
      FieldKind = fkLookup
      FieldName = 'look_OplemenjAdresa'
      LookupDataSet = tPartner2
      LookupKeyFields = 'Sifra_partnera'
      LookupResultField = 'Adresa'
      KeyFields = 'Sifra_oplemenjivaca'
      Lookup = True
    end
    object tZahtPravoIme_zastupnika: TStringField
      FieldName = 'Ime_zastupnika'
      Size = 50
    end
    object tZahtPravoAdresa_zastupnika: TStringField
      FieldName = 'Adresa_zastupnika'
      Size = 50
    end
    object tZahtPravoMjesto_zastupnika: TStringField
      FieldName = 'Mjesto_zastupnika'
      Size = 50
    end
    object tZahtPravoMaticna_zemlja: TStringField
      FieldName = 'Maticna_zemlja'
      Size = 30
    end
    object tZahtPravoKoristena_prodavana: TBooleanField
      FieldName = 'Koristena_prodavana'
    end
    object tZahtPravoKoja_zemlja: TStringField
      FieldName = 'Koja_zemlja'
      Size = 30
    end
    object tZahtPravoDatum_kor_prod: TDateField
      FieldName = 'Datum_kor_prod'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object tZahtPravoKoji_uvjeti: TStringField
      FieldName = 'Koji_uvjeti'
      Size = 50
    end
    object tZahtPravoPodnositeljev_pristanak: TBooleanField
      FieldName = 'Podnositeljev_pristanak'
    end
    object tZahtPravoPravo_za_zahtjev: TBooleanField
      FieldName = 'Pravo_za_zahtjev'
    end
    object tZahtPravoKoji_zahtjev: TStringField
      FieldName = 'Koji_zahtjev'
      Size = 30
    end
    object tZahtPravoDokumenti: TStringField
      FieldName = 'Dokumenti'
      Size = 100
    end
    object tZahtPravoDatum_promjene: TDateTimeField
      FieldName = 'Datum_promjene'
    end
    object tZahtPravolook_OplemenjMjesto: TStringField
      FieldKind = fkLookup
      FieldName = 'look_OplemenjMjesto'
      LookupDataSet = tPartner2
      LookupKeyFields = 'Sifra_partnera'
      LookupResultField = 'Mjesto'
      KeyFields = 'Sifra_oplemenjivaca'
      Lookup = True
    end
    object tZahtPravoSifra_podnositelja: TIntegerField
      FieldName = 'Sifra_podnositelja'
      Visible = False
    end
    object tZahtPravoSifra_oplemenjivaca: TIntegerField
      FieldName = 'Sifra_oplemenjivaca'
      Visible = False
    end
    object tZahtPravoSifra_ZPriznavanja: TIntegerField
      FieldName = 'Sifra_ZPriznavanja'
      Visible = False
    end
    object tZahtPravoSifra_druga_zemlja: TIntegerField
      FieldName = 'Sifra_druga_zemlja'
      Visible = False
    end
  end
  object dsZPravo: TDataSource
    DataSet = tZahtPravo
    Left = 324
    Top = 119
  end
  object tPartner1: TTable
    Active = True
    DatabaseName = 'kulture'
    TableName = 'Partner.DB'
    Left = 684
    Top = 271
  end
  object dsPartner1: TDataSource
    DataSet = tPartner1
    Left = 652
    Top = 271
  end
  object tPartner2: TTable
    Active = True
    DatabaseName = 'kulture'
    TableName = 'Partner.DB'
    Left = 684
    Top = 303
  end
  object dsPartner2: TDataSource
    DataSet = tPartner2
    Left = 652
    Top = 303
  end
  object tPartner3: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'Sifra_partnera'
    TableName = 'Partner.DB'
    Left = 684
    Top = 331
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
      Visible = False
    end
  end
  object dsPartner3: TDataSource
    DataSet = tPartner3
    Left = 656
    Top = 331
  end
  object tLicencije: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexName = 'ix_Sifra_sorte'
    MasterFields = 'Sifra_ZPriznavanja'
    MasterSource = dsZPravo
    TableName = 'Licencija.DB'
    Left = 644
    Top = 415
    object tLicencijelook_ImePartnera: TStringField
      DisplayLabel = 'Ime partnera'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'look_ImePartnera'
      LookupDataSet = tPartner4
      LookupKeyFields = 'Sifra_partnera'
      LookupResultField = 'Ime_partnera'
      KeyFields = 'Sifra_partnera'
      Size = 30
      Lookup = True
    end
    object tLicencijelook_AdresaPartnera: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'look_AdresaPartnera'
      LookupDataSet = tPartner4
      LookupKeyFields = 'Sifra_partnera'
      LookupResultField = 'Adresa'
      KeyFields = 'Sifra_partnera'
      Lookup = True
    end
    object tLicencijelook_MjestoPartnera: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'look_MjestoPartnera'
      LookupDataSet = tPartner4
      LookupKeyFields = 'Sifra_partnera'
      LookupResultField = 'Mjesto'
      KeyFields = 'Sifra_partnera'
      Lookup = True
    end
    object tLicencijeSifra_licencije: TAutoIncField
      FieldName = 'Sifra_licencije'
      ReadOnly = True
      Visible = False
    end
    object tLicencijeUvjeti_dodjele: TStringField
      DisplayWidth = 30
      FieldName = 'Uvjeti_dodjele'
      Visible = False
      Size = 30
    end
    object tLicencijeBroj_ugovora: TStringField
      DisplayWidth = 15
      FieldName = 'Broj_ugovora'
      Visible = False
      Size = 15
    end
    object tLicencijeDatum_ugovora: TDateField
      DisplayWidth = 10
      FieldName = 'Datum_ugovora'
      Visible = False
    end
    object tLicencijeDatum_prestanka: TDateField
      DisplayWidth = 10
      FieldName = 'Datum_prestanka'
      Visible = False
    end
    object tLicencijeTrajanje_licencije: TStringField
      DisplayWidth = 20
      FieldName = 'Trajanje_licencije'
      Visible = False
    end
    object tLicencijeOpseg_licencije: TStringField
      DisplayWidth = 40
      FieldName = 'Opseg_licencije'
      Visible = False
      Size = 40
    end
    object tLicencijeDatum_promjene: TDateTimeField
      FieldName = 'Datum_promjene'
      Visible = False
    end
    object tLicencijeSifra_partnera: TIntegerField
      FieldName = 'Sifra_partnera'
      Visible = False
    end
    object tLicencijeSifra_sorte: TIntegerField
      DisplayLabel = #352'ifra sorte'
      FieldName = 'Sifra_sorte'
      Visible = False
    end
  end
  object dsLicencija: TDataSource
    DataSet = tLicencije
    Left = 612
    Top = 415
  end
  object tPartner4: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'Sifra_partnera'
    TableName = 'Partner.DB'
    Left = 580
    Top = 415
  end
  object dsPartner4: TDataSource
    DataSet = tPartner4
    Left = 548
    Top = 415
  end
  object qUpisnikPrint: TQuery
    DatabaseName = 'kulture'
    DataSource = ds
    SQL.Strings = (
      
        'SELECT (CAST(ZP.sifra_dok AS CHAR(2))+'#39' '#39')+ZP.Upisni_broj Upisni' +
        '_broj, U.jedinstvena_oznaka, '
      
        'CAST(U.predaja_zahtjeva AS DATE) DPredaje, CAST(U.predaja_zahtje' +
        'va AS TIME) VPredaje, '
      
        'CAST(U.primljen_zahtjev AS DATE) DPrimljen, CAST(U.primljen_zaht' +
        'jev AS TIME) VPrimljen,'
      
        'U.datum_objave, U.broj_objave, U.broj_rje_SOP, U.datum_rje_SOP, ' +
        'U.broj_ispr_SOP, U.datum_ispr_SOP,'
      
        'ZP.Datum_prijavljivanja, ZP.Ime_zastupnika, ZP.Adresa_zastupnika' +
        ','
      
        'U.Promjene_zahtjeva_ZS, U.datum_prest_zast, U.broj_ukidanja_SOP,' +
        ' U.datum_ukidanja_SOP,'
      
        'U.datum_zaklj_obust DZO, U.datum_rje_zast DRZ, U.datum_rje_odbi ' +
        'DRO, '
      
        'U.sud_predaja_zaht SudPZ, U.sud_OP, U.naknada_ustup_OP, U.Djelom' +
        'icno_OP, U.Upotpunosti_OP, '
      'U.Broj_ugovora_POP, U.Datum_ugovora_POP, U.Sadrzaj_POP,'
      
        'U.Broj_ugovora_POP3, U.Datum_ugovora_POP3, V.Vrsta_hrv,  V.Vrsta' +
        '_lat, '
      
        'L.uvjeti_dodjele, L.broj_ugovora, L.datum_ugovora, L.datum_prest' +
        'anka, L.trajanje_licencije, L.opseg_licencije,'
      
        'P4.Ime_partnera ImeLicence, P4.Adresa AdresaLicence, P4.Mjesto M' +
        'jestoLicence,'
      
        'P5.Ime_partnera ImePrenosa, P5.Adresa AdresaPrenosa, P5.Mjesto M' +
        'jestoPrenosa,'
      
        'P6.Ime_partnera ImeUstupa, P6.Adresa AdresaUstupa, P6.Mjesto Mje' +
        'stoUstupa,'
      
        'P1.Ime_partnera ImePodnositelja, P1.Adresa AdresaPodnositelja, P' +
        '1.Mjesto MjestoPodnositelja,'
      
        'P2.Ime_partnera ImeOplemenjivac, P2.Adresa AdresaOplemenjivac, P' +
        '2.Mjesto MjestoOplemenjivac,'
      
        'P3.Ime_partnera ImeNositelja, P3.Adresa AdresaNositelja, P3.Mjes' +
        'to MjestoNositelja,'
      'PB.Oznaka_sorte, PB.ime_sorte, PB.sastojci, PB.opis,'
      
        'P7.Ime_partnera ImeZastupnika, P7.Adresa AdresaZastupnika, P7.Mj' +
        'esto MjestoZastupnika,'
      'z.predmet_zastupanja, z.sadrzaj_zastupanja'
      'FROM "Zahtjev_Pravo.DB" ZP'
      '   LEFT OUTER JOIN "Priznanje_PB.DB" PB'
      '   ON  (ZP.Sifra_ZPriznavanja = PB.Sifra_zahtjeva)  '
      '   LEFT OUTER JOIN "Partner.DB" p1'
      '   ON  (ZP.Sifra_podnositelja = P1.Sifra_partnera)  '
      '   LEFT OUTER JOIN "Partner.DB" p2'
      '   ON  (ZP.Sifra_oplemenjivaca = P2.Sifra_partnera)  '
      '   LEFT OUTER JOIN "Upisnik_detail.DB" U'
      '   ON  (U.Sifra_upisnika = ZP.Sifra_zahtjeva)  '
      '   LEFT OUTER JOIN "Partner.DB" p3'
      '   ON  (U.Sifra_nositelja_OP = P3.Sifra_partnera)  '
      '   LEFT OUTER JOIN "Vrsta.DB" V'
      '   ON  (PB.Sifra_vrste = V.Sifra_vrste)  '
      '   LEFT OUTER JOIN "Licencija.DB" L'
      '   ON  (U.Sifra_licencije = L.Sifra_licencije)'
      '   LEFT OUTER JOIN "Partner.DB" p4'
      '   ON  (L.Sifra_partnera = p4.Sifra_partnera)'
      '   LEFT OUTER JOIN "Partner.DB" p5'
      '   ON  (U.Sifra_2osoba_Prenos = p5.Sifra_partnera)'
      '   LEFT OUTER JOIN "Partner.DB" p6'
      '   ON  (U.Sifra_2osoba_Ustup = p6.Sifra_partnera)'
      '   LEFT OUTER JOIN "Zastupnik.DB" z'
      '   ON  (ZP.Sifra_zahtjeva = z.Sifra_upisnika)'
      '   LEFT OUTER JOIN "Partner.DB" p7'
      '   ON  (z.Sifra_partnera = p7.Sifra_partnera)'
      'WHERE u.sifra_upisnika=:sifra_upisnika')
    Left = 356
    Top = 63
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Sifra_upisnika'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object FRdsUpisnik: TfrDBDataSet
    CloseDataSource = True
    DataSet = qUpisnikPrint
    Left = 389
    Top = 64
  end
  object tPartner5: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'Sifra_partnera'
    TableName = 'Partner.DB'
    Left = 644
    Top = 455
    object tPartner5Ime_partnera: TStringField
      DisplayLabel = 'Ime partnera'
      DisplayWidth = 60
      FieldName = 'Ime_partnera'
      Size = 60
    end
    object tPartner5Adresa: TStringField
      DisplayWidth = 60
      FieldName = 'Adresa'
      Size = 60
    end
    object tPartner5Mjesto: TStringField
      DisplayWidth = 25
      FieldName = 'Mjesto'
      Size = 25
    end
    object tPartner5Sifra_partnera: TAutoIncField
      FieldName = 'Sifra_partnera'
      ReadOnly = True
      Visible = False
    end
    object tPartner5Drzava: TStringField
      FieldName = 'Drzava'
      Visible = False
      Size = 15
    end
  end
  object dsPartner5: TDataSource
    DataSet = tPartner5
    Left = 612
    Top = 455
  end
  object tPartner6: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'Sifra_partnera'
    TableName = 'Partner.DB'
    Left = 644
    Top = 487
    object StringField1: TStringField
      DisplayLabel = 'Ime partnera'
      DisplayWidth = 60
      FieldName = 'Ime_partnera'
      Size = 60
    end
    object StringField2: TStringField
      DisplayWidth = 60
      FieldName = 'Adresa'
      Size = 60
    end
    object StringField3: TStringField
      DisplayWidth = 25
      FieldName = 'Mjesto'
      Visible = False
      Size = 25
    end
    object AutoIncField1: TAutoIncField
      FieldName = 'Sifra_partnera'
      ReadOnly = True
      Visible = False
    end
    object StringField4: TStringField
      FieldName = 'Drzava'
      Visible = False
      Size = 15
    end
  end
  object dsPartner6: TDataSource
    DataSet = tPartner6
    Left = 612
    Top = 487
  end
  object PopupMenu1: TPopupMenu
    Left = 284
    Top = 119
    object Printanje1: TMenuItem
      Tag = 1
      Caption = 'Printanje'
      OnClick = PrintClick
    end
    object Dizajn1: TMenuItem
      Tag = 11
      Caption = 'Dizajn'
      OnClick = PrintClick
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 284
    Top = 151
    object MenuItem1: TMenuItem
      Tag = 2
      Caption = 'Printanje'
      OnClick = PrintClick
    end
    object MenuItem2: TMenuItem
      Tag = 12
      Caption = 'Dizajn'
      OnClick = PrintClick
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 252
    Top = 151
    object MenuItem3: TMenuItem
      Tag = 3
      Caption = 'Printanje'
      OnClick = PrintClick
    end
    object MenuItem4: TMenuItem
      Tag = 13
      Caption = 'Dizajn'
      OnClick = PrintClick
    end
  end
  object PopupMenu4: TPopupMenu
    Left = 252
    Top = 119
    object MenuItem5: TMenuItem
      Tag = 4
      Caption = 'Printanje'
      OnClick = PrintClick
    end
    object MenuItem6: TMenuItem
      Tag = 14
      Caption = 'Dizajn'
      OnClick = PrintClick
    end
  end
  object tZastupnik: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexName = 'ixSifraUpisnika'
    MasterFields = 'Sifra_upisnika'
    MasterSource = ds
    TableName = 'Zastupnik'
    Left = 464
    Top = 312
    object tZastupnikSifra_zastupnika: TAutoIncField
      FieldName = 'Sifra_zastupnika'
      ReadOnly = True
    end
    object tZastupnikSifra_partnera: TIntegerField
      FieldName = 'Sifra_partnera'
    end
    object tZastupnikSifra_upisnika: TIntegerField
      FieldName = 'Sifra_upisnika'
    end
    object tZastupnikPredmet_zastupanja: TStringField
      FieldName = 'Predmet_zastupanja'
      Size = 60
    end
    object tZastupnikSadrzaj_zastupanja: TStringField
      FieldName = 'Sadrzaj_zastupanja'
      Size = 60
    end
    object tZastupnikPromjene_upisa: TStringField
      FieldName = 'Promjene_upisa'
      Size = 60
    end
    object tZastupniklookImeZastupnika: TStringField
      FieldKind = fkLookup
      FieldName = 'lookImeZastupnika'
      LookupDataSet = tPartner7
      LookupKeyFields = 'Sifra_partnera'
      LookupResultField = 'Ime_partnera'
      KeyFields = 'Sifra_partnera'
      Size = 40
      Lookup = True
    end
    object tZastupniklookAdresaZastupnika: TStringField
      FieldKind = fkLookup
      FieldName = 'lookAdresaZastupnika'
      LookupDataSet = tPartner7
      LookupKeyFields = 'Sifra_partnera'
      LookupResultField = 'Adresa'
      KeyFields = 'Sifra_partnera'
      Size = 40
      Lookup = True
    end
    object tZastupniklookMjestoZastupnika: TStringField
      FieldKind = fkLookup
      FieldName = 'lookMjestoZastupnika'
      LookupDataSet = tPartner7
      LookupKeyFields = 'Sifra_partnera'
      LookupResultField = 'Mjesto'
      KeyFields = 'Sifra_partnera'
      Size = 40
      Lookup = True
    end
  end
  object dsZastupnik: TDataSource
    DataSet = tZastupnik
    Left = 432
    Top = 312
  end
  object tPartner7: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'Sifra_partnera'
    TableName = 'Partner'
    Left = 644
    Top = 519
    object StringField5: TStringField
      DisplayLabel = 'Ime partnera'
      DisplayWidth = 60
      FieldName = 'Ime_partnera'
      Size = 60
    end
    object StringField6: TStringField
      DisplayWidth = 60
      FieldName = 'Adresa'
      Size = 60
    end
    object StringField7: TStringField
      DisplayWidth = 25
      FieldName = 'Mjesto'
      Visible = False
      Size = 25
    end
    object AutoIncField2: TAutoIncField
      FieldName = 'Sifra_partnera'
      ReadOnly = True
      Visible = False
    end
    object StringField8: TStringField
      FieldName = 'Drzava'
      Visible = False
      Size = 15
    end
  end
  object dsP7: TDataSource
    DataSet = tPartner7
    Left = 612
    Top = 519
  end
  object PopupMenu5: TPopupMenu
    Left = 252
    Top = 183
    object MenuItem7: TMenuItem
      Tag = 5
      Caption = 'Printanje'
      OnClick = PrintClick
    end
    object MenuItem8: TMenuItem
      Tag = 15
      Caption = 'Dizajn'
      OnClick = PrintClick
    end
  end
  object PopupMenu6: TPopupMenu
    Left = 284
    Top = 183
    object MenuItem9: TMenuItem
      Tag = 6
      Caption = 'Printanje'
      OnClick = PrintClick
    end
    object MenuItem10: TMenuItem
      Tag = 16
      Caption = 'Dizajn'
      OnClick = PrintClick
    end
  end
  object frReport1: TfrReport
    Dataset = FRdsUpisnik
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Title = 'Zahtjev'
    RebuildPrinter = False
    Left = 424
    Top = 56
    ReportForm = {19000000}
  end
end
