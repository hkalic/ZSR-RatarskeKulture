object FZahtjevRatarstvo: TFZahtjevRatarstvo
  Left = 237
  Top = 149
  Width = 1024
  Height = 729
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Unos zahtjeva za priznavanje sorti poljoprivrednog bilja'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1016
    Height = 702
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabIndex = 0
    TabOrder = 0
    TabStop = False
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = ' Podaci o zahtjevima '
      OnShow = wwNavButton4Click
      object ToolBar1: TToolBar
        Left = 0
        Top = 0
        Width = 1008
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
          Width = 300
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
          object wwNavButton1: TwwNavButton
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
          object wwNavButton3: TwwNavButton
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
          object wwNavButton4: TwwNavButton
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
            OnClick = wwNavButton4Click
            Index = 2
            Style = nbsCustom
          end
        end
      end
      object dxDBGrid1: TdxDBGrid
        Left = 0
        Top = 26
        Width = 1008
        Height = 645
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'Upisni_broj'
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
        OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoImmediateEditor, edgoMouseScroll, edgoMultiSort, edgoShowHourGlass, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlack
        PreviewFont.Height = -13
        PreviewFont.Name = 'Arial'
        PreviewFont.Style = [fsBold, fsItalic]
        OnChangeColumn = dxDBGrid1ChangeColumn
        object dxDBGrid1sifra_dok: TdxDBGridMaskColumn
          Alignment = taCenter
          Width = 25
          BandIndex = 0
          RowIndex = 0
          FieldName = 'sifra_dok'
        end
        object dxDBGrid1Upisni_broj: TdxDBGridMaskColumn
          Alignment = taLeftJustify
          Sorted = csDown
          Width = 62
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Upisni_broj'
        end
        object dxDBGrid1Datum_prijavljivanja: TdxDBGridDateColumn
          Width = 101
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Datum_prijavljivanja'
        end
        object dxDBGrid1Vrsta_hrv: TdxDBGridMaskColumn
          Width = 159
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Vrsta_hrv'
        end
        object dxDBGrid1Oznaka_sorte: TdxDBGridMaskColumn
          Width = 159
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Oznaka_sorte'
        end
        object dxDBGrid1Ime_sorte: TdxDBGridMaskColumn
          Width = 159
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Ime_sorte'
        end
        object dxDBGrid1Ime_partnera: TdxDBGridMaskColumn
          Width = 159
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Ime_partnera'
        end
        object dxDBGrid1VCU: TdxDBGridMaskColumn
          Width = 29
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VCU'
        end
        object dxDBGrid1DUS: TdxDBGridMaskColumn
          Width = 27
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DUS'
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = ' Detalji zahtjeva: '
      ImageIndex = 1
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1008
        Height = 671
        Align = alClient
        TabOrder = 0
        object Panel1: TPanel
          Left = 1
          Top = 29
          Width = 1006
          Height = 641
          Align = alClient
          TabOrder = 1
          object wwDBLookupCombo14: TwwDBLookupCombo
            Left = 144
            Top = 232
            Width = 273
            Height = 22
            AutoSize = False
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'naziv_odjela'#9'60'#9'Naziv odjela'#9'F')
            DataField = 'look_Odjel'
            DataSource = ds
            LookupTable = qOdjel
            LookupField = 'sifra'
            Options = [loColLines, loTitles, loSearchOnBackspace]
            Frame.Enabled = True
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 76
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = False
            ShowMatchText = True
            OnKeyDown = DelLookup
          end
          object dxEdit7: TdxEdit
            Left = 38
            Top = 333
            Width = 257
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
            TabOrder = 39
            Text = 'Podne'#353'eni zahtjevi u drugim zemljama'
            Alignment = taLeftJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit8: TdxEdit
            Left = 39
            Top = 417
            Width = 257
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
            TabOrder = 40
            Text = 'Sorta priznata'
            Alignment = taLeftJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit9: TdxEdit
            Left = 39
            Top = 502
            Width = 257
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
            TabOrder = 41
            Text = 'Sorta za'#353'ti'#263'ena'
            Alignment = taLeftJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object lookVlasnik: TwwDBLookupCombo
            Tag = 2
            Left = 143
            Top = 592
            Width = 272
            Height = 22
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'Ime_partnera'#9'30'#9'Ime partnera'#9'F'#9
              'Adresa'#9'30'#9'Adresa'#9'F'#9
              'Mjesto'#9'25'#9'Mjesto'#9'F'#9
              'Drzava'#9'15'#9'Dr'#382'ava'#9'F')
            DataField = 'look_ImeVlasnik'
            DataSource = ds
            LookupTable = tPartner3
            LookupField = 'Sifra_partnera'
            Options = [loColLines, loSearchOnBackspace]
            Frame.Enabled = True
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 9
            AutoDropDown = False
            ShowButton = True
            AllowClearKey = False
            ShowMatchText = True
            OnKeyDown = lookPodnositeljKeyDown
          end
          object lookOplemenjivac: TwwDBLookupCombo
            Tag = 1
            Left = 144
            Top = 280
            Width = 272
            Height = 22
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'Ime_partnera'#9'30'#9'Ime partnera'#9'F'#9
              'Adresa'#9'30'#9'Adresa'#9'F'#9
              'Mjesto'#9'25'#9'Mjesto'#9'F'#9
              'Drzava'#9'15'#9'Dr'#382'ava'#9'F'#9)
            DataField = 'look_ImeOplem'
            DataSource = ds
            LookupTable = tPartner2
            LookupField = 'Sifra_partnera'
            Options = [loColLines, loSearchOnBackspace]
            Frame.Enabled = True
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 8
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = False
            ShowMatchText = True
            OnKeyDown = lookPodnositeljKeyDown
          end
          object UpisniBroj: TwwDBEdit
            Left = 112
            Top = 8
            Width = 49
            Height = 22
            TabStop = False
            BorderStyle = bsNone
            DataField = 'Upisni_broj'
            DataSource = ds
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            Picture.PictureMask = '######'
            ReadOnly = True
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = UpisniBrojEnter
            OnExit = UpisniBrojExit
          end
          object dxEdit1: TdxEdit
            Left = 8
            Top = 8
            Width = 89
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 33
            Text = 'Upisni broj:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit2: TdxEdit
            Left = 176
            Top = 8
            Width = 145
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 34
            Text = 'Datum prijavljivanja:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBDateTimePicker1: TwwDBDateTimePicker
            Left = 320
            Top = 8
            Width = 97
            Height = 22
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            ButtonStyle = cbsEllipsis
            DataField = 'Datum_prijavljivanja'
            DataSource = ds
            Epoch = 1950
            Frame.Enabled = True
            ShowButton = True
            TabOrder = 1
            UnboundDataType = wwDTEdtDate
            OnKeyDown = DelTimePick
          end
          object dxEdit3: TdxEdit
            Left = 56
            Top = 32
            Width = 89
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 35
            Text = 'Naziv vrste:'
            OnKeyDown = dxDBGrid1KeyDown
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit4: TdxEdit
            Left = 56
            Top = 208
            Width = 89
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 36
            Text = 'Podnositelj:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit5: TdxEdit
            Left = 40
            Top = 280
            Width = 105
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 37
            Text = 'Oplemenjiva'#269':'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit6: TdxEdit
            Left = 39
            Top = 592
            Width = 105
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 38
            Text = 'Vlasnik sorte:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit10: TdxEdit
            Left = 424
            Top = 40
            Width = 121
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 42
            Text = 'Gdje ura'#273'en:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwCheckBox1: TwwCheckBox
            Left = 64
            Top = 616
            Width = 129
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
            Caption = 'Tehni'#269'ki upitnik:'
            Color = clMenu
            DataField = 'Tehnicki_upitnik'
            DataSource = ds
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clInactiveCaption
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 10
          end
          object dxEdit11: TdxEdit
            Left = 423
            Top = 74
            Width = 121
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 43
            Text = 'I. godina:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit12: TdxEdit
            Left = 425
            Top = 118
            Width = 121
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 44
            Text = 'II. godina:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit13: TdxEdit
            Left = 448
            Top = 8
            Width = 57
            Color = clMenu
            Enabled = False
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 45
            Text = '   DUS  '
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit14: TdxEdit
            Left = 458
            Top = 152
            Width = 57
            Color = clMenu
            Enabled = False
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 46
            Text = '   VCU  '
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit15: TdxEdit
            Left = 424
            Top = 176
            Width = 121
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 47
            Text = 'I. godina:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit16: TdxEdit
            Left = 424
            Top = 219
            Width = 121
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 48
            Text = 'II. godina:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit17: TdxEdit
            Left = 422
            Top = 263
            Width = 121
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 49
            Text = 'III. godina:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object DBMemo1: TDBMemo
            Left = 544
            Top = 163
            Width = 273
            Height = 41
            DataField = 'VCU1'
            DataSource = dsVCU
            TabOrder = 17
            OnExit = DBMemo1Exit
          end
          object DBMemo2: TDBMemo
            Left = 544
            Top = 207
            Width = 273
            Height = 41
            DataField = 'VCU2'
            DataSource = dsVCU
            TabOrder = 18
            OnExit = DBMemo1Exit
          end
          object DBMemo3: TDBMemo
            Left = 544
            Top = 251
            Width = 273
            Height = 41
            DataField = 'VCU3'
            DataSource = dsVCU
            TabOrder = 19
            OnExit = DBMemo1Exit
          end
          object dxEdit18: TdxEdit
            Left = 457
            Top = 301
            Width = 177
            Color = clMenu
            Enabled = False
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 51
            Text = '  Rje'#353'enje o priznavanju '
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBEdit4: TwwDBEdit
            Tag = 1
            Left = 481
            Top = 325
            Width = 209
            Height = 22
            Hint = 'F1 - kopiraj zadnji broj rje'#353'enja'
            BorderStyle = bsNone
            DataField = 'Broj_priznavanja'
            DataSource = dsPriznavanje
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 20
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = DajBrojRjesenja
          end
          object dxEdit19: TdxEdit
            Left = 417
            Top = 325
            Width = 65
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 50
            Text = 'Broj:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit20: TdxEdit
            Left = 690
            Top = 325
            Width = 56
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 52
            Text = 'Datum:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBEdit6: TwwDBEdit
            Tag = 3
            Left = 481
            Top = 417
            Width = 209
            Height = 22
            BorderStyle = bsNone
            DataField = 'Broj_rjesenja'
            DataSource = dsOdrzavanje
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 23
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = DajBrojRjesenja
          end
          object dxEdit21: TdxEdit
            Left = 456
            Top = 393
            Width = 177
            Color = clMenu
            Enabled = False
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 53
            Text = '   Rje'#353'enje o odr'#382'avanju '
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit22: TdxEdit
            Left = 417
            Top = 417
            Width = 65
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 54
            Text = 'Broj:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit23: TdxEdit
            Left = 690
            Top = 417
            Width = 56
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 55
            Text = 'Datum:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit24: TdxEdit
            Left = 455
            Top = 565
            Width = 249
            Color = clMenu
            Enabled = False
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 56
            Text = '   Rje'#353'enje o oplemenjiva'#269'kom pravu '
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit25: TdxEdit
            Left = 417
            Top = 590
            Width = 65
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 57
            Text = 'Broj:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBEdit8: TwwDBEdit
            Tag = 5
            Left = 481
            Top = 590
            Width = 209
            Height = 22
            BorderStyle = bsNone
            DataField = 'Broj_prava'
            DataSource = dsPravo
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 30
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = DajBrojRjesenja
          end
          object dxEdit27: TdxEdit
            Left = 458
            Top = 519
            Width = 273
            Color = clMenu
            Enabled = False
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 58
            Text = '   Rje'#353'enje o brisanje sorte sa sortne liste '
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit28: TdxEdit
            Left = 418
            Top = 543
            Width = 65
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 59
            Text = 'Broj:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBEdit10: TwwDBEdit
            Tag = 4
            Left = 482
            Top = 543
            Width = 209
            Height = 22
            BorderStyle = bsNone
            DataField = 'Broj_brisanja'
            DataSource = dsBrisanje
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 27
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = DajBrojRjesenja
          end
          object dxEdit29: TdxEdit
            Left = 691
            Top = 543
            Width = 56
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 60
            Text = 'Datum:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit30: TdxEdit
            Left = 489
            Top = 445
            Width = 177
            Color = clMenu
            Enabled = False
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 61
            Text = '    Naknada za odr'#382'avanje '
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit32: TdxEdit
            Left = 842
            Top = 543
            Width = 33
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 62
            Text = 'NN:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBEdit12: TwwDBEdit
            Tag = 9
            Left = 874
            Top = 543
            Width = 73
            Height = 22
            BorderStyle = bsNone
            DataField = 'NN'
            DataSource = dsBrisanje
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 29
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = DajBrojRjesenja
          end
          object wwDBEdit13: TwwDBEdit
            Left = 96
            Top = 8
            Width = 17
            Height = 22
            BorderStyle = bsNone
            DataField = 'Sifra_dok'
            DataSource = ds
            Enabled = False
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 63
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object DBMemo4: TDBMemo
            Left = 544
            Top = 64
            Width = 273
            Height = 41
            DataField = 'I_godina'
            DataSource = dsDUS
            TabOrder = 14
            OnExit = wwDBEdit1Exit
          end
          object DBMemo5: TDBMemo
            Left = 544
            Top = 108
            Width = 273
            Height = 41
            DataField = 'II_godina'
            DataSource = dsDUS
            TabOrder = 15
            OnExit = wwDBEdit1Exit
          end
          object dxEdit34: TdxEdit
            Left = 48
            Top = 56
            Width = 97
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 64
            Text = 'Oznaka sorte:'
            OnKeyDown = dxDBGrid1KeyDown
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit35: TdxEdit
            Left = 32
            Top = 80
            Width = 113
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 65
            Text = 'Predlo'#382'eno ime:'
            OnKeyDown = dxDBGrid1KeyDown
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBEdit3: TwwDBEdit
            Left = 144
            Top = 80
            Width = 185
            Height = 22
            BorderStyle = bsNone
            DataField = 'Ime_sorte'
            DataSource = ds
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBGrid4: TwwDBGrid
            Left = 481
            Top = 469
            Width = 409
            Height = 44
            LineStyle = glsSingle
            Selected.Strings = (
              'God1'#9'2'#9'1'
              'God2'#9'2'#9'2'
              'God3'#9'2'#9'3'
              'God4'#9'2'#9'4'
              'God5'#9'2'#9'5'
              'God6'#9'2'#9'6'
              'God7'#9'2'#9'7'
              'God8'#9'2'#9'8'
              'God9'#9'2'#9'9'
              'God10'#9'2'#9'10'
              'Prekid'#9'3'#9' '
              'God11'#9'2'#9'11'
              'God12'#9'2'#9'12'
              'God13'#9'2'#9'13'
              'God14'#9'2'#9'14'
              'God15'#9'2'#9'15'
              'God16'#9'2'#9'16'
              'God17'#9'2'#9'17'
              'God18'#9'2'#9'18'
              'God19'#9'2'#9'19'
              'God20'#9'2'#9'20')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = False
            ShowVertScrollBar = False
            DataSource = dsNaknada
            KeyOptions = []
            Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgTabExitsOnLastCol, dgProportionalColResize]
            TabOrder = 26
            TitleAlignment = taCenter
            TitleFont.Charset = EASTEUROPE_CHARSET
            TitleFont.Color = clNavy
            TitleFont.Height = -13
            TitleFont.Name = 'Arial'
            TitleFont.Style = [fsBold]
            TitleLines = 1
            TitleButtons = False
            OnEnter = wwDBGrid4Enter
            OnExit = wwDBGrid4Exit
            OnKeyDown = wwDBGrid4KeyDown
            IndicatorIconColor = clYellow
            object wwDBGrid4IButton: TwwIButton
              Left = 0
              Top = 0
              Width = 13
              Height = 22
              AllowAllUp = True
              Flat = True
            end
          end
          object wwDBDateTimePicker3: TwwDBDateTimePicker
            Left = 745
            Top = 417
            Width = 97
            Height = 22
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            ButtonStyle = cbsEllipsis
            DataField = 'Datum_rjesenja'
            DataSource = dsOdrzavanje
            Epoch = 1950
            Frame.Enabled = True
            ShowButton = True
            TabOrder = 24
            UnboundDataType = wwDTEdtDate
            OnKeyDown = DelTimePick
          end
          object wwDBDateTimePicker4: TwwDBDateTimePicker
            Left = 745
            Top = 325
            Width = 97
            Height = 22
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            ButtonStyle = cbsEllipsis
            DataField = 'Datum_priznavanja'
            DataSource = dsPriznavanje
            Epoch = 1950
            Frame.Enabled = True
            ShowButton = True
            TabOrder = 21
            UnboundDataType = wwDTEdtDate
            OnKeyDown = DelTimePick
          end
          object wwDBDateTimePicker5: TwwDBDateTimePicker
            Left = 746
            Top = 543
            Width = 97
            Height = 22
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            ButtonStyle = cbsEllipsis
            DataField = 'Datum_brisanja'
            DataSource = dsBrisanje
            Epoch = 1950
            Frame.Enabled = True
            ShowButton = True
            TabOrder = 28
            UnboundDataType = wwDTEdtDate
            OnKeyDown = DelTimePick
          end
          object dxEdit26: TdxEdit
            Left = 690
            Top = 590
            Width = 56
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 66
            Text = 'Datum:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBDateTimePicker6: TwwDBDateTimePicker
            Left = 745
            Top = 590
            Width = 97
            Height = 22
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            ButtonStyle = cbsEllipsis
            DataField = 'Datum_prava'
            DataSource = dsPravo
            Epoch = 1950
            Frame.Enabled = True
            ShowButton = True
            TabOrder = 31
            UnboundDataType = wwDTEdtDate
            OnKeyDown = DelTimePick
          end
          object dxEdit31: TdxEdit
            Left = 841
            Top = 590
            Width = 33
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 67
            Text = 'NN:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBEdit2: TwwDBEdit
            Tag = 10
            Left = 873
            Top = 590
            Width = 73
            Height = 22
            BorderStyle = bsNone
            DataField = 'NN'
            DataSource = dsPravo
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 32
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = DajBrojRjesenja
          end
          object dxEdit33: TdxEdit
            Left = 841
            Top = 325
            Width = 33
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 68
            Text = 'NN:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBEdit7: TwwDBEdit
            Tag = 6
            Left = 873
            Top = 325
            Width = 73
            Height = 22
            BorderStyle = bsNone
            DataField = 'NN'
            DataSource = dsPriznavanje
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 22
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = DajBrojRjesenja
          end
          object wwDBEdit9: TwwDBEdit
            Tag = 8
            Left = 873
            Top = 417
            Width = 73
            Height = 22
            BorderStyle = bsNone
            DataField = 'NN'
            DataSource = dsOdrzavanje
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 25
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = DajBrojRjesenja
          end
          object dxEdit36: TdxEdit
            Left = 841
            Top = 417
            Width = 33
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 69
            Text = 'NN:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit37: TdxEdit
            Left = 822
            Top = 9
            Width = 50
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 70
            Text = 'Status:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBLookupCombo1: TwwDBLookupCombo
            Left = 872
            Top = 9
            Width = 57
            Height = 22
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'DUS_oznaka'#9'5'#9#352'ifra'#9'F'#9
              'DUS_Status'#9'40'#9'Status DUS-a'#9'F'#9)
            DataField = 'DUS_oznaka'
            DataSource = ds
            LookupTable = tSdus
            LookupField = 'DUS_oznaka'
            Options = [loColLines]
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 13
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = False
            ShowMatchText = True
            OnKeyDown = DelLookup
          end
          object dxEdit38: TdxEdit
            Left = 822
            Top = 163
            Width = 50
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 71
            Text = 'Status:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBLookupCombo2: TwwDBLookupCombo
            Left = 872
            Top = 163
            Width = 57
            Height = 22
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'VCU_oznaka'#9'5'#9#352'ifra'#9#9
              'VCU_Status'#9'40'#9'Status VCU-a'#9#9)
            DataField = 'VCU_oznaka'
            DataSource = ds
            LookupTable = tSvcu
            LookupField = 'VCU_oznaka'
            Options = [loColLines]
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 16
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = False
            ShowMatchText = True
            OnCloseUp = wwDBLookupCombo2CloseUp
            OnKeyDown = DelLookup
          end
          object dxEdit39: TdxEdit
            Left = 24
            Top = 104
            Width = 121
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 72
            Text = 'Namjena:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object DBMemo6: TDBMemo
            Left = 144
            Top = 104
            Width = 273
            Height = 41
            DataField = 'Namjena'
            DataSource = ds
            TabOrder = 5
            OnExit = wwDBEdit1Exit
            OnKeyDown = DBMemo6KeyDown
          end
          object wwCheckBox2: TwwCheckBox
            Left = 528
            Top = 6
            Width = 81
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
            Caption = 'Kupljen?'
            Color = clMenu
            DataField = 'Kupljen'
            DataSource = dsDUS
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clInactiveCaption
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 12
          end
          object wwCheckBox3: TwwCheckBox
            Left = 264
            Top = 616
            Width = 89
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
            Caption = 'Punomo'#263':'
            Color = clMenu
            DataField = 'Punomoc'
            DataSource = ds
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clInactiveCaption
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 11
          end
          object wwDBLookupCombo6: TwwDBLookupCombo
            Left = 144
            Top = 32
            Width = 273
            Height = 22
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'Vrsta_hrv'#9'30'#9'Hrvatski naziv'#9'F'#9
              'Vrsta_lat'#9'50'#9'Latinski naziv'#9'F')
            DataField = 'look_Vrsta_hr'
            DataSource = ds
            LookupTable = tVrsta
            LookupField = 'Sifra_vrste'
            Options = [loColLines, loSearchOnBackspace]
            Frame.Enabled = True
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 2
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = False
            ShowMatchText = True
            OnKeyDown = lookPodnositeljKeyDown
          end
          object wwDBEdit5: TwwDBEdit
            Left = 144
            Top = 56
            Width = 185
            Height = 22
            BorderStyle = bsNone
            DataField = 'Oznaka_sorte'
            DataSource = ds
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object dxEdit40: TdxEdit
            Left = 744
            Top = 40
            Width = 49
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 74
            Text = 'Kada?'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBEdit11: TwwDBEdit
            Left = 792
            Top = 40
            Width = 97
            Height = 22
            BorderStyle = bsNone
            DataField = 'Kada_uradjen'
            DataSource = dsDUS
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 75
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = DelLookup
          end
          object dxEdit82: TdxEdit
            Left = 80
            Top = 256
            Width = 65
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 77
            Text = 'Kontakt:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBLookupCombo7: TwwDBLookupCombo
            Left = 144
            Top = 256
            Width = 272
            Height = 22
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'ime'#9'61'#9'ime'#9'F'#9)
            DataField = 'look_Kontakt'
            DataSource = ds
            LookupTable = qKontakti
            LookupField = 'sifra_kontakta'
            Options = [loColLines, loTitles, loSearchOnBackspace]
            Frame.Enabled = True
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 78
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = False
            ShowMatchText = True
            OnKeyDown = DelLookup
          end
          object dxEdit74: TdxEdit
            Left = 460
            Top = 347
            Width = 189
            Color = clMenu
            Enabled = False
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 79
            Text = '   Rje'#353'enje o nepriznavanju '
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit75: TdxEdit
            Left = 420
            Top = 371
            Width = 65
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 80
            Text = 'Broj:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBEdit32: TwwDBEdit
            Tag = 2
            Left = 484
            Top = 371
            Width = 209
            Height = 22
            BorderStyle = bsNone
            DataField = 'Broj_priznavanja'
            DataSource = dsNePriznavanje
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 81
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = DajBrojRjesenja
          end
          object dxEdit76: TdxEdit
            Left = 693
            Top = 371
            Width = 56
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 82
            Text = 'Datum:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBDateTimePicker11: TwwDBDateTimePicker
            Left = 748
            Top = 371
            Width = 97
            Height = 22
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            ButtonStyle = cbsEllipsis
            DataField = 'Datum_priznavanja'
            DataSource = dsNePriznavanje
            Epoch = 1950
            Frame.Enabled = True
            ShowButton = True
            TabOrder = 83
            OnKeyDown = DelTimePick
          end
          object dxEdit77: TdxEdit
            Left = 844
            Top = 371
            Width = 33
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 84
            Text = 'NN:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBEdit33: TwwDBEdit
            Tag = 7
            Left = 876
            Top = 371
            Width = 73
            Height = 22
            BorderStyle = bsNone
            DataField = 'NN'
            DataSource = dsNePriznavanje
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 85
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = DajBrojRjesenja
          end
          object dxEdit110: TdxEdit
            Left = 39
            Top = 304
            Width = 105
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 86
            Text = 'Odr'#382'iva'#269' sorte:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBLookupCombo10: TwwDBLookupCombo
            Tag = 2
            Left = 143
            Top = 304
            Width = 272
            Height = 22
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'Ime_partnera'#9'30'#9'Ime partnera'#9'F'#9
              'Adresa'#9'30'#9'Adresa'#9'F'#9
              'Mjesto'#9'25'#9'Mjesto'#9'F'#9
              'Drzava'#9'15'#9'Dr'#382'ava'#9'F')
            DataField = 'look_ImeOdrzivaca'
            DataSource = ds
            LookupTable = tPartner3
            LookupField = 'Sifra_partnera'
            Options = [loColLines, loSearchOnBackspace]
            Frame.Enabled = True
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 87
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = False
            ShowMatchText = True
            OnKeyDown = lookPodnositeljKeyDown
          end
          object DBMemo9: TDBMemo
            Left = 144
            Top = 152
            Width = 273
            Height = 41
            DataField = 'Napomena'
            DataSource = ds
            TabOrder = 6
            OnExit = wwDBEdit1Exit
            OnKeyDown = DBMemo6KeyDown
          end
          object dxEdit111: TdxEdit
            Left = 24
            Top = 152
            Width = 121
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 88
            Text = 'Napomena:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBLookupCombo12: TwwDBLookupCombo
            Tag = 2
            Left = 544
            Top = 40
            Width = 193
            Height = 22
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'Naziv_Drzave'#9'30'#9'Naziv dr'#382'ave'#9'F'#9)
            DataField = 'lookNazivDrzave'
            DataSource = dsDUS
            LookupTable = tDrzava
            LookupField = 'Sifra'
            Options = [loColLines, loSearchOnBackspace]
            Frame.Enabled = True
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 73
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = False
            ShowMatchText = True
            OnKeyDown = lookPodnositeljKeyDown
          end
          object dxDBGrid5: TdxDBGrid
            Left = 30
            Top = 351
            Width = 385
            Height = 66
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            DefaultFields = True
            KeyField = 'Podneseni_zahtjevi'
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 89
            OnExit = wwDBGrid1Exit
            DataSource = dsDrugiZ
            Filter.Criteria = {00000000}
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoImmediateEditor, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          end
          object dxDBGrid6: TdxDBGrid
            Left = 30
            Top = 435
            Width = 385
            Height = 66
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            DefaultFields = True
            KeyField = 'Sifra_priznata'
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 90
            OnExit = wwDBGrid2Exit
            DataSource = dsPriznataU
            Filter.Criteria = {00000000}
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoImmediateEditor, edgoMouseScroll, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          end
          object dxDBGrid7: TdxDBGrid
            Left = 30
            Top = 520
            Width = 385
            Height = 66
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            DefaultFields = True
            KeyField = 'Sifra_zasticena'
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 91
            OnExit = wwDBGrid3Exit
            DataSource = dsZasticenaU
            Filter.Criteria = {00000000}
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoImmediateEditor, edgoMouseScroll, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          end
          object dxEdit47: TdxEdit
            Left = 40
            Top = 232
            Width = 105
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 92
            Text = 'Odjel:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object lookPodnositelj: TwwDBLookupCombo
            Tag = 1
            Left = 144
            Top = 208
            Width = 272
            Height = 22
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'Ime_partnera'#9'30'#9'Ime partnera'#9'F'#9
              'Adresa'#9'30'#9'Adresa'#9'F'#9
              'Mjesto'#9'25'#9'Mjesto'#9'F'#9
              'Drzava'#9'15'#9'Dr'#382'ava'#9'F'#9)
            DataField = 'look_ImePodn'
            DataSource = ds
            LookupTable = tPartner
            LookupField = 'Sifra_partnera'
            Options = [loColLines, loSearchOnBackspace]
            Frame.Enabled = True
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 7
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = False
            ShowMatchText = True
            OnKeyDown = lookPodnositeljKeyDown
          end
        end
        object Panel2: TPanel
          Left = 1
          Top = 29
          Width = 1006
          Height = 641
          Align = alClient
          TabOrder = 2
          Visible = False
          object wwDBLookupCombo15: TwwDBLookupCombo
            Left = 120
            Top = 72
            Width = 273
            Height = 22
            AutoSize = False
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'naziv_odjela'#9'60'#9'Naziv odjela'#9'F')
            DataField = 'look_Odjel'
            DataSource = ds
            LookupTable = qOdjel
            LookupField = 'sifra'
            Options = [loColLines, loTitles, loSearchOnBackspace]
            Frame.Enabled = True
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 83
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = False
            ShowMatchText = True
            OnKeyDown = DelLookup
          end
          object wwDBEdit35: TwwDBEdit
            Tag = 7
            Left = 873
            Top = 394
            Width = 73
            Height = 22
            BorderStyle = bsNone
            DataField = 'NN'
            DataSource = dsNePriznavanje
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 36
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = DajBrojRjesenja
          end
          object dxEdit109: TdxEdit
            Left = 841
            Top = 394
            Width = 33
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 73
            Text = 'NN:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBDateTimePicker12: TwwDBDateTimePicker
            Left = 745
            Top = 394
            Width = 97
            Height = 22
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            ButtonStyle = cbsEllipsis
            DataField = 'Datum_priznavanja'
            DataSource = dsNePriznavanje
            Epoch = 1950
            Frame.Enabled = True
            ShowButton = True
            TabOrder = 35
            UnboundDataType = wwDTEdtDate
            OnKeyDown = DelTimePick
          end
          object dxEdit108: TdxEdit
            Left = 690
            Top = 394
            Width = 56
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 72
            Text = 'Datum:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBEdit34: TwwDBEdit
            Tag = 2
            Left = 481
            Top = 394
            Width = 209
            Height = 22
            Hint = 'F1 - kopiraj zadnji broj rje'#353'enja'
            BorderStyle = bsNone
            DataField = 'Broj_priznavanja'
            DataSource = dsNePriznavanje
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            ParentShowHint = False
            ShowHint = True
            TabOrder = 34
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = DajBrojRjesenja
          end
          object dxEdit106: TdxEdit
            Left = 467
            Top = 370
            Width = 177
            Color = clMenu
            Enabled = False
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 70
            Text = '  Rje'#353'enje o nepriznavanju '
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit107: TdxEdit
            Left = 417
            Top = 392
            Width = 64
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 71
            Text = 'Broj:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit78: TdxEdit
            Left = 415
            Top = 440
            Width = 65
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 74
            Text = 'Broj:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit41: TdxEdit
            Left = 32
            Top = 48
            Width = 89
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 14
            Text = 'Podnositelj:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBLookupCombo3: TwwDBLookupCombo
            Left = 120
            Top = 48
            Width = 272
            Height = 22
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'Ime_partnera'#9'30'#9'Ime partnera'#9#9
              'Adresa'#9'30'#9'Adresa'#9#9
              'Mjesto'#9'25'#9'Mjesto'#9#9
              'Drzava'#9'15'#9'Dr'#382'ava'#9#9)
            DataField = 'look_ImePodn'
            DataSource = ds
            LookupTable = tPartner
            LookupField = 'Sifra_partnera'
            Options = [loColLines, loSearchOnBackspace]
            Frame.Enabled = True
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 3
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = False
            ShowMatchText = True
            OnKeyDown = lookPodnositeljKeyDown
          end
          object dxEdit42: TdxEdit
            Left = 32
            Top = 128
            Width = 89
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 15
            Text = 'Naziv vrste:'
            OnKeyDown = dxDBGrid1KeyDown
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit43: TdxEdit
            Left = 8
            Top = 152
            Width = 113
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 16
            Text = 'Latinski naziv:'
            OnKeyDown = dxDBGrid1KeyDown
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBEdit15: TwwDBEdit
            Left = 120
            Top = 152
            Width = 657
            Height = 22
            TabStop = False
            BorderStyle = bsNone
            DataField = 'look_Vrsta_LAT'
            DataSource = ds
            Enabled = False
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            ReadOnly = True
            TabOrder = 6
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object dxEdit44: TdxEdit
            Left = 8
            Top = 232
            Width = 113
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 17
            Text = 'Predlo'#382'eno ime:'
            OnKeyDown = dxDBGrid1KeyDown
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBEdit16: TwwDBEdit
            Left = 120
            Top = 232
            Width = 185
            Height = 22
            BorderStyle = bsNone
            DataField = 'Ime_sorte'
            DataSource = ds
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 9
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object dxEdit45: TdxEdit
            Left = 16
            Top = 256
            Width = 105
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 18
            Text = 'Odr'#382'iva'#269' sorte:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBLookupCombo4: TwwDBLookupCombo
            Tag = 2
            Left = 120
            Top = 256
            Width = 272
            Height = 22
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'Ime_partnera'#9'30'#9'Ime partnera'#9'F'#9
              'Adresa'#9'30'#9'Adresa'#9'F'#9
              'Mjesto'#9'25'#9'Mjesto'#9'F'#9
              'Drzava'#9'15'#9'Dr'#382'ava'#9'F')
            DataField = 'look_ImeOdrzivaca'
            DataSource = ds
            LookupTable = tPartner3
            LookupField = 'Sifra_partnera'
            Options = [loColLines, loSearchOnBackspace]
            Frame.Enabled = True
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 10
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = False
            ShowMatchText = True
            OnKeyDown = lookPodnositeljKeyDown
          end
          object wwCheckBox4: TwwCheckBox
            Left = 357
            Top = 216
            Width = 198
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
            Caption = 'Za tr'#382'i'#353'te u svje'#382'em stanju:'
            Color = clMenu
            DataField = 'NamPov1'
            DataSource = ds
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clInactiveCaption
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 11
          end
          object wwCheckBox5: TwwCheckBox
            Left = 455
            Top = 241
            Width = 100
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
            Caption = 'Za preradu:'
            Color = clMenu
            DataField = 'NamPov2'
            DataSource = ds
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clInactiveCaption
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 12
          end
          object wwCheckBox6: TwwCheckBox
            Left = 456
            Top = 266
            Width = 99
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
            Caption = 'U vrtovima:'
            Color = clMenu
            DataField = 'NamPov3'
            DataSource = ds
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clInactiveCaption
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 13
          end
          object dxEdit50: TdxEdit
            Left = 8
            Top = 16
            Width = 81
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 19
            Text = 'Upisni broj:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBEdit19: TwwDBEdit
            Left = 104
            Top = 16
            Width = 49
            Height = 22
            TabStop = False
            BorderStyle = bsNone
            DataField = 'Upisni_broj'
            DataSource = ds
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            Picture.PictureMask = '######'
            ReadOnly = True
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnEnter = UpisniBrojEnter
            OnExit = UpisniBrojExit
          end
          object dxEdit51: TdxEdit
            Left = 168
            Top = 16
            Width = 145
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 20
            Text = 'Datum prijavljivanja:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBDateTimePicker2: TwwDBDateTimePicker
            Left = 312
            Top = 16
            Width = 97
            Height = 22
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            ButtonStyle = cbsEllipsis
            DataField = 'Datum_prijavljivanja'
            DataSource = ds
            Epoch = 1950
            Frame.Enabled = True
            ShowButton = True
            TabOrder = 2
            UnboundDataType = wwDTEdtDate
            OnKeyDown = DelTimePick
          end
          object wwDBEdit20: TwwDBEdit
            Left = 88
            Top = 16
            Width = 17
            Height = 22
            BorderStyle = bsNone
            DataField = 'Sifra_dok'
            DataSource = ds
            Enabled = False
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object dxEdit52: TdxEdit
            Left = 608
            Top = 176
            Width = 57
            Color = clMenu
            Enabled = False
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 21
            Text = '   DUS  '
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object DBMemo7: TDBMemo
            Left = 672
            Top = 276
            Width = 273
            Height = 41
            DataField = 'II_godina'
            DataSource = dsDUS
            TabOrder = 30
            OnExit = wwDBEdit1Exit
          end
          object DBMemo8: TDBMemo
            Left = 672
            Top = 232
            Width = 273
            Height = 41
            DataField = 'I_godina'
            DataSource = dsDUS
            TabOrder = 29
            OnExit = wwDBEdit1Exit
          end
          object wwCheckBox7: TwwCheckBox
            Left = 680
            Top = 174
            Width = 81
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
            Caption = 'Kupljen?'
            Color = clMenu
            DataField = 'Kupljen'
            DataSource = dsDUS
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clInactiveCaption
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 26
          end
          object dxEdit53: TdxEdit
            Left = 824
            Top = 208
            Width = 49
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 22
            Text = 'Kada?'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBEdit22: TwwDBEdit
            Left = 872
            Top = 208
            Width = 73
            Height = 22
            BorderStyle = bsNone
            DataField = 'Kada_uradjen'
            DataSource = dsDUS
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 28
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object dxEdit54: TdxEdit
            Left = 576
            Top = 208
            Width = 97
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 23
            Text = 'Gdje ura'#273'en:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit55: TdxEdit
            Left = 592
            Top = 232
            Width = 81
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 24
            Text = 'I. godina:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit56: TdxEdit
            Left = 600
            Top = 276
            Width = 73
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 25
            Text = 'II. godina:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit81: TdxEdit
            Left = 24
            Top = 208
            Width = 97
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 48
            Text = 'Oznaka sorte:'
            OnKeyDown = dxDBGrid1KeyDown
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBEdit14: TwwDBEdit
            Left = 120
            Top = 208
            Width = 185
            Height = 22
            BorderStyle = bsNone
            DataField = 'Oznaka_sorte'
            DataSource = ds
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 8
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBLookupCombo5: TwwDBLookupCombo
            Left = 120
            Top = 128
            Width = 273
            Height = 22
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'Vrsta_hrv'#9'30'#9'Hrvatski naziv'#9'F'#9
              'Vrsta_lat'#9'50'#9'Latinski naziv'#9'F')
            DataField = 'look_Vrsta_hr'
            DataSource = ds
            LookupTable = tVrsta
            LookupField = 'Sifra_vrste'
            Options = [loColLines, loSearchOnBackspace]
            Frame.Enabled = True
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 5
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = False
            ShowMatchText = True
            OnKeyDown = lookPodnositeljKeyDown
          end
          object dxEdit83: TdxEdit
            Left = 16
            Top = 104
            Width = 105
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 49
            Text = 'Oplemenjiva'#269':'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBLookupCombo8: TwwDBLookupCombo
            Tag = 1
            Left = 120
            Top = 104
            Width = 272
            Height = 22
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'Ime_partnera'#9'30'#9'Ime partnera'#9'F'#9
              'Adresa'#9'30'#9'Adresa'#9'F'#9
              'Mjesto'#9'25'#9'Mjesto'#9'F'#9
              'Drzava'#9'15'#9'Dr'#382'ava'#9'F'#9)
            DataField = 'look_ImeOplem'
            DataSource = ds
            LookupTable = tPartner2
            LookupField = 'Sifra_partnera'
            Options = [loColLines, loSearchOnBackspace]
            Frame.Enabled = True
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 4
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = False
            ShowMatchText = True
            OnKeyDown = lookPodnositeljKeyDown
          end
          object dxEdit48: TdxEdit
            Left = 40
            Top = 311
            Width = 257
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
            TabOrder = 50
            Text = 'Podne'#353'eni zahtjevi u drugim zemljama'
            Alignment = taLeftJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit49: TdxEdit
            Left = 40
            Top = 407
            Width = 257
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
            TabOrder = 51
            Text = 'Sorta priznata'
            Alignment = taLeftJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit57: TdxEdit
            Left = 40
            Top = 503
            Width = 257
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
            TabOrder = 52
            Text = 'Sorta za'#353'ti'#263'ena'
            Alignment = taLeftJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit58: TdxEdit
            Left = 16
            Top = 183
            Width = 105
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 53
            Text = 'Vlasnik sorte:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBLookupCombo9: TwwDBLookupCombo
            Tag = 2
            Left = 120
            Top = 183
            Width = 272
            Height = 22
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'Ime_partnera'#9'30'#9'Ime partnera'#9'F'#9
              'Adresa'#9'30'#9'Adresa'#9'F'#9
              'Mjesto'#9'25'#9'Mjesto'#9'F'#9
              'Drzava'#9'15'#9'Dr'#382'ava'#9'F')
            DataField = 'look_ImeVlasnik'
            DataSource = ds
            LookupTable = tPartner3
            LookupField = 'Sifra_partnera'
            Options = [loColLines, loSearchOnBackspace]
            Frame.Enabled = True
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 7
            AutoDropDown = False
            ShowButton = True
            AllowClearKey = False
            ShowMatchText = True
            OnKeyDown = lookPodnositeljKeyDown
          end
          object wwCheckBox8: TwwCheckBox
            Left = 536
            Top = 568
            Width = 129
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
            Caption = 'Tehni'#269'ki upitnik:'
            Color = clMenu
            DataField = 'Tehnicki_upitnik'
            DataSource = ds
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clInactiveCaption
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 46
          end
          object wwCheckBox9: TwwCheckBox
            Left = 768
            Top = 568
            Width = 89
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
            Caption = 'Punomo'#263':'
            Color = clMenu
            DataField = 'Punomoc'
            DataSource = ds
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clInactiveCaption
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 47
          end
          object dxEdit59: TdxEdit
            Left = 416
            Top = 534
            Width = 65
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 54
            Text = 'Broj:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBEdit24: TwwDBEdit
            Tag = 5
            Left = 481
            Top = 533
            Width = 209
            Height = 22
            Hint = 'F1 - kopiraj zadnji broj rje'#353'enja'
            BorderStyle = bsNone
            DataField = 'Broj_prava'
            DataSource = dsPravo
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            ParentShowHint = False
            ShowHint = True
            TabOrder = 43
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = DajBrojRjesenja
          end
          object dxEdit60: TdxEdit
            Left = 456
            Top = 510
            Width = 249
            Color = clMenu
            Enabled = False
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 55
            Text = '   Rje'#353'enje o oplemenjiva'#269'kom pravu '
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit61: TdxEdit
            Left = 689
            Top = 534
            Width = 56
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 56
            Text = 'Datum:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBDateTimePicker7: TwwDBDateTimePicker
            Left = 744
            Top = 534
            Width = 97
            Height = 22
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            ButtonStyle = cbsEllipsis
            DataField = 'Datum_prava'
            DataSource = dsPravo
            Epoch = 1950
            Frame.Enabled = True
            ShowButton = True
            TabOrder = 44
            UnboundDataType = wwDTEdtDate
            OnKeyDown = DelTimePick
          end
          object dxEdit62: TdxEdit
            Left = 840
            Top = 534
            Width = 33
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 57
            Text = 'NN:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBEdit25: TwwDBEdit
            Tag = 10
            Left = 872
            Top = 534
            Width = 73
            Height = 22
            BorderStyle = bsNone
            DataField = 'NN'
            DataSource = dsPravo
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 45
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = DajBrojRjesenja
          end
          object wwDBEdit26: TwwDBEdit
            Tag = 9
            Left = 871
            Top = 488
            Width = 73
            Height = 22
            BorderStyle = bsNone
            DataField = 'NN'
            DataSource = dsBrisanje
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 42
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = DajBrojRjesenja
          end
          object dxEdit63: TdxEdit
            Left = 839
            Top = 488
            Width = 33
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 58
            Text = 'NN:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBDateTimePicker8: TwwDBDateTimePicker
            Left = 743
            Top = 488
            Width = 97
            Height = 22
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            ButtonStyle = cbsEllipsis
            DataField = 'Datum_brisanja'
            DataSource = dsBrisanje
            Epoch = 1950
            Frame.Enabled = True
            ShowButton = True
            TabOrder = 41
            UnboundDataType = wwDTEdtDate
            OnKeyDown = DelTimePick
          end
          object dxEdit64: TdxEdit
            Left = 688
            Top = 488
            Width = 56
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 59
            Text = 'Datum:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBEdit27: TwwDBEdit
            Tag = 4
            Left = 479
            Top = 488
            Width = 209
            Height = 22
            Hint = 'F1 - kopiraj zadnji broj rje'#353'enja'
            BorderStyle = bsNone
            DataField = 'Broj_brisanja'
            DataSource = dsBrisanje
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            ParentShowHint = False
            ShowHint = True
            TabOrder = 40
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = DajBrojRjesenja
          end
          object dxEdit65: TdxEdit
            Left = 415
            Top = 488
            Width = 65
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 60
            Text = 'Broj:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit66: TdxEdit
            Left = 455
            Top = 464
            Width = 273
            Color = clMenu
            Enabled = False
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 61
            Text = '   Rje'#353'enje o brisanje sorte sa sortne liste '
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit67: TdxEdit
            Left = 456
            Top = 417
            Width = 177
            Color = clMenu
            Enabled = False
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 62
            Text = '   Rje'#353'enje o odr'#382'avanju '
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBEdit28: TwwDBEdit
            Tag = 3
            Left = 480
            Top = 441
            Width = 209
            Height = 22
            Hint = 'F1 - kopiraj zadnji broj rje'#353'enja'
            BorderStyle = bsNone
            DataField = 'Broj_rjesenja'
            DataSource = dsOdrzavanje
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            ParentShowHint = False
            ShowHint = True
            TabOrder = 37
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = DajBrojRjesenja
          end
          object dxEdit68: TdxEdit
            Left = 689
            Top = 441
            Width = 56
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 63
            Text = 'Datum:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBDateTimePicker9: TwwDBDateTimePicker
            Left = 744
            Top = 441
            Width = 97
            Height = 22
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            ButtonStyle = cbsEllipsis
            DataField = 'Datum_rjesenja'
            DataSource = dsOdrzavanje
            Epoch = 1950
            Frame.Enabled = True
            ShowButton = True
            TabOrder = 38
            UnboundDataType = wwDTEdtDate
            OnKeyDown = DelTimePick
          end
          object dxEdit69: TdxEdit
            Left = 840
            Top = 441
            Width = 33
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 64
            Text = 'NN:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBEdit29: TwwDBEdit
            Tag = 8
            Left = 872
            Top = 441
            Width = 73
            Height = 22
            BorderStyle = bsNone
            DataField = 'NN'
            DataSource = dsOdrzavanje
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 39
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = DajBrojRjesenja
          end
          object wwDBEdit30: TwwDBEdit
            Tag = 6
            Left = 872
            Top = 344
            Width = 73
            Height = 22
            BorderStyle = bsNone
            DataField = 'NN'
            DataSource = dsPriznavanje
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 33
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = DajBrojRjesenja
          end
          object dxEdit70: TdxEdit
            Left = 840
            Top = 344
            Width = 33
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 65
            Text = 'NN:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBDateTimePicker10: TwwDBDateTimePicker
            Left = 744
            Top = 344
            Width = 97
            Height = 22
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            ButtonStyle = cbsEllipsis
            DataField = 'Datum_priznavanja'
            DataSource = dsPriznavanje
            Epoch = 1950
            Frame.Enabled = True
            ShowButton = True
            TabOrder = 32
            UnboundDataType = wwDTEdtDate
            OnKeyDown = DelTimePick
          end
          object dxEdit71: TdxEdit
            Left = 689
            Top = 344
            Width = 56
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 66
            Text = 'Datum:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBEdit31: TwwDBEdit
            Tag = 1
            Left = 480
            Top = 344
            Width = 209
            Height = 22
            Hint = 'F1 - kopiraj zadnji broj rje'#353'enja'
            BorderStyle = bsNone
            DataField = 'Broj_priznavanja'
            DataSource = dsPriznavanje
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            ParentShowHint = False
            ShowHint = True
            TabOrder = 31
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = DajBrojRjesenja
          end
          object dxEdit72: TdxEdit
            Left = 456
            Top = 320
            Width = 177
            Color = clMenu
            Enabled = False
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 67
            Text = '  Rje'#353'enje o priznavanju '
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object dxEdit73: TdxEdit
            Left = 416
            Top = 344
            Width = 65
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 68
            Text = 'Broj:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object DBMemo10: TDBMemo
            Left = 560
            Top = 16
            Width = 273
            Height = 41
            DataField = 'Napomena'
            DataSource = ds
            TabOrder = 75
            OnExit = wwDBEdit1Exit
            OnKeyDown = DBMemo6KeyDown
          end
          object dxEdit112: TdxEdit
            Left = 440
            Top = 16
            Width = 121
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 76
            Text = 'Napomena:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBLookupCombo11: TwwDBLookupCombo
            Tag = 2
            Left = 672
            Top = 208
            Width = 145
            Height = 22
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'Naziv_Drzave'#9'30'#9'Naziv dr'#382'ave'#9'F'#9)
            DataField = 'lookNazivDrzave'
            DataSource = dsDUS
            LookupTable = tDrzava
            LookupField = 'Sifra'
            Options = [loColLines, loSearchOnBackspace]
            Frame.Enabled = True
            Frame.FocusStyle = efsFrameBump
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 27
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = False
            ShowMatchText = True
            OnKeyDown = lookPodnositeljKeyDown
          end
          object dxDBGrid2: TdxDBGrid
            Left = 30
            Top = 335
            Width = 385
            Height = 66
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            DefaultFields = True
            KeyField = 'Podneseni_zahtjevi'
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 77
            OnExit = wwDBGrid1Exit
            OnKeyDown = onKeyGrid
            DataSource = dsDrugiZ
            Filter.Criteria = {00000000}
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoImmediateEditor, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          end
          object dxDBGrid3: TdxDBGrid
            Left = 30
            Top = 431
            Width = 385
            Height = 66
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            DefaultFields = True
            KeyField = 'Sifra_priznata'
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 78
            OnExit = wwDBGrid2Exit
            DataSource = dsPriznataU
            Filter.Criteria = {00000000}
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoImmediateEditor, edgoMouseScroll, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          end
          object dxDBGrid4: TdxDBGrid
            Left = 30
            Top = 528
            Width = 385
            Height = 66
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            DefaultFields = True
            KeyField = 'Sifra_zasticena'
            SummaryGroups = <>
            SummarySeparator = ', '
            TabOrder = 79
            OnExit = wwDBGrid3Exit
            DataSource = dsZasticenaU
            Filter.Criteria = {00000000}
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoImmediateEditor, edgoMouseScroll, edgoShowHourGlass, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          end
          object dxEdit113: TdxEdit
            Left = 808
            Top = 171
            Width = 80
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 80
            Text = 'VCU Status:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object wwDBLookupCombo13: TwwDBLookupCombo
            Left = 890
            Top = 171
            Width = 57
            Height = 22
            BorderStyle = bsNone
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'VCU_oznaka'#9'5'#9#352'ifra'#9#9
              'VCU_Status'#9'40'#9'Status VCU-a'#9#9)
            DataField = 'VCU_oznaka'
            DataSource = ds
            LookupTable = tSvcu
            LookupField = 'VCU_oznaka'
            Options = [loColLines]
            Frame.Enabled = True
            Frame.NonFocusStyle = efsFrameRaised
            TabOrder = 81
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = False
            ShowMatchText = True
            OnCloseUp = wwDBLookupCombo2CloseUp
            OnKeyDown = DelLookup
          end
          object dxEdit46: TdxEdit
            Left = 16
            Top = 72
            Width = 105
            Color = clMenu
            Enabled = False
            Style.BorderStyle = xbsNone
            Style.Edges = []
            Style.Shadow = False
            TabOrder = 82
            Text = 'Odjel:'
            Alignment = taRightJustify
            StyleController = dxEditStyleController1
            StoredValues = 1
          end
          object Panel3: TPanel
            Left = 1
            Top = 1
            Width = 1004
            Height = 639
            Align = alClient
            TabOrder = 69
            Visible = False
            object Bevel6: TBevel
              Left = 30
              Top = 16
              Width = 643
              Height = 108
              Shape = bsFrame
            end
            object Bevel7: TBevel
              Left = 30
              Top = 122
              Width = 643
              Height = 108
              Shape = bsFrame
            end
            object Bevel8: TBevel
              Left = 182
              Top = 16
              Width = 491
              Height = 56
              Shape = bsFrame
            end
            object Bevel9: TBevel
              Left = 182
              Top = 16
              Width = 137
              Height = 214
              Shape = bsFrame
            end
            object Bevel10: TBevel
              Left = 182
              Top = 174
              Width = 491
              Height = 56
              Shape = bsFrame
            end
            object dxEdit84: TdxEdit
              Left = 32
              Top = 24
              Width = 145
              Color = clMenu
              Enabled = False
              Style.BorderStyle = xbsNone
              Style.Edges = []
              Style.Shadow = False
              TabOrder = 0
              Text = 'Klimatsko podru'#269'je'
              OnKeyDown = dxDBGrid1KeyDown
              Alignment = taCenter
              StyleController = dxEditStyleController1
              StoredValues = 1
            end
            object dxEdit85: TdxEdit
              Left = 35
              Top = 41
              Width = 142
              Color = clMenu
              Enabled = False
              Style.BorderStyle = xbsNone
              Style.Edges = []
              Style.Shadow = False
              TabOrder = 19
              Text = 'uzgoja na otvorenom:'
              OnKeyDown = dxDBGrid1KeyDown
              Alignment = taCenter
              StyleController = dxEditStyleController1
              StoredValues = 1
            end
            object dxEdit86: TdxEdit
              Left = 192
              Top = 74
              Width = 121
              Color = clMenu
              Enabled = False
              Style.BorderStyle = xbsNone
              Style.Edges = []
              Style.Shadow = False
              TabOrder = 20
              Text = 'b) Priobalno'
              OnKeyDown = dxDBGrid1KeyDown
              Alignment = taLeftJustify
              StyleController = dxEditStyleController1
              StoredValues = 1
            end
            object dxEdit87: TdxEdit
              Left = 192
              Top = 22
              Width = 121
              Color = clMenu
              Enabled = False
              Style.BorderStyle = xbsNone
              Style.Edges = []
              Style.Shadow = False
              TabOrder = 21
              Text = 'a) Kontinentalno'
              OnKeyDown = dxDBGrid1KeyDown
              Alignment = taLeftJustify
              StyleController = dxEditStyleController1
              StoredValues = 1
            end
            object dxEdit88: TdxEdit
              Left = 184
              Top = 126
              Width = 129
              Color = clMenu
              Enabled = False
              Style.BorderStyle = xbsNone
              Style.Edges = []
              Style.Shadow = False
              TabOrder = 22
              Text = 'a) Grijani prostor'
              OnKeyDown = dxDBGrid1KeyDown
              Alignment = taLeftJustify
              StyleController = dxEditStyleController1
              StoredValues = 1
            end
            object dxEdit89: TdxEdit
              Left = 184
              Top = 178
              Width = 129
              Color = clMenu
              Enabled = False
              Style.BorderStyle = xbsNone
              Style.Edges = []
              Style.Shadow = False
              TabOrder = 23
              Text = 'b) Negrijani prostor'
              OnKeyDown = dxDBGrid1KeyDown
              Alignment = taLeftJustify
              StyleController = dxEditStyleController1
              StoredValues = 1
            end
            object dxEdit90: TdxEdit
              Left = 328
              Top = 150
              Width = 201
              Color = clMenu
              Enabled = False
              Style.BorderStyle = xbsNone
              Style.Edges = []
              Style.Shadow = False
              TabOrder = 24
              Text = '- Razdoblje berbe               od'
              OnKeyDown = dxDBGrid1KeyDown
              Alignment = taLeftJustify
              StyleController = dxEditStyleController1
              StoredValues = 1
            end
            object dxEdit91: TdxEdit
              Left = 328
              Top = 178
              Width = 201
              Color = clMenu
              Enabled = False
              Style.BorderStyle = xbsNone
              Style.Edges = []
              Style.Shadow = False
              TabOrder = 25
              Text = '- Razdoblje sjetve (sadnje)  od'
              OnKeyDown = dxDBGrid1KeyDown
              Alignment = taLeftJustify
              StyleController = dxEditStyleController1
              StoredValues = 1
            end
            object dxEdit92: TdxEdit
              Left = 328
              Top = 202
              Width = 201
              Color = clMenu
              Enabled = False
              Style.BorderStyle = xbsNone
              Style.Edges = []
              Style.Shadow = False
              TabOrder = 26
              Text = '- Razdoblje berbe               od'
              OnKeyDown = dxDBGrid1KeyDown
              Alignment = taLeftJustify
              StyleController = dxEditStyleController1
              StoredValues = 1
            end
            object dxEdit93: TdxEdit
              Left = 328
              Top = 126
              Width = 201
              Color = clMenu
              Enabled = False
              Style.BorderStyle = xbsNone
              Style.Edges = []
              Style.Shadow = False
              TabOrder = 27
              Text = '- Razdoblje sjetve (sadnje)  od'
              OnKeyDown = dxDBGrid1KeyDown
              Alignment = taLeftJustify
              StyleController = dxEditStyleController1
              StoredValues = 1
            end
            object dxEdit94: TdxEdit
              Left = 328
              Top = 98
              Width = 201
              Color = clMenu
              Enabled = False
              Style.BorderStyle = xbsNone
              Style.Edges = []
              Style.Shadow = False
              TabOrder = 28
              Text = '- Razdoblje berbe               od'
              OnKeyDown = dxDBGrid1KeyDown
              Alignment = taLeftJustify
              StyleController = dxEditStyleController1
              StoredValues = 1
            end
            object dxEdit95: TdxEdit
              Left = 328
              Top = 74
              Width = 201
              Color = clMenu
              Enabled = False
              Style.BorderStyle = xbsNone
              Style.Edges = []
              Style.Shadow = False
              TabOrder = 29
              Text = '- Razdoblje sjetve (sadnje)  od'
              OnKeyDown = dxDBGrid1KeyDown
              Alignment = taLeftJustify
              StyleController = dxEditStyleController1
              StoredValues = 1
            end
            object dxEdit96: TdxEdit
              Left = 328
              Top = 46
              Width = 201
              Color = clMenu
              Enabled = False
              Style.BorderStyle = xbsNone
              Style.Edges = []
              Style.Shadow = False
              TabOrder = 30
              Text = '- Razdoblje berbe               od'
              OnKeyDown = dxDBGrid1KeyDown
              Alignment = taLeftJustify
              StyleController = dxEditStyleController1
              StoredValues = 1
            end
            object dxEdit97: TdxEdit
              Left = 328
              Top = 22
              Width = 201
              Color = clMenu
              Enabled = False
              Style.BorderStyle = xbsNone
              Style.Edges = []
              Style.Shadow = False
              TabOrder = 31
              Text = '- Razdoblje sjetve (sadnje)  od'
              OnKeyDown = dxDBGrid1KeyDown
              Alignment = taLeftJustify
              StyleController = dxEditStyleController1
              StoredValues = 1
            end
            object wwDBDateTimePicker23: TwwDBDateTimePicker
              Left = 528
              Top = 22
              Width = 57
              Height = 22
              BorderStyle = bsNone
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              ButtonStyle = cbsEllipsis
              DataField = 'Kont_sjetva_od'
              DataSource = dsDetPov
              Epoch = 1950
              Frame.Enabled = True
              ShowButton = True
              TabOrder = 1
              DisplayFormat = 'dd.mm'
              OnKeyDown = DelTimePick
            end
            object wwDBDateTimePicker24: TwwDBDateTimePicker
              Left = 528
              Top = 46
              Width = 57
              Height = 22
              BorderStyle = bsNone
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              ButtonStyle = cbsEllipsis
              DataField = 'Kont_berba_od'
              DataSource = dsDetPov
              Epoch = 1950
              Frame.Enabled = True
              ShowButton = True
              TabOrder = 3
              DisplayFormat = 'dd.mm'
              OnKeyDown = DelTimePick
            end
            object wwDBDateTimePicker25: TwwDBDateTimePicker
              Left = 528
              Top = 74
              Width = 57
              Height = 22
              BorderStyle = bsNone
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              ButtonStyle = cbsEllipsis
              DataField = 'Priob_sjetva_od'
              DataSource = dsDetPov
              Epoch = 1950
              Frame.Enabled = True
              ShowButton = True
              TabOrder = 5
              DisplayFormat = 'dd.mm'
              OnKeyDown = DelTimePick
            end
            object wwDBDateTimePicker26: TwwDBDateTimePicker
              Left = 528
              Top = 98
              Width = 57
              Height = 22
              BorderStyle = bsNone
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              ButtonStyle = cbsEllipsis
              DataField = 'Priob_berba_od'
              DataSource = dsDetPov
              Epoch = 1950
              Frame.Enabled = True
              ShowButton = True
              TabOrder = 7
              DisplayFormat = 'dd.mm'
              OnKeyDown = DelTimePick
            end
            object wwDBDateTimePicker27: TwwDBDateTimePicker
              Left = 528
              Top = 126
              Width = 57
              Height = 22
              BorderStyle = bsNone
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              ButtonStyle = cbsEllipsis
              DataField = 'Grijan_sjetva_od'
              DataSource = dsDetPov
              Epoch = 1950
              Frame.Enabled = True
              ShowButton = True
              TabOrder = 9
              DisplayFormat = 'dd.mm'
              OnKeyDown = DelTimePick
            end
            object wwDBDateTimePicker28: TwwDBDateTimePicker
              Left = 528
              Top = 150
              Width = 57
              Height = 22
              BorderStyle = bsNone
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              ButtonStyle = cbsEllipsis
              DataField = 'Grijan_berba_od'
              DataSource = dsDetPov
              Epoch = 1950
              Frame.Enabled = True
              ShowButton = True
              TabOrder = 11
              DisplayFormat = 'dd.mm'
              OnKeyDown = DelTimePick
            end
            object wwDBDateTimePicker29: TwwDBDateTimePicker
              Left = 528
              Top = 178
              Width = 57
              Height = 22
              BorderStyle = bsNone
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              ButtonStyle = cbsEllipsis
              DataField = 'Negri_sjetva_od'
              DataSource = dsDetPov
              Epoch = 1950
              Frame.Enabled = True
              ShowButton = True
              TabOrder = 13
              DisplayFormat = 'dd.mm'
              OnKeyDown = DelTimePick
            end
            object wwDBDateTimePicker30: TwwDBDateTimePicker
              Left = 528
              Top = 202
              Width = 57
              Height = 22
              BorderStyle = bsNone
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              ButtonStyle = cbsEllipsis
              DataField = 'Negri_berba_od'
              DataSource = dsDetPov
              Epoch = 1950
              Frame.Enabled = True
              ShowButton = True
              TabOrder = 15
              DisplayFormat = 'dd.mm'
              OnKeyDown = DelTimePick
            end
            object wwDBDateTimePicker31: TwwDBDateTimePicker
              Left = 608
              Top = 202
              Width = 57
              Height = 22
              BorderStyle = bsNone
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              ButtonStyle = cbsEllipsis
              DataField = 'Negri_berba_do'
              DataSource = dsDetPov
              Epoch = 1950
              Frame.Enabled = True
              ShowButton = True
              TabOrder = 16
              DisplayFormat = 'dd.mm'
              OnKeyDown = DelTimePick
            end
            object wwDBDateTimePicker32: TwwDBDateTimePicker
              Left = 608
              Top = 178
              Width = 57
              Height = 22
              BorderStyle = bsNone
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              ButtonStyle = cbsEllipsis
              DataField = 'Negri_sjetva_do'
              DataSource = dsDetPov
              Epoch = 1950
              Frame.Enabled = True
              ShowButton = True
              TabOrder = 14
              DisplayFormat = 'dd.mm'
              OnKeyDown = DelTimePick
            end
            object wwDBDateTimePicker33: TwwDBDateTimePicker
              Left = 608
              Top = 150
              Width = 57
              Height = 22
              BorderStyle = bsNone
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              ButtonStyle = cbsEllipsis
              DataField = 'Grijan_berba_do'
              DataSource = dsDetPov
              Epoch = 1950
              Frame.Enabled = True
              ShowButton = True
              TabOrder = 12
              DisplayFormat = 'dd.mm'
              OnKeyDown = DelTimePick
            end
            object wwDBDateTimePicker34: TwwDBDateTimePicker
              Left = 608
              Top = 126
              Width = 57
              Height = 22
              BorderStyle = bsNone
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              ButtonStyle = cbsEllipsis
              DataField = 'Grijan_sjetva_do'
              DataSource = dsDetPov
              Epoch = 1950
              Frame.Enabled = True
              ShowButton = True
              TabOrder = 10
              DisplayFormat = 'dd.mm'
              OnKeyDown = DelTimePick
            end
            object wwDBDateTimePicker35: TwwDBDateTimePicker
              Left = 608
              Top = 98
              Width = 57
              Height = 22
              BorderStyle = bsNone
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              ButtonStyle = cbsEllipsis
              DataField = 'Priob_berba_do'
              DataSource = dsDetPov
              Epoch = 1950
              Frame.Enabled = True
              ShowButton = True
              TabOrder = 8
              DisplayFormat = 'dd.mm'
              OnKeyDown = DelTimePick
            end
            object wwDBDateTimePicker36: TwwDBDateTimePicker
              Left = 608
              Top = 74
              Width = 57
              Height = 22
              BorderStyle = bsNone
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              ButtonStyle = cbsEllipsis
              DataField = 'Priob_sjetva_do'
              DataSource = dsDetPov
              Epoch = 1950
              Frame.Enabled = True
              ShowButton = True
              TabOrder = 6
              DisplayFormat = 'dd.mm'
              OnKeyDown = DelTimePick
            end
            object wwDBDateTimePicker37: TwwDBDateTimePicker
              Left = 608
              Top = 46
              Width = 57
              Height = 22
              BorderStyle = bsNone
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              ButtonStyle = cbsEllipsis
              DataField = 'Kont_berba_do'
              DataSource = dsDetPov
              Epoch = 1950
              Frame.Enabled = True
              ShowButton = True
              TabOrder = 4
              DisplayFormat = 'dd.mm'
              OnKeyDown = DelTimePick
            end
            object wwDBDateTimePicker38: TwwDBDateTimePicker
              Left = 608
              Top = 22
              Width = 57
              Height = 22
              BorderStyle = bsNone
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              ButtonStyle = cbsEllipsis
              DataField = 'Kont_sjetva_do'
              DataSource = dsDetPov
              Epoch = 1950
              Frame.Enabled = True
              ShowButton = True
              TabOrder = 2
              DisplayFormat = 'dd.mm'
              OnKeyDown = DelTimePick
            end
            object dxEdit98: TdxEdit
              Left = 584
              Top = 22
              Width = 25
              Color = clMenu
              Enabled = False
              Style.BorderStyle = xbsNone
              Style.Edges = []
              Style.Shadow = False
              TabOrder = 32
              Text = 'do'
              OnKeyDown = dxDBGrid1KeyDown
              Alignment = taLeftJustify
              StyleController = dxEditStyleController1
              StoredValues = 1
            end
            object dxEdit99: TdxEdit
              Left = 584
              Top = 46
              Width = 25
              Color = clMenu
              Enabled = False
              Style.BorderStyle = xbsNone
              Style.Edges = []
              Style.Shadow = False
              TabOrder = 33
              Text = 'do'
              OnKeyDown = dxDBGrid1KeyDown
              Alignment = taLeftJustify
              StyleController = dxEditStyleController1
              StoredValues = 1
            end
            object dxEdit100: TdxEdit
              Left = 584
              Top = 74
              Width = 25
              Color = clMenu
              Enabled = False
              Style.BorderStyle = xbsNone
              Style.Edges = []
              Style.Shadow = False
              TabOrder = 34
              Text = 'do'
              OnKeyDown = dxDBGrid1KeyDown
              Alignment = taLeftJustify
              StyleController = dxEditStyleController1
              StoredValues = 1
            end
            object dxEdit101: TdxEdit
              Left = 584
              Top = 98
              Width = 25
              Color = clMenu
              Enabled = False
              Style.BorderStyle = xbsNone
              Style.Edges = []
              Style.Shadow = False
              TabOrder = 35
              Text = 'do'
              OnKeyDown = dxDBGrid1KeyDown
              Alignment = taLeftJustify
              StyleController = dxEditStyleController1
              StoredValues = 1
            end
            object dxEdit102: TdxEdit
              Left = 584
              Top = 126
              Width = 25
              Color = clMenu
              Enabled = False
              Style.BorderStyle = xbsNone
              Style.Edges = []
              Style.Shadow = False
              TabOrder = 36
              Text = 'do'
              OnKeyDown = dxDBGrid1KeyDown
              Alignment = taLeftJustify
              StyleController = dxEditStyleController1
              StoredValues = 1
            end
            object dxEdit103: TdxEdit
              Left = 584
              Top = 150
              Width = 25
              Color = clMenu
              Enabled = False
              Style.BorderStyle = xbsNone
              Style.Edges = []
              Style.Shadow = False
              TabOrder = 37
              Text = 'do'
              OnKeyDown = dxDBGrid1KeyDown
              Alignment = taLeftJustify
              StyleController = dxEditStyleController1
              StoredValues = 1
            end
            object dxEdit104: TdxEdit
              Left = 584
              Top = 178
              Width = 25
              Color = clMenu
              Enabled = False
              Style.BorderStyle = xbsNone
              Style.Edges = []
              Style.Shadow = False
              TabOrder = 38
              Text = 'do'
              OnKeyDown = dxDBGrid1KeyDown
              Alignment = taLeftJustify
              StyleController = dxEditStyleController1
              StoredValues = 1
            end
            object dxEdit105: TdxEdit
              Left = 584
              Top = 202
              Width = 25
              Color = clMenu
              Enabled = False
              Style.BorderStyle = xbsNone
              Style.Edges = []
              Style.Shadow = False
              TabOrder = 39
              Text = 'do'
              OnKeyDown = dxDBGrid1KeyDown
              Alignment = taLeftJustify
              StyleController = dxEditStyleController1
              StoredValues = 1
            end
            object dxEdit80: TdxEdit
              Left = 48
              Top = 256
              Width = 257
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
              TabOrder = 40
              Text = 'Otpornost na bolesti i '#353'tetnike:'
              Alignment = taLeftJustify
              StyleController = dxEditStyleController1
              StoredValues = 1
            end
            object gStetnici: TwwDBGrid
              Left = 24
              Top = 288
              Width = 457
              Height = 83
              ControlType.Strings = (
                'Rezistentnost;CheckBox;True;False'
                'Tolerantnost;CheckBox;True;False')
              Selected.Strings = (
                'Bolest_stetnik'#9'35'#9'Bolest ili '#353'tetnik'
                'Tolerantnost'#9'11'#9'Tolerantnost'
                'Rezistentnost'#9'12'#9'Rezistentnost')
              IniAttributes.Delimiter = ';;'
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              Ctl3D = False
              DataSource = dsOtpornost
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgTabExitsOnLastCol]
              ParentCtl3D = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 17
              TitleAlignment = taCenter
              TitleFont.Charset = EASTEUROPE_CHARSET
              TitleFont.Color = clNavy
              TitleFont.Height = -13
              TitleFont.Name = 'Arial'
              TitleFont.Style = [fsBold]
              TitleLines = 1
              TitleButtons = False
              OnExit = gStetniciExit
            end
            object dxEdit79: TdxEdit
              Left = 16
              Top = 384
              Width = 233
              Color = clMenu
              Enabled = False
              Style.BorderStyle = xbsNone
              Style.Edges = []
              Style.Shadow = False
              TabOrder = 41
              Text = 'Preporu'#269'eni sklop:  Biljaka po m2:'
              OnKeyDown = dxDBGrid1KeyDown
              Alignment = taRightJustify
              StyleController = dxEditStyleController1
              StoredValues = 1
            end
            object wwDBEdit23: TwwDBEdit
              Left = 256
              Top = 384
              Width = 177
              Height = 22
              BorderStyle = bsNone
              DataField = 'Preporuceni_sklo'
              DataSource = dsDetPov
              Frame.Enabled = True
              Frame.NonFocusStyle = efsFrameRaised
              TabOrder = 18
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
          end
        end
        object ToolBar2: TToolBar
          Left = 1
          Top = 1
          Width = 1006
          Height = 28
          ButtonWidth = 98
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
              Enabled = False
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
              Enabled = False
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
              OnClick = wwNavButton4Click
              Index = 2
              Style = nbsCustom
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
            OnClick = DBNavigator1Click
          end
          object Print: TToolButton
            Left = 465
            Top = 2
            AutoSize = True
            Caption = 'Printanje'
            DropdownMenu = PopupMenu1
            Enabled = False
            ImageIndex = 7
            Visible = False
          end
          object ToolButton1: TToolButton
            Left = 537
            Top = 2
            Caption = ' Detalji povr'#263'a '
            ImageIndex = 8
            OnClick = ToolButton1Click
          end
        end
      end
    end
  end
  object tPartner: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'Ime_partnera'
    ReadOnly = True
    TableName = 'Partner.DB'
    Left = 276
    Top = 219
    object tPartnerIme_partnera: TStringField
      DisplayWidth = 60
      FieldName = 'Ime_partnera'
      Size = 60
    end
    object tPartnerAdresa: TStringField
      DisplayWidth = 60
      FieldName = 'Adresa'
      Size = 60
    end
    object tPartnerMjesto: TStringField
      DisplayWidth = 25
      FieldName = 'Mjesto'
      Size = 25
    end
    object tPartnerSifra_partnera: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Sifra_partnera'
      ReadOnly = True
    end
  end
  object dsPartner: TDataSource
    DataSet = tPartner
    Left = 304
    Top = 219
  end
  object tPartner2: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'Ime_partnera'
    ReadOnly = True
    TableName = 'Partner.DB'
    Left = 276
    Top = 251
    object StringField9: TStringField
      DisplayLabel = 'Ime partnera'
      DisplayWidth = 30
      FieldName = 'Ime_partnera'
      Size = 30
    end
    object StringField10: TStringField
      DisplayWidth = 30
      FieldName = 'Adresa'
      Size = 30
    end
    object StringField11: TStringField
      DisplayWidth = 25
      FieldName = 'Mjesto'
      Size = 25
    end
    object tPartner2Drzava: TStringField
      CustomConstraint = 'Dr'#382'ava'
      FieldName = 'Drzava'
      Size = 30
    end
    object StringField13: TStringField
      DisplayWidth = 15
      FieldName = 'Telefon1'
      Visible = False
      Size = 15
    end
    object StringField14: TStringField
      DisplayWidth = 15
      FieldName = 'Telefon2'
      Visible = False
      Size = 15
    end
    object StringField15: TStringField
      DisplayWidth = 15
      FieldName = 'Fax'
      Visible = False
      Size = 15
    end
    object StringField16: TStringField
      DisplayWidth = 30
      FieldName = 'Email'
      Visible = False
      Size = 30
    end
    object AutoIncField2: TAutoIncField
      FieldName = 'Sifra_partnera'
      ReadOnly = True
      Visible = False
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'Datum_promjene'
      ReadOnly = True
      Required = True
      Visible = False
    end
  end
  object dsPartner2: TDataSource
    DataSet = tPartner2
    Left = 304
    Top = 251
  end
  object dsDrugiZ: TDataSource
    DataSet = qDrugiZ
    OnStateChange = GridStateChange
    Left = 128
    Top = 413
  end
  object dsPriznataU: TDataSource
    DataSet = qPriznataU
    OnStateChange = dsPriznataUStateChange
    Left = 128
    Top = 509
  end
  object tPartner3: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'Sifra_partnera'
    ReadOnly = True
    TableName = 'Partner.DB'
    Left = 340
    Top = 619
    object StringField1: TStringField
      DisplayLabel = 'Ime partnera'
      DisplayWidth = 30
      FieldName = 'Ime_partnera'
      Size = 30
    end
    object StringField2: TStringField
      DisplayWidth = 30
      FieldName = 'Adresa'
      Size = 30
    end
    object StringField3: TStringField
      DisplayWidth = 25
      FieldName = 'Mjesto'
      Size = 25
    end
    object tPartner3Drzava: TStringField
      CustomConstraint = 'Dr'#382'ava'
      FieldName = 'Drzava'
      Size = 30
    end
    object StringField5: TStringField
      DisplayWidth = 15
      FieldName = 'Telefon1'
      Visible = False
      Size = 15
    end
    object StringField6: TStringField
      DisplayWidth = 15
      FieldName = 'Telefon2'
      Visible = False
      Size = 15
    end
    object StringField7: TStringField
      DisplayWidth = 15
      FieldName = 'Fax'
      Visible = False
      Size = 15
    end
    object StringField8: TStringField
      DisplayWidth = 30
      FieldName = 'Email'
      Visible = False
      Size = 30
    end
    object AutoIncField1: TAutoIncField
      FieldName = 'Sifra_partnera'
      ReadOnly = True
      Visible = False
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'Datum_promjene'
      ReadOnly = True
      Required = True
      Visible = False
    end
  end
  object dsPartner3: TDataSource
    DataSet = tPartner3
    Left = 368
    Top = 619
  end
  object qDrugiZ: TQuery
    Tag = 1
    Active = True
    AfterOpen = qDrugiZAfterOpen
    BeforeInsert = PostajMastera
    BeforePost = PrijePosta
    AfterPost = PosljePosta
    DatabaseName = 'kulture'
    DataSource = ds
    RequestLive = True
    SQL.Strings = (
      
        'SELECT Podneseni_zahtjevi, Sifra_zahtjeva, Godina, Datum_promjen' +
        'e'
      'FROM Drugi_zahtjevi'
      'WHERE Sifra_zahtjeva=:Sifra_zahtjeva')
    Left = 99
    Top = 414
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'Sifra_zahtjeva'
        ParamType = ptUnknown
        Size = 4
      end>
    object qDrugiZlookNazivDrzave: TStringField
      DisplayLabel = 'Zemlja'
      DisplayWidth = 42
      FieldKind = fkLookup
      FieldName = 'lookNazivDrzave'
      LookupDataSet = tDrzava2
      LookupKeyFields = 'Sifra'
      LookupResultField = 'Naziv_Drzave'
      KeyFields = 'Podneseni_zahtjevi'
      Size = 30
      Lookup = True
    end
    object qDrugiZGodina: TStringField
      DisplayWidth = 6
      FieldName = 'Godina'
      Origin = 'KULTURE."Drugi_zahtjevi.DB".Godina'
      Size = 4
    end
    object qDrugiZPodneseni_zahtjevi: TIntegerField
      DisplayLabel = 'Zemlja'
      DisplayWidth = 42
      FieldName = 'Podneseni_zahtjevi'
      Origin = 'KULTURE."Drugi_zahtjevi.DB".Podneseni_zahtjevi'
      Visible = False
    end
    object qDrugiZDatum_promjene: TDateTimeField
      FieldName = 'Datum_promjene'
      Origin = 'KULTURE."Drugi_zahtjevi.DB".Datum_promjene'
      Visible = False
    end
    object qDrugiZSifra_zahtjeva: TIntegerField
      FieldName = 'Sifra_zahtjeva'
      Origin = 'KULTURE."Drugi_zahtjevi.DB".Sifra_zahtjeva'
      Visible = False
    end
  end
  object qPriznataU: TQuery
    Tag = 2
    Active = True
    AfterOpen = qPriznataUAfterOpen
    BeforeInsert = PostajMastera
    BeforePost = PrijePosta
    AfterPost = PosljePosta
    DatabaseName = 'kulture'
    DataSource = ds
    RequestLive = True
    SQL.Strings = (
      
        'SELECT Sifra_priznata, Godina, Drzava, Sifra_zahtjeva, Datum_pro' +
        'mjene'
      'FROM Priznata_u'
      'WHERE Sifra_zahtjeva=:Sifra_zahtjeva')
    Left = 99
    Top = 509
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'Sifra_zahtjeva'
        ParamType = ptUnknown
        Size = 4
      end>
    object qPriznataUSifra_priznata: TAutoIncField
      FieldName = 'Sifra_priznata'
      Origin = 'KULTURE."Priznata_u.DB".Sifra_priznata'
      ReadOnly = True
      Visible = False
    end
    object qPriznataUlookNazivDrzave: TStringField
      DisplayLabel = 'Zemlja'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'lookNazivDrzave'
      LookupDataSet = tDrzava3
      LookupKeyFields = 'Sifra'
      LookupResultField = 'Naziv_Drzave'
      KeyFields = 'Drzava'
      Size = 40
      Lookup = True
    end
    object qPriznataUDrzava: TIntegerField
      DisplayLabel = 'Dr'#382'ava'
      FieldName = 'Drzava'
      Origin = 'KULTURE."Priznata_u.DB".Drzava'
      Visible = False
    end
    object qPriznataUGodina: TStringField
      Alignment = taCenter
      DisplayWidth = 8
      FieldName = 'Godina'
      Origin = 'KULTURE."Priznata_u.DB".Godina'
      Size = 4
    end
    object qPriznataUDatum_promjene: TDateTimeField
      FieldName = 'Datum_promjene'
      Origin = 'KULTURE."Priznata_u.DB".Datum_promjene'
      Visible = False
    end
    object qPriznataUSifra_zahtjeva: TIntegerField
      FieldName = 'Sifra_zahtjeva'
      Origin = 'KULTURE."Priznata_u.DB".Sifra_zahtjeva'
      Visible = False
    end
  end
  object wwT: TwwTable
    AfterOpen = wwTAfterOpen
    BeforeClose = wwTBeforeClose
    AfterInsert = wwTAfterInsert
    BeforePost = wwTBeforePost
    AfterPost = wwTAfterPost
    AfterCancel = wwTAfterCancel
    OnPostError = wwTPostError
    DatabaseName = 'kulture'
    Filter = 'Tip_zahtjeva=2'
    Filtered = True
    IndexFieldNames = 'Sifra_zahtjeva'
    TableName = 'Priznanje_PB.DB'
    LookupFields.Strings = (
      'look_ImePodn;kulture;Partner.DB;Ime_partnera;;Sifra_partnera;Y'
      'look_ImeOplem;kulture;Partner.DB;Ime_partnera;;Sifra_partnera;Y'
      
        'look_ImeVlasnik;kulture;Partner.DB;Ime_partnera;;Sifra_partnera;' +
        'Y'
      
        'look_Kontakt;kulture;Kontakti.DB;Prezime_kontakta;;Sifra_Kontakt' +
        'a;Y')
    LookupLinks.Strings = (
      'Sifra_podnositelja;Sifra_partnera'
      'Sifra_oplemenjivaca;Sifra_partnera'
      'Sifra_vlasnik;Sifra_partnera'
      'Kontakt;Sifra_Kontakta')
    ControlType.Strings = (
      'Tehnicki_upitnik;CheckBox;True;False'
      'look_ImeOplem;CustomEdit;wwDBLookupCombo3;F'
      'look_ImeVlasnik;CustomEdit;wwDBLookupCombo4;F'
      'look_ImePodn;CustomEdit;wwDBLookupPodnositelj;F'
      'Sifra_druga_zemlja;CustomEdit;wwDBLookupCombo2;F')
    PictureMasks.Strings = (
      'Upisni_broj'#9'######'#9'T'#9'T')
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 619
    Top = 11
    object wwTSifra_zahtjeva: TAutoIncField
      FieldName = 'Sifra_zahtjeva'
      ReadOnly = True
      Visible = False
    end
    object wwTSifra_dok: TSmallintField
      DisplayWidth = 10
      FieldName = 'Sifra_dok'
      Required = True
    end
    object wwTUpisni_broj: TStringField
      Alignment = taRightJustify
      DisplayWidth = 15
      FieldName = 'Upisni_broj'
      Required = True
      Size = 15
    end
    object wwTDatum_prijavljivanja: TDateField
      DisplayWidth = 10
      FieldName = 'Datum_prijavljivanja'
      EditMask = '!99/99/0000;1;_'
    end
    object wwTTehnicki_upitnik: TBooleanField
      DisplayWidth = 5
      FieldName = 'Tehnicki_upitnik'
    end
    object wwTlook_ImePodn: TStringField
      DisplayLabel = 'Ime Podnositelja'
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'look_ImePodn'
      KeyFields = 'Sifra_podnositelja'
      Size = 60
      Calculated = True
    end
    object wwTlook_ImeOplem: TStringField
      DisplayLabel = 'Ime opleminjiva'#269'a'
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'look_ImeOplem'
      KeyFields = 'Sifra_oplemenjivaca'
      Size = 60
      Calculated = True
    end
    object wwTlook_ImeVlasnik: TStringField
      DisplayLabel = 'Vlsanik sorte'
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'look_ImeVlasnik'
      KeyFields = 'Sifra_vlasnik'
      Size = 60
      Calculated = True
    end
    object wwTlook_ImeOdrzivaca: TStringField
      FieldKind = fkLookup
      FieldName = 'look_ImeOdrzivaca'
      LookupDataSet = tPartner4
      LookupKeyFields = 'Sifra_partnera'
      LookupResultField = 'Ime_partnera'
      KeyFields = 'Sifra_odrzivac'
      Size = 60
      Lookup = True
    end
    object wwTPunomoc: TBooleanField
      DisplayWidth = 5
      FieldName = 'Punomoc'
    end
    object wwTTip_zahtjeva: TSmallintField
      DisplayWidth = 10
      FieldName = 'Tip_zahtjeva'
    end
    object wwTVCU_oznaka: TStringField
      DisplayWidth = 5
      FieldName = 'VCU_oznaka'
      KeyFields = 'VCU_oznaka'
      Size = 5
    end
    object wwTDUS_oznaka: TStringField
      DisplayWidth = 5
      FieldName = 'DUS_oznaka'
      KeyFields = 'DUS_oznaka'
      Size = 5
    end
    object wwTOznaka_sorte: TStringField
      DisplayWidth = 30
      FieldName = 'Oznaka_sorte'
      Size = 30
    end
    object wwTIme_sorte: TStringField
      DisplayWidth = 30
      FieldName = 'Ime_sorte'
      Size = 30
    end
    object wwTNamjena: TMemoField
      DisplayWidth = 10
      FieldName = 'Namjena'
      BlobType = ftMemo
      Size = 240
    end
    object wwTNapomena: TMemoField
      FieldName = 'Napomena'
      BlobType = ftMemo
      Size = 240
    end
    object wwTNamPov1: TBooleanField
      DisplayWidth = 5
      FieldName = 'NamPov1'
    end
    object wwTNamPov2: TBooleanField
      DisplayWidth = 5
      FieldName = 'NamPov2'
    end
    object wwTNamPov3: TBooleanField
      DisplayWidth = 5
      FieldName = 'NamPov3'
    end
    object wwTRegistriranu_u: TStringField
      DisplayWidth = 30
      FieldName = 'Registriranu_u'
      Size = 30
    end
    object wwTDok_registracije: TStringField
      DisplayWidth = 20
      FieldName = 'Dok_registracije'
    end
    object wwTDatum_promjene: TDateTimeField
      DisplayWidth = 18
      FieldName = 'Datum_promjene'
    end
    object wwTSifra_vrste: TIntegerField
      FieldName = 'Sifra_vrste'
    end
    object wwTlook_Vrsta_hr: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'look_Vrsta_hr'
      LookupDataSet = tVrsta
      LookupKeyFields = 'Sifra_vrste'
      LookupResultField = 'Vrsta_hrv'
      KeyFields = 'Sifra_vrste'
      Size = 30
      Lookup = True
    end
    object wwTlook_Vrsta_LAT: TStringField
      DisplayWidth = 60
      FieldKind = fkLookup
      FieldName = 'look_Vrsta_LAT'
      LookupDataSet = tVrsta
      LookupKeyFields = 'Sifra_vrste'
      LookupResultField = 'Vrsta_lat'
      KeyFields = 'Sifra_vrste'
      Size = 120
      Lookup = True
    end
    object wwTlook_Kontakt: TStringField
      DisplayLabel = 'Ime kontakta'
      FieldKind = fkLookup
      FieldName = 'look_Kontakt'
      LookupDataSet = qKontakti
      LookupKeyFields = 'sifra_kontakta'
      LookupResultField = 'ime'
      KeyFields = 'Kontakt'
      Size = 30
      Lookup = True
    end
    object wwTKontakt: TIntegerField
      FieldName = 'Kontakt'
    end
    object wwTOdjel: TIntegerField
      FieldName = 'Odjel'
    end
    object wwTSifra_klase: TSmallintField
      FieldName = 'Sifra_klase'
    end
    object wwTlook_Klasa: TSmallintField
      FieldKind = fkLookup
      FieldName = 'look_Klasa'
      LookupDataSet = tVrsta
      LookupKeyFields = 'Sifra_vrste'
      LookupResultField = 'Klasa'
      KeyFields = 'Sifra_vrste'
      Lookup = True
    end
    object wwTSifra_podnositelja: TIntegerField
      FieldName = 'Sifra_podnositelja'
      Required = True
      Visible = False
    end
    object wwTSifra_oplemenjivaca: TIntegerField
      FieldName = 'Sifra_oplemenjivaca'
      Required = True
      Visible = False
    end
    object wwTSifra_druga_zemlja: TIntegerField
      FieldName = 'Sifra_druga_zemlja'
      Visible = False
    end
    object wwTSifra_priznata_u: TIntegerField
      FieldName = 'Sifra_priznata_u'
      Visible = False
    end
    object wwTSifra_priznata: TIntegerField
      FieldName = 'Sifra_priznata'
      Visible = False
    end
    object wwTSifra_zasticena: TIntegerField
      FieldName = 'Sifra_zasticena'
      Visible = False
    end
    object wwTSifra_vlasnik: TIntegerField
      FieldName = 'Sifra_vlasnik'
      Visible = False
    end
    object wwTSifra_odrzivac: TIntegerField
      FieldName = 'Sifra_odrzivac'
      Visible = False
    end
    object wwTlook_Odjel: TStringField
      DisplayWidth = 60
      FieldKind = fkLookup
      FieldName = 'look_Odjel'
      LookupDataSet = qOdjel
      LookupKeyFields = 'sifra'
      LookupResultField = 'naziv_odjela'
      KeyFields = 'Odjel'
      Size = 60
      Lookup = True
    end
  end
  object ds: TwwDataSource
    DataSet = wwT
    OnStateChange = dsStateChange
    Left = 588
    Top = 11
  end
  object dxEditStyleController1: TdxEditStyleController
    BorderStyle = xbsNone
    Left = 416
  end
  object qZasticenaU: TQuery
    Tag = 3
    Active = True
    AfterOpen = qZasticenaUAfterOpen
    BeforeInsert = PostajMastera
    BeforePost = PrijePosta
    AfterPost = PosljePosta
    DatabaseName = 'kulture'
    DataSource = ds
    RequestLive = True
    SQL.Strings = (
      'SELECT Sifra_zasticena, Drzava, Ime, Godina, Sifra_zahtjeva, '
      'Datum_promjene'
      'FROM Zasticena'
      'WHERE Sifra_zahtjeva=:Sifra_zahtjeva')
    Left = 91
    Top = 621
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'Sifra_zahtjeva'
        ParamType = ptUnknown
        Size = 4
      end>
    object qZasticenaUDrzava: TIntegerField
      DisplayLabel = 'Zemlja'
      DisplayWidth = 20
      FieldName = 'Drzava'
      Origin = 'KULTURE."Zasticena.DB".Drzava'
      Visible = False
    end
    object qZasticenaUlookNazivDrzave: TStringField
      DisplayLabel = 'Zemlja'
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'lookNazivDrzave'
      LookupDataSet = tDrzava4
      LookupKeyFields = 'Sifra'
      LookupResultField = 'Naziv_Drzave'
      KeyFields = 'Drzava'
      Size = 30
      Lookup = True
    end
    object qZasticenaUIme: TStringField
      DisplayLabel = 'Ime sorte'
      DisplayWidth = 20
      FieldName = 'Ime'
      Origin = 'KULTURE."Zasticena.DB".Ime'
    end
    object qZasticenaUGodina: TStringField
      Alignment = taCenter
      DisplayWidth = 8
      FieldName = 'Godina'
      Origin = 'KULTURE."Zasticena.DB".Godina'
      Size = 4
    end
    object qZasticenaUDatum_promjene: TDateTimeField
      FieldName = 'Datum_promjene'
      Origin = 'KULTURE."Zasticena.DB".Datum_promjene'
      Visible = False
    end
    object qZasticenaUSifra_zasticena: TAutoIncField
      FieldName = 'Sifra_zasticena'
      Origin = 'KULTURE."Zasticena.DB".Sifra_zasticena'
      ReadOnly = True
      Visible = False
    end
    object qZasticenaUSifra_zahtjeva: TIntegerField
      FieldName = 'Sifra_zahtjeva'
      Origin = 'KULTURE."Zasticena.DB".Sifra_zahtjeva'
      Visible = False
    end
  end
  object dsZasticenaU: TDataSource
    DataSet = qZasticenaU
    OnStateChange = dsZasticenaUStateChange
    Left = 120
    Top = 621
  end
  object Zahtjev_Master: TQuery
    DatabaseName = 'kulture'
    SQL.Strings = (
      
        'SELECT Priznanje_pb.sifra_dok, Priznanje_pb.Upisni_broj Upisni_b' +
        'roj, '
      'Priznanje_pb.Datum_prijavljivanja, '
      'Priznanje_pb.Ime_sorte, Vrsta.Vrsta_hrv, Vrsta.Vrsta_lat, '
      
        'Partner.Ime_partnera, Priznanje_pb.Sifra_zahtjeva, Priznanje_pb.' +
        'Oznaka_sorte,'
      'Priznanje_pb.VCU_oznaka VCU, Priznanje_pb.DUS_oznaka DUS'
      'FROM Priznanje_pb'
      '   LEFT OUTER JOIN Vrsta'
      '   ON  (Priznanje_pb.Sifra_vrste = Vrsta.Sifra_vrste)'
      '   LEFT OUTER JOIN Partner'
      
        '   ON  (Priznanje_pb.Sifra_podnositelja = Partner.Sifra_partnera' +
        ')  ')
    Left = 703
    Top = 8
    object Zahtjev_Mastersifra_dok: TSmallintField
      FieldName = 'sifra_dok'
    end
    object Zahtjev_MasterUpisni_broj: TStringField
      DisplayLabel = 'Upisni broj'
      FieldName = 'Upisni_broj'
      Size = 15
    end
    object Zahtjev_MasterDatum_prijavljivanja: TDateField
      DisplayLabel = 'Datum prijavljivanja'
      FieldName = 'Datum_prijavljivanja'
    end
    object Zahtjev_MasterVrsta_hrv: TStringField
      DisplayLabel = 'Hrvatski naziv vrste'
      FieldName = 'Vrsta_hrv'
      Size = 30
    end
    object Zahtjev_MasterVrsta_lat: TStringField
      FieldName = 'Vrsta_lat'
      Size = 50
    end
    object Zahtjev_MasterOznaka_sorte: TStringField
      DisplayLabel = 'Oznaka sorte'
      FieldName = 'Oznaka_sorte'
      Size = 30
    end
    object Zahtjev_MasterIme_sorte: TStringField
      DisplayLabel = 'Predlo'#382'eno ime'
      FieldName = 'Ime_sorte'
      Size = 30
    end
    object Zahtjev_MasterIme_partnera: TStringField
      DisplayLabel = 'Podnositelj zahtjeva'
      FieldName = 'Ime_partnera'
      Size = 30
    end
    object Zahtjev_MasterSifra_zahtjeva: TIntegerField
      FieldName = 'Sifra_zahtjeva'
      Visible = False
    end
    object Zahtjev_MasterVCU: TStringField
      FieldName = 'VCU'
      Size = 5
    end
    object Zahtjev_MasterDUS: TStringField
      FieldName = 'DUS'
      Size = 5
    end
  end
  object dsZahtjev_Master: TDataSource
    DataSet = Zahtjev_Master
    Left = 672
    Top = 8
  end
  object tDUS: TTable
    Tag = 4
    BeforePost = PrijePosta
    AfterPost = PosljePosta
    DatabaseName = 'kulture'
    IndexName = 'xSifra_zahtjeva'
    MasterFields = 'Sifra_zahtjeva'
    MasterSource = ds
    TableName = 'DUS.db'
    Left = 493
    Top = 136
    object tDUSSifra_DUS: TAutoIncField
      FieldName = 'Sifra_DUS'
      ReadOnly = True
      Visible = False
    end
    object tDUSSifra_zahtjeva: TIntegerField
      FieldName = 'Sifra_zahtjeva'
      Visible = False
    end
    object tDUSGdje_uradjen: TIntegerField
      FieldName = 'Gdje_uradjen'
    end
    object tDUSlookNazivDrzave: TStringField
      FieldKind = fkLookup
      FieldName = 'lookNazivDrzave'
      LookupDataSet = tDrzava
      LookupKeyFields = 'Sifra'
      LookupResultField = 'Naziv_Drzave'
      KeyFields = 'Gdje_uradjen'
      Size = 40
      Lookup = True
    end
    object tDUSI_godina: TMemoField
      FieldName = 'I_godina'
      BlobType = ftMemo
      Size = 240
    end
    object tDUSII_godina: TMemoField
      FieldName = 'II_godina'
      BlobType = ftMemo
      Size = 240
    end
    object tDUSKupljen: TBooleanField
      FieldName = 'Kupljen'
    end
    object tDUSKada_uradjen: TStringField
      FieldName = 'Kada_uradjen'
      Size = 30
    end
    object tDUSDatum_promjene: TDateTimeField
      FieldName = 'Datum_promjene'
      Visible = False
    end
  end
  object dsDUS: TDataSource
    DataSet = tDUS
    Left = 464
    Top = 136
  end
  object tVCU: TTable
    Tag = 5
    BeforePost = PrijePosta
    AfterPost = PosljePosta
    DatabaseName = 'kulture'
    IndexName = 'xSifra_zahtjeva'
    MasterFields = 'Sifra_zahtjeva'
    MasterSource = ds
    TableName = 'VCU.DB'
    Left = 621
    Top = 320
    object tVCUSifra_VCU: TAutoIncField
      FieldName = 'Sifra_VCU'
      ReadOnly = True
      Visible = False
    end
    object tVCUSifra_zahtjeva: TIntegerField
      FieldName = 'Sifra_zahtjeva'
    end
    object tVCUVCU1: TMemoField
      FieldName = 'VCU1'
      BlobType = ftMemo
      Size = 240
    end
    object tVCUVCU2: TMemoField
      FieldName = 'VCU2'
      BlobType = ftMemo
      Size = 240
    end
    object tVCUVCU3: TMemoField
      FieldName = 'VCU3'
      BlobType = ftMemo
      Size = 240
    end
    object tVCUDatum_promjene: TDateTimeField
      FieldName = 'Datum_promjene'
      Visible = False
    end
  end
  object dsVCU: TDataSource
    DataSet = tVCU
    Left = 592
    Top = 320
  end
  object dsPriznavanje: TDataSource
    DataSet = tPriznavanje
    Left = 494
    Top = 377
  end
  object dsOdrzavanje: TDataSource
    DataSet = tOdrzavanje
    Left = 488
    Top = 472
  end
  object tPriznavanje: TTable
    Tag = 6
    BeforePost = PrijePosta
    AfterPost = PosljePosta
    DatabaseName = 'kulture'
    IndexName = 'xSifra_zahtjeva'
    MasterFields = 'Sifra_zahtjeva'
    MasterSource = ds
    TableName = 'Priznavanje.DB'
    Left = 521
    Top = 377
    object tPriznavanjeSifra_priznavanja: TAutoIncField
      FieldName = 'Sifra_priznavanja'
      ReadOnly = True
      Visible = False
    end
    object tPriznavanjeSifra_zahtjeva: TIntegerField
      FieldName = 'Sifra_zahtjeva'
      Visible = False
    end
    object tPriznavanjeBroj_priznavanja: TStringField
      DisplayLabel = 'Broj priznavanja'
      FieldName = 'Broj_priznavanja'
      Size = 30
    end
    object tPriznavanjeDatum_priznavanja: TDateField
      DisplayLabel = 'Datum rje'#353'enja'
      FieldName = 'Datum_priznavanja'
    end
    object tPriznavanjeNN: TStringField
      FieldName = 'NN'
      Size = 10
    end
    object tPriznavanjeDatum_promjene: TDateTimeField
      FieldName = 'Datum_promjene'
      Visible = False
    end
  end
  object tOdrzavanje: TTable
    Tag = 7
    BeforePost = PrijePosta
    AfterPost = PosljePosta
    DatabaseName = 'kulture'
    IndexName = 'xSifra_zahtjeva'
    MasterFields = 'Sifra_zahtjeva'
    MasterSource = ds
    TableName = 'Odrzavanje.DB'
    Left = 517
    Top = 472
    object tOdrzavanjeSifra_odrzavanje: TAutoIncField
      FieldName = 'Sifra_odrzavanje'
      ReadOnly = True
      Visible = False
    end
    object tOdrzavanjeSifra_zahtjeva: TIntegerField
      FieldName = 'Sifra_zahtjeva'
      Visible = False
    end
    object tOdrzavanjeBroj_rjesenja: TStringField
      DisplayLabel = 'Broj rje'#353'enja'
      DisplayWidth = 30
      FieldName = 'Broj_rjesenja'
      Size = 30
    end
    object tOdrzavanjeDatum_rjesenja: TDateField
      DisplayLabel = 'Datum rje'#353'enja'
      FieldName = 'Datum_rjesenja'
    end
    object tOdrzavanjeNN: TStringField
      FieldName = 'NN'
      Size = 10
    end
    object tOdrzavanjeDatum_promjene: TDateTimeField
      FieldName = 'Datum_promjene'
    end
  end
  object tBrisanje: TTable
    Tag = 9
    BeforePost = PrijePosta
    AfterPost = PosljePosta
    DatabaseName = 'kulture'
    IndexName = 'xSifra_zahtjeva'
    MasterFields = 'Sifra_zahtjeva'
    MasterSource = ds
    TableName = 'Brisanje.DB'
    Left = 496
    Top = 568
    object tBrisanjeSifra_brisanja: TAutoIncField
      FieldName = 'Sifra_brisanja'
      ReadOnly = True
      Visible = False
    end
    object tBrisanjeSifra_zahtjeva: TIntegerField
      FieldName = 'Sifra_zahtjeva'
      Visible = False
    end
    object tBrisanjeBroj_brisanja: TStringField
      DisplayLabel = 'Broj rje'#353'enja'
      DisplayWidth = 30
      FieldName = 'Broj_brisanja'
      Size = 30
    end
    object tBrisanjeDatum_brisanja: TDateField
      DisplayLabel = 'Datum rje'#353'enja'
      FieldName = 'Datum_brisanja'
    end
    object tBrisanjeNN: TStringField
      FieldName = 'NN'
      Size = 10
    end
    object tBrisanjeDatum_promjene: TDateTimeField
      FieldName = 'Datum_promjene'
      Visible = False
    end
  end
  object tPravo: TTable
    Tag = 10
    BeforePost = PrijePosta
    AfterPost = PosljePosta
    DatabaseName = 'kulture'
    IndexName = 'xSifra_zahtjeva'
    MasterFields = 'Sifra_zahtjeva'
    MasterSource = ds
    TableName = 'Pravo.DB'
    Left = 496
    Top = 624
    object tPravoSifra_prava: TAutoIncField
      FieldName = 'Sifra_prava'
      ReadOnly = True
      Visible = False
    end
    object tPravoSifra_zahtjeva: TIntegerField
      FieldName = 'Sifra_zahtjeva'
      Visible = False
    end
    object tPravoBroj_prava: TStringField
      DisplayLabel = 'Broj rje'#353'enja'
      DisplayWidth = 30
      FieldName = 'Broj_prava'
      Size = 30
    end
    object tPravoDatum_prava: TDateField
      DisplayLabel = 'Datum rje'#353'enja'
      FieldName = 'Datum_prava'
    end
    object tPravoNN: TStringField
      FieldName = 'NN'
      Size = 10
    end
    object tPravoDatum_promjene: TDateTimeField
      FieldName = 'Datum_promjene'
      Visible = False
    end
  end
  object dsPravo: TDataSource
    DataSet = tPravo
    Left = 469
    Top = 624
  end
  object dsBrisanje: TDataSource
    DataSet = tBrisanje
    Left = 469
    Top = 568
  end
  object qNaknada: TQuery
    Tag = 8
    Active = True
    BeforeInsert = PostajMastera
    DatabaseName = 'kulture'
    DataSource = ds
    RequestLive = True
    SQL.Strings = (
      'SELECT *'
      'FROM "Naknada_odrzavanje.DB" Naknada_odrzavanje'
      'WHERE  Sifra_zahtjeva = :Sifra_zahtjeva')
    Left = 349
    Top = 520
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'Sifra_zahtjeva'
        ParamType = ptUnknown
        Size = 4
      end>
    object qNaknadaGod1: TStringField
      Alignment = taCenter
      DisplayLabel = '1'
      DisplayWidth = 2
      FieldName = 'God1'
      Origin = 'KULTURE."Naknada_odrzavanje.DB".God1'
      Size = 1
    end
    object qNaknadaGod2: TStringField
      Alignment = taCenter
      DisplayLabel = '2'
      DisplayWidth = 2
      FieldName = 'God2'
      Origin = 'KULTURE."Naknada_odrzavanje.DB".God2'
      Size = 1
    end
    object qNaknadaGod3: TStringField
      Alignment = taCenter
      DisplayLabel = '3'
      DisplayWidth = 2
      FieldName = 'God3'
      Origin = 'KULTURE."Naknada_odrzavanje.DB".God3'
      Size = 1
    end
    object qNaknadaGod4: TStringField
      Alignment = taCenter
      DisplayLabel = '4'
      DisplayWidth = 2
      FieldName = 'God4'
      Origin = 'KULTURE."Naknada_odrzavanje.DB".God4'
      Size = 1
    end
    object qNaknadaGod5: TStringField
      Alignment = taCenter
      DisplayLabel = '5'
      DisplayWidth = 2
      FieldName = 'God5'
      Origin = 'KULTURE."Naknada_odrzavanje.DB".God5'
      Size = 1
    end
    object qNaknadaGod6: TStringField
      Alignment = taCenter
      DisplayLabel = '6'
      DisplayWidth = 2
      FieldName = 'God6'
      Origin = 'KULTURE."Naknada_odrzavanje.DB".God6'
      Size = 1
    end
    object qNaknadaGod7: TStringField
      Alignment = taCenter
      DisplayLabel = '7'
      DisplayWidth = 2
      FieldName = 'God7'
      Origin = 'KULTURE."Naknada_odrzavanje.DB".God7'
      Size = 1
    end
    object qNaknadaGod8: TStringField
      Alignment = taCenter
      DisplayLabel = '8'
      DisplayWidth = 2
      FieldName = 'God8'
      Origin = 'KULTURE."Naknada_odrzavanje.DB".God8'
      Size = 1
    end
    object qNaknadaGod9: TStringField
      Alignment = taCenter
      DisplayLabel = '9'
      DisplayWidth = 2
      FieldName = 'God9'
      Origin = 'KULTURE."Naknada_odrzavanje.DB".God9'
      Size = 1
    end
    object qNaknadaGod10: TStringField
      Alignment = taCenter
      DisplayLabel = '10'
      DisplayWidth = 2
      FieldName = 'God10'
      Origin = 'KULTURE."Naknada_odrzavanje.DB".God10'
      Size = 1
    end
    object qNaknadaPrekid: TStringField
      Alignment = taCenter
      DisplayLabel = ' '
      DisplayWidth = 3
      FieldName = 'Prekid'
      Origin = 'KULTURE."Naknada_odrzavanje.DB".Prekid'
      Size = 2
    end
    object qNaknadaGod11: TStringField
      Alignment = taCenter
      DisplayLabel = '11'
      DisplayWidth = 2
      FieldName = 'God11'
      Origin = 'KULTURE."Naknada_odrzavanje.DB".God11'
      Size = 1
    end
    object qNaknadaGod12: TStringField
      Alignment = taCenter
      DisplayLabel = '12'
      DisplayWidth = 2
      FieldName = 'God12'
      Origin = 'KULTURE."Naknada_odrzavanje.DB".God12'
      Size = 1
    end
    object qNaknadaGod13: TStringField
      Alignment = taCenter
      DisplayLabel = '13'
      DisplayWidth = 2
      FieldName = 'God13'
      Origin = 'KULTURE."Naknada_odrzavanje.DB".God13'
      Size = 1
    end
    object qNaknadaGod14: TStringField
      Alignment = taCenter
      DisplayLabel = '14'
      DisplayWidth = 2
      FieldName = 'God14'
      Origin = 'KULTURE."Naknada_odrzavanje.DB".God14'
      Size = 1
    end
    object qNaknadaGod15: TStringField
      Alignment = taCenter
      DisplayLabel = '15'
      DisplayWidth = 2
      FieldName = 'God15'
      Origin = 'KULTURE."Naknada_odrzavanje.DB".God15'
      Size = 1
    end
    object qNaknadaGod16: TStringField
      Alignment = taCenter
      DisplayLabel = '16'
      DisplayWidth = 2
      FieldName = 'God16'
      Origin = 'KULTURE."Naknada_odrzavanje.DB".God16'
      Size = 1
    end
    object qNaknadaGod17: TStringField
      Alignment = taCenter
      DisplayLabel = '17'
      DisplayWidth = 2
      FieldName = 'God17'
      Origin = 'KULTURE."Naknada_odrzavanje.DB".God17'
      Size = 1
    end
    object qNaknadaGod18: TStringField
      Alignment = taCenter
      DisplayLabel = '18'
      DisplayWidth = 2
      FieldName = 'God18'
      Origin = 'KULTURE."Naknada_odrzavanje.DB".God18'
      Size = 1
    end
    object qNaknadaGod19: TStringField
      Alignment = taCenter
      DisplayLabel = '19'
      DisplayWidth = 2
      FieldName = 'God19'
      Origin = 'KULTURE."Naknada_odrzavanje.DB".God19'
      Size = 1
    end
    object qNaknadaGod20: TStringField
      Alignment = taCenter
      DisplayLabel = '20'
      DisplayWidth = 2
      FieldName = 'God20'
      Origin = 'KULTURE."Naknada_odrzavanje.DB".God20'
      Size = 1
    end
    object qNaknadaSifra_odrzavanja: TAutoIncField
      FieldName = 'Sifra_odrzavanja'
      Origin = 'KULTURE."Naknada_odrzavanje.DB".Sifra_odrzavanja'
      ReadOnly = True
      Visible = False
    end
    object qNaknadaDatum_promjene: TDateTimeField
      FieldName = 'Datum_promjene'
      Origin = 'KULTURE."Naknada_odrzavanje.DB".Datum_promjene'
      Visible = False
    end
    object qNaknadaSifra_zahtjeva: TIntegerField
      FieldName = 'Sifra_zahtjeva'
      Origin = 'KULTURE."Naknada_odrzavanje.DB".Sifra_zahtjeva'
      Visible = False
    end
  end
  object dsNaknada: TDataSource
    DataSet = qNaknada
    Left = 376
    Top = 520
  end
  object Images: TImageList
    Left = 448
    Top = 4
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
  object PopupMenu1: TPopupMenu
    Left = 533
    object Ispis1: TMenuItem
      Tag = 1
      Caption = 'Ispis'
      OnClick = Ureivanje1Click
    end
    object Ureivanje1: TMenuItem
      Tag = 2
      Caption = 'Ure'#273'ivanje'
      OnClick = Ureivanje1Click
    end
  end
  object frDBDataSet1: TfrDBDataSet
    CloseDataSource = True
    DataSet = qReport
    Left = 717
    Top = 352
  end
  object qReport: TQuery
    DatabaseName = 'kulture'
    DataSource = ds
    SQL.Strings = (
      
        'SELECT CAST(Priznanje_pb.sifra_dok as CHAR)+'#39' '#39'+ Priznanje_pb.Up' +
        'isni_broj Upisni_broj, '
      'Priznanje_pb.Datum_prijavljivanja, '
      'Sorta.Ime_sorte, Vrsta.Vrsta_hrv, Vrsta.Vrsta_lat, '
      
        'Partner.Ime_partnera, Priznanje_pb.Sifra_zahtjeva, Sorta.Oznaka_' +
        'sorte, Sorta.Namjena, '
      
        'Partner.Telefon1 p1Tel1, Partner.Fax p1Fax, Partner.Email p1Emai' +
        'l, Partner.Adresa p1Adr, Partner.Mjesto p1Mj, Partner.Drzava p1D' +
        'r, '
      
        'Oplemenjivac.Ime_partnera p2Ime, Oplemenjivac.Adresa p2Adr, Ople' +
        'menjivac.Mjesto p2Mj, Oplemenjivac.Drzava p2Dr, '
      
        'Vlasnik.Ime_partnera p3Ime, Vlasnik.Adresa p3Adr, Vlasnik.Mjesto' +
        ' p3Mj, Vlasnik.Drzava p3Dr'
      'FROM "Priznanje_PB.DB" Priznanje_pb'
      '   LEFT OUTER JOIN "Sorta.DB" Sorta'
      '   ON  (Priznanje_pb.Sifra_sorte = Sorta.Sifra_sorte)'
      '   LEFT OUTER JOIN "Vrsta.DB" Vrsta'
      '   ON  (Sorta.Sifra_vrste = Vrsta.Sifra_vrste)'
      '   LEFT OUTER JOIN "Partner.DB" Partner'
      
        '   ON  (Priznanje_pb.Sifra_podnositelja = Partner.Sifra_partnera' +
        ')  '
      '   LEFT OUTER JOIN "Partner.DB" Oplemenjivac'
      
        '   ON  (Priznanje_pb.Sifra_oplemenjivaca = Oplemenjivac.Sifra_pa' +
        'rtnera)  '
      '   LEFT OUTER JOIN "Partner.DB" Vlasnik'
      
        '   ON  (Priznanje_pb.Sifra_vlasnik = Vlasnik.Sifra_partnera ) WH' +
        'ERE Priznanje_pb.Sifra_zahtjeva = :Sifra_zahtjeva')
    Left = 716
    Top = 379
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'Sifra_zahtjeva'
        ParamType = ptUnknown
      end>
  end
  object qMax: TQuery
    DatabaseName = 'kulture'
    SQL.Strings = (
      'select max(cast(upisni_broj as int)) broj'
      'from priznanje_PB'
      'where sifra_dok=:SDokk')
    Left = 29
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SDokk'
        ParamType = ptUnknown
        Value = 1
      end>
  end
  object tVrsta: TTable
    Active = True
    DatabaseName = 'kulture'
    Filtered = True
    IndexFieldNames = 'Sifra_vrste'
    ReadOnly = True
    TableName = 'Vrsta.DB'
    Left = 341
    Top = 103
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
    object tVrstaVrsta_eng: TStringField
      DisplayLabel = 'Engleski naziv'
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
      DisplayLabel = 'Datum promjene'
      DisplayWidth = 18
      FieldName = 'Datum_promjene'
      Visible = False
    end
    object tVrstaTip_vrste: TSmallintField
      DisplayWidth = 10
      FieldName = 'Tip_vrste'
      Visible = False
    end
    object tVrstaKlasa: TSmallintField
      FieldName = 'Klasa'
    end
  end
  object dsVrsta: TDataSource
    DataSet = tVrsta
    Left = 373
    Top = 104
  end
  object tSdus: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'DUS_oznaka'
    ReadOnly = True
    TableName = 'DUS_status.DB'
    Left = 709
    Top = 128
    object tSdusDUS_oznaka: TStringField
      FieldName = 'DUS_oznaka'
      Required = True
      Size = 5
    end
    object tSdusDUS_Status: TStringField
      FieldName = 'DUS_Status'
      Size = 40
    end
  end
  object dsSdus: TDataSource
    DataSet = tSdus
    Left = 741
    Top = 128
  end
  object tSvcu: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'VCU_oznaka'
    ReadOnly = True
    TableName = 'VCU_status.DB'
    Left = 717
    Top = 280
    object tSvcuVCU_oznaka: TStringField
      FieldName = 'VCU_oznaka'
      Size = 5
    end
    object tSvcuVCU_Status: TStringField
      FieldName = 'VCU_Status'
      Size = 40
    end
    object tSvcuBoja: TStringField
      FieldName = 'Boja'
      Visible = False
      Size = 10
    end
  end
  object dsSvcu: TDataSource
    DataSet = tSvcu
    Left = 749
    Top = 280
  end
  object tDetPovrce: TTable
    Tag = 11
    BeforePost = PrijePosta
    DatabaseName = 'kulture'
    IndexName = 'xSifra_zaht'
    MasterFields = 'Sifra_zahtjeva'
    MasterSource = ds
    TableName = 'Detalji_povrce.DB'
    Left = 618
    Top = 352
  end
  object dsDetPov: TDataSource
    DataSet = tDetPovrce
    Left = 590
    Top = 353
  end
  object qOtpornost: TQuery
    Tag = 12
    Active = True
    AfterOpen = qOtpornostAfterOpen
    BeforeInsert = PostajMastera
    BeforePost = PrijePosta
    AfterPost = PosljePosta
    DatabaseName = 'kulture'
    DataSource = ds
    RequestLive = True
    SQL.Strings = (
      
        'SELECT Bolest_stetnik, Tolerantnost, Rezistentnost, Sifra_zahtje' +
        'va'
      'FROM Otpornost_povrca'
      'WHERE Sifra_zahtjeva=:Sifra_zahtjeva')
    Left = 267
    Top = 621
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'Sifra_zahtjeva'
        ParamType = ptUnknown
        Size = 4
      end>
    object qOtpornostBolest_stetnik: TStringField
      DisplayLabel = 'Bolest ili '#353'tetnik'
      DisplayWidth = 35
      FieldName = 'Bolest_stetnik'
      Origin = 'KULTURE."Otpornost_povrca.DB".Bolest_stetnik'
      Size = 30
    end
    object qOtpornostTolerantnost: TBooleanField
      DisplayWidth = 11
      FieldName = 'Tolerantnost'
      Origin = 'KULTURE."Otpornost_povrca.DB".Tolerantnost'
    end
    object qOtpornostRezistentnost: TBooleanField
      DisplayWidth = 12
      FieldName = 'Rezistentnost'
      Origin = 'KULTURE."Otpornost_povrca.DB".Rezistentnost'
    end
    object qOtpornostSifra_zahtjeva: TIntegerField
      FieldName = 'Sifra_zahtjeva'
      Origin = 'KULTURE."Otpornost_povrca.DB".Sifra_zahtjeva'
      Visible = False
    end
  end
  object dsOtpornost: TDataSource
    DataSet = qOtpornost
    OnStateChange = dsOtpornostStateChange
    Left = 296
    Top = 621
  end
  object dsKontakti: TDataSource
    DataSet = qKontakti
    Left = 216
    Top = 304
  end
  object qKontakti: TQuery
    Active = True
    DatabaseName = 'kulture'
    DataSource = ds
    SQL.Strings = (
      'SELECT sifra_kontakta, Ime_kontakta +'#39' '#39'+ Prezime_kontakta ime'
      'FROM Kontakti'
      'WHERE Sifra_partnera=:Sifra_podnositelja')
    Left = 188
    Top = 305
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Sifra_podnositelja'
        ParamType = ptUnknown
        Size = 4
      end>
    object qKontaktisifra_kontakta: TIntegerField
      DisplayWidth = 10
      FieldName = 'sifra_kontakta'
      Origin = 'KULTURE."Kontakti.DB".Sifra_Kontakta'
      Visible = False
    end
    object qKontaktiime: TStringField
      DisplayWidth = 61
      FieldName = 'ime'
      Origin = 'KULTURE."Kontakti.DB".Ime_kontakta'
      Size = 61
    end
  end
  object dsS17: TDataSource
    DataSet = qS17
    Left = 421
    Top = 168
  end
  object qPredIme: TQuery
    Active = True
    DatabaseName = 'kulture'
    DataSource = ds
    SQL.Strings = (
      'SELECT Ime_sorte'
      'FROM Priznanje_pb'
      'WHERE Ime_sorte=:Ime_sorte'
      'AND sifra_klase=:sifra_klase')
    Left = 694
    Top = 498
    ParamData = <
      item
        DataType = ftString
        Name = 'Ime_sorte'
        ParamType = ptUnknown
        Size = 31
      end
      item
        DataType = ftSmallint
        Name = 'Sifra_klase'
        ParamType = ptUnknown
        Size = 2
      end>
  end
  object tPartner4: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'Ime_partnera'
    ReadOnly = True
    TableName = 'Partner.DB'
    Left = 278
    Top = 185
    object StringField17: TStringField
      DisplayLabel = 'Ime partnera'
      DisplayWidth = 30
      FieldName = 'Ime_partnera'
      Size = 30
    end
    object StringField18: TStringField
      DisplayWidth = 30
      FieldName = 'Adresa'
      Size = 30
    end
    object StringField19: TStringField
      DisplayWidth = 25
      FieldName = 'Mjesto'
      Size = 25
    end
    object AutoIncField3: TAutoIncField
      FieldName = 'Sifra_partnera'
      ReadOnly = True
      Visible = False
    end
  end
  object DataSource1: TDataSource
    DataSet = tPartner4
    Left = 306
    Top = 187
  end
  object tNePriznavanje: TTable
    DatabaseName = 'kulture'
    IndexName = 'xSifra_zahtjeva'
    MasterFields = 'Sifra_zahtjeva'
    MasterSource = ds
    TableName = 'NePriznavanje.DB'
    Left = 524
    Top = 420
    object tNePriznavanjeSifra_priznavanja: TAutoIncField
      FieldName = 'Sifra_priznavanja'
      ReadOnly = True
    end
    object tNePriznavanjeSifra_zahtjeva: TIntegerField
      FieldName = 'Sifra_zahtjeva'
    end
    object tNePriznavanjeBroj_priznavanja: TStringField
      FieldName = 'Broj_priznavanja'
      Size = 30
    end
    object tNePriznavanjeDatum_priznavanja: TDateField
      FieldName = 'Datum_priznavanja'
    end
    object tNePriznavanjeNN: TStringField
      FieldName = 'NN'
      Size = 10
    end
    object tNePriznavanjeDatum_promjene: TDateTimeField
      FieldName = 'Datum_promjene'
    end
  end
  object dsNePriznavanje: TDataSource
    DataSet = tNePriznavanje
    Left = 496
    Top = 419
  end
  object BojaVCU: TQuery
    Active = True
    AfterOpen = BojaVCUAfterOpen
    DatabaseName = 'kulture'
    DataSource = ds
    SQL.Strings = (
      'SELECT boja'
      'FROM VCU_status'
      'WHERE VCU_oznaka=:VCU_oznaka')
    Left = 752
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'VCU_oznaka'
        ParamType = ptUnknown
        Size = 6
      end>
  end
  object qPravoNaVrste: TQuery
    DatabaseName = 'kulture'
    SQL.Strings = (
      'SELECT Sifra'
      'FROM pravonavrste'
      'WHERE Sifra_Korisnika=:skorisnik'
      'AND Sifra_Vrste=:svrsta')
    Left = 761
    Top = 436
    ParamData = <
      item
        DataType = ftString
        Name = 'skorisnik'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'svrsta'
        ParamType = ptUnknown
        Value = ''
      end>
  end
  object qS17: TQuery
    DatabaseName = 'kulture'
    SQL.Strings = (
      'select sifra_zahtjeva, sifra_vrste, oznaka_sorte, ime_sorte'
      'from priznanje_pb'
      'where sifra_dok=1'
      'and sifra_podnositelja=11')
    Left = 454
    Top = 169
    object qS17oznaka_sorte: TStringField
      DisplayLabel = 'Oznaka sorte'
      DisplayWidth = 30
      FieldName = 'oznaka_sorte'
      Origin = 'KULTURE."Priznanje_PB.DB".Oznaka_sorte'
      Size = 30
    end
    object qS17ime_sorte: TStringField
      DisplayLabel = 'Ime sorte'
      DisplayWidth = 30
      FieldName = 'ime_sorte'
      Origin = 'KULTURE."Priznanje_PB.DB".Ime_sorte'
      Size = 30
    end
    object qS17sifra_zahtjeva: TIntegerField
      FieldName = 'sifra_zahtjeva'
      Origin = 'KULTURE."Priznanje_PB.DB".Sifra_zahtjeva'
      Visible = False
    end
    object qS17sifra_vrste: TIntegerField
      FieldName = 'sifra_vrste'
      Origin = 'KULTURE."Priznanje_PB.DB".Sifra_vrste'
    end
  end
  object tDrzava: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'Sifra'
    TableName = 'Drzava.db'
    Left = 525
    Top = 208
    object tDrzavaNaziv_Drzave: TStringField
      DisplayLabel = 'Naziv dr'#382'ave'
      DisplayWidth = 30
      FieldName = 'Naziv_Drzave'
      Size = 60
    end
    object tDrzavaSifra: TAutoIncField
      DisplayWidth = 10
      FieldName = 'Sifra'
      ReadOnly = True
      Visible = False
    end
  end
  object dsDrzava: TDataSource
    DataSet = tDrzava
    Left = 493
    Top = 208
  end
  object tDrzava2: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'Sifra'
    TableName = 'Drzava.db'
    Left = 205
    Top = 416
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
  object dsDrzava2: TDataSource
    DataSet = tDrzava2
    Left = 173
    Top = 416
  end
  object dstDrzava3: TDataSource
    DataSet = tDrzava3
    Left = 173
    Top = 504
  end
  object tDrzava3: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'Sifra'
    TableName = 'Drzava.db'
    Left = 205
    Top = 504
    object AutoIncField5: TAutoIncField
      DisplayLabel = #352'ifra'
      DisplayWidth = 10
      FieldName = 'Sifra'
      ReadOnly = True
    end
    object StringField12: TStringField
      DisplayLabel = 'Naziv dr'#382'ave'
      DisplayWidth = 30
      FieldName = 'Naziv_Drzave'
      Size = 60
    end
  end
  object tDrzava4: TTable
    Active = True
    DatabaseName = 'kulture'
    IndexFieldNames = 'Sifra'
    TableName = 'Drzava.db'
    Left = 197
    Top = 616
    object AutoIncField6: TAutoIncField
      DisplayLabel = #352'ifra'
      DisplayWidth = 10
      FieldName = 'Sifra'
      ReadOnly = True
    end
    object StringField20: TStringField
      DisplayLabel = 'Naziv dr'#382'ave'
      DisplayWidth = 30
      FieldName = 'Naziv_Drzave'
      Size = 60
    end
  end
  object dstDrzava4: TDataSource
    DataSet = tDrzava4
    Left = 165
    Top = 616
  end
  object dsOdjel: TDataSource
    DataSet = qOdjel
    Left = 216
    Top = 272
  end
  object qOdjel: TQuery
    Active = True
    AfterOpen = qOdjelAfterOpen
    DatabaseName = 'kulture'
    SQL.Strings = (
      'SELECT sifra, naziv_odjela'
      'FROM Odjel_partnera')
    Left = 188
    Top = 273
    object qOdjelnaziv_odjela: TStringField
      DisplayLabel = 'Naziv odjela'
      DisplayWidth = 60
      FieldName = 'naziv_odjela'
      Origin = 'KULTURE."Odjel_partnera.DB".Naziv_Odjela'
      Size = 60
    end
    object qOdjelsifra: TIntegerField
      FieldName = 'sifra'
      Origin = 'KULTURE."Odjel_partnera.DB".Sifra'
      Visible = False
    end
  end
end
