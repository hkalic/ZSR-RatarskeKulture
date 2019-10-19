object Podaci: TPodaci
  OldCreateOrder = True
  OnCreate = PodaciCreate
  Left = 262
  Top = 204
  Height = 570
  Width = 733
  object Database1: TDatabase
    AliasName = 'Rat_Kult'
    Connected = True
    DatabaseName = 'kulture'
    HandleShared = True
    LoginPrompt = False
    SessionName = 'Default'
    TransIsolation = tiDirtyRead
    Left = 261
    Top = 156
  end
  object Croatian: TwwIntl
    Navigator.ConfirmDeleteMessage = 'Delete record?'
    Navigator.Hints.FirstHint = 'Move to first record'
    Navigator.Hints.PriorHint = 'Move to prior record'
    Navigator.Hints.NextHint = 'Move to next record'
    Navigator.Hints.LastHint = 'Move to last record'
    Navigator.Hints.InsertHint = 'Insert new record'
    Navigator.Hints.DeleteHint = 'Delete current record'
    Navigator.Hints.EditHint = 'Edit current record'
    Navigator.Hints.PostHint = 'Post changes of current record'
    Navigator.Hints.CancelHint = 'Cancel changes made to current record'
    Navigator.Hints.RefreshHint = 'Refresh the contents of the dataset'
    Navigator.Hints.PriorPageHint = 'Move backward %d records'
    Navigator.Hints.NextPageHint = 'Move forward %d records'
    Navigator.Hints.SaveBookmarkHint = 'Bookmark current record'
    Navigator.Hints.RestoreBookmarkHint = 'Go back to saved bookmark'
    Navigator.Hints.RecordViewDialogHint = 'View current record'
    Navigator.Hints.LocateDialogHint = 'Locate a specific record'
    Navigator.Hints.FilterDialogHint = 'Filter the dataset'
    Navigator.Hints.SearchDialogHint = 'Search the dataset'
    SearchDialog.SearchCharLabel = '&Search Characters'
    SearchDialog.SearchCharShortLabel = '&Search Char'
    SearchDialog.SearchByLabel = 'Search &By'
    SearchDialog.StatusRecLabel = 'Rec #'
    SearchDialog.StatusOfLabel = 'of'
    SearchDialog.SearchCharHint = 'Enter characters for incremental search'
    SearchDialog.SearchByHint = 'Incremental searching and sorting order'
    LocateDialog.FieldValueLabel = 'Field &Value'
    LocateDialog.SearchTypeLabel = '&Search Type'
    LocateDialog.CaseSensitiveLabel = '&Case-sensitive'
    LocateDialog.MatchExactLabel = '&Exact Match'
    LocateDialog.MatchStartLabel = '&Partial Match at Beginning'
    LocateDialog.MatchAnyLabel = 'Partial Match &Anywhere'
    LocateDialog.FieldsLabel = '&Fields'
    LocateDialog.BtnFirst = 'Fi&rst'
    LocateDialog.BtnNext = '&Next'
    LocateDialog.BtnCancel = 'Cancel'
    LocateDialog.BtnClose = 'Close'
    LocateDialog.FieldValueHint = 'Enter field'#39's search value'
    LocateDialog.CaseSensitiveHint = 'Searching is case-sensitive'
    LocateDialog.MatchExactHint = 'Match occurs only if there is an exact match'
    LocateDialog.MatchStartHint = 'Match occurs if the start of the field'#39's value matches'
    LocateDialog.MatchAnyHint = 'Match occurs if any part of the field matches'
    LocateDialog.BtnFirstHint = 'Find first match'
    LocateDialog.BtnNextHint = 'Find next match from current record'
    LocateDialog.FieldNameHint = 'Select the field to search on'
    MonthCalendar.PopupYearLabel = 'Edit Year'
    MonthCalendar.EnterYearPrompt = 'Enter Valid Year'
    FilterDialog.BtnViewSummary = 'View Su&mmary'
    FilterDialog.BtnViewSummaryHint = 'View summary of current search criteria'
    FilterDialog.BtnNewSearch = '&New Search'
    FilterDialog.BtnNewSearchHint = 'Start a new search'
    FilterDialog.FieldOrderLabel = 'Field Order'
    FilterDialog.FieldOrderHint = 'Sort field list alphabetically or in their natural logical order'
    FilterDialog.AlphabeticLabel = 'Alpha&betic'
    FilterDialog.LogicalLabel = '&Logical'
    FilterDialog.AllFieldsLabel = '&All'
    FilterDialog.SearchedFieldsLabel = '&Searched'
    FilterDialog.StartingRangeLabel = '&Starting Range'
    FilterDialog.EndingRangeLabel = 'En&ding Range'
    FilterDialog.StartingRangeHint = 'Enter starting range for field'
    FilterDialog.EndingRangeHint = 'Enter ending range for field'
    FilterDialog.BtnClearMin = '&Clear'
    FilterDialog.BtnClearMax = 'Cl&ear'
    FilterDialog.BtnClearFilterValue = '&Clear'
    FilterDialog.BtnClearMinHint = 'Clear starting range for field'
    FilterDialog.BtnClearMaxHint = 'Clear ending range for field'
    FilterDialog.BtnClearFilterValueHint = 'Clear the current field'#39's search value'
    FilterDialog.ByValueLabel = 'By &Value'
    FilterDialog.ByRangeLabel = 'By &Range'
    FilterDialog.FieldValueLabel = 'Field &Value'
    FilterDialog.FieldValueHint = 'Enter field'#39's search value'
    FilterDialog.SearchTypeLabel = 'Search Type'
    FilterDialog.SearchTypeHint = 'Specify how the Field Value should be compared'
    FilterDialog.MatchExactLabel = '&Exact Match'
    FilterDialog.MatchStartLabel = '&Partial Match at Beginning'
    FilterDialog.MatchAnyLabel = 'Partial Match Any&where'
    FilterDialog.CaseSensitiveLabel = 'Case Sensi&tive'
    FilterDialog.CaseSensitiveHint = 'Searching is case-sensitive'
    FilterDialog.NonMatchingLabel = 'N&on-matching records'
    FilterDialog.NonMatchingHint = 'Show records that do not match the field value criteria'
    FilterDialog.SummaryFieldLabel = 'Field'
    FilterDialog.SummarySearchLabel = 'Search Type'
    FilterDialog.SummaryValueLabel = 'Value'
    FilterDialog.FieldsLabel = '&Fields'
    FilterDialog.ValueRangeTabHint = 'Search fields by value or by range'
    FilterDialog.AllSearchedTabHint = 'Show all fields or only currently searched fields'
    FilterDialog.ViewSummaryNotText = 'NOT'
    RichEdit.FontNameComboHint = 'Font | Changes the font of the selection'
    RichEdit.FontSizeComboHint = 'Font Size | Changes the font size of the selection'
    RichEdit.NewButtonHint = 'New | Creates a new document'
    RichEdit.LoadButtonHint = 'Load | Load from file'
    RichEdit.SaveAsButtonHint = 'Save As | Save to file'
    RichEdit.PrintButtonHint = 'Print | Prints the active document'
    RichEdit.FindButtonHint = 'Find | Finds the specified text'
    RichEdit.CutButtonHint = 'Cut | Cuts the selection and puts it on the Clipboard'
    RichEdit.CopyButtonHint = 'Copy | Copies the selection and puts it on the Clipboard'
    RichEdit.UndoButtonHint = 'Undo | Reverses the last action'
    RichEdit.RedoButtonHint = 'Redo | Reverses the last undo action'
    RichEdit.PasteButtonHint = 'Paste | Inserts Clipboard contents'
    RichEdit.BoldButtonHint = 'Bold | Makes the selection bold (toggle)'
    RichEdit.ColorButtonHint = 'Color | Formats the selection with a color'
    RichEdit.UnderlineButtonHint = 
      'Underline | Formats the selection with a continuous underline (t' +
      'oggle)'
    RichEdit.ItalicButtonHint = 'Italic | Makes the selection italic (toggle)'
    RichEdit.LeftButtonHint = 'Align Left | Left-justifies paragraph (toggle)'
    RichEdit.CenterButtonHint = 'Center | Center-justifies paragraph (toggle)'
    RichEdit.RightButtonHint = 'Align Right | Right-justifies paragraph (toggle)'
    RichEdit.JustifyButtonHint = 'Justify | Full Justification for paragraph (toggle)'
    RichEdit.BulletButtonHint = 'Bullets | Inserts a bullet on this line (toggle)'
    RichEdit.HighlightButtonHint = 'Highlight Text | Makes the selection highlighted'
    RichEdit.SaveExitHint = 'Save And Exit | Saves changes and exits editor'
    RichEdit.PageSetupHint = 'Page Setup | Changes page layout settings'
    RichEdit.ExitHint = 'Exit'
    RichEdit.ClearHint = 'Erases the Selection'
    RichEdit.SelectAllHint = 'Selects all of the text'
    RichEdit.FindNextHint = 'Repeats the last find'
    RichEdit.ReplaceHint = 'Replaces specific text with different text'
    RichEdit.InsertObjectHint = 'Inserts new embedded object'
    RichEdit.SpellCheckHint = 'Check spelling'
    RichEdit.ToolbarHint = 'Shows or hides the toolbar'
    RichEdit.FormatBarHint = 'Shows or hides the format bar'
    RichEdit.ViewStatusBarHint = 'Shows or hides the status bar'
    RichEdit.OptionsHint = 'Sets options'
    RichEdit.FontHint = 'Selects font for current selection'
    RichEdit.ParagraphHint = 'Formats current or selected paragraph(s)'
    RichEdit.TabsHint = 'Sets tabs'
    RichEdit.CAPLockCaption = 'CAP'
    RichEdit.NUMLockCaption = 'NUM'
    RichEdit.MenuLabels.FileCaption = '&File'
    RichEdit.MenuLabels.LoadCaption = '&Load'
    RichEdit.MenuLabels.SaveAsCaption = 'Save &As'
    RichEdit.MenuLabels.SaveExitCaption = '&Save and Exit'
    RichEdit.MenuLabels.PrintCaption = '&Print'
    RichEdit.MenuLabels.PageSetupCaption = 'Page Set&up'
    RichEdit.MenuLabels.ExitCaption = 'E&xit'
    RichEdit.MenuLabels.EditCaption = '&Edit'
    RichEdit.MenuLabels.UndoCaption = '&Undo'
    RichEdit.MenuLabels.CutCaption = 'Cu&t'
    RichEdit.MenuLabels.CopyCaption = '&Copy'
    RichEdit.MenuLabels.PasteCaption = '&Paste'
    RichEdit.MenuLabels.ClearCaption = 'Cle&ar'
    RichEdit.MenuLabels.SelectallCaption = 'Select A&ll'
    RichEdit.MenuLabels.FindCaption = '&Find'
    RichEdit.MenuLabels.FindNextCaption = 'Find &Next'
    RichEdit.MenuLabels.ReplaceCaption = 'R&eplace'
    RichEdit.MenuLabels.InsertObjectCaption = '&Object...'
    RichEdit.MenuLabels.ToolCaption = '&Tools'
    RichEdit.MenuLabels.SpellCheckCaption = 'Check &Spelling'
    RichEdit.MenuLabels.InsertCaption = '&Insert'
    RichEdit.MenuLabels.RulerCaption = '&Ruler'
    RichEdit.MenuLabels.ViewCaption = '&View'
    RichEdit.MenuLabels.ToolbarCaption = '&Toolbar'
    RichEdit.MenuLabels.FormatBarCaption = '&Format Bar'
    RichEdit.MenuLabels.ViewStatusBarCaption = '&Status Bar'
    RichEdit.MenuLabels.OptionsCaption = '&Options'
    RichEdit.MenuLabels.FormatCaption = 'F&ormat'
    RichEdit.MenuLabels.FontCaption = '&Font'
    RichEdit.MenuLabels.BulletStyleCaption = '&Bullet Style'
    RichEdit.MenuLabels.ParagraphCaption = '&Paragraph'
    RichEdit.MenuLabels.TabsCaption = '&Tabs'
    RichEdit.MenuLabels.HelpCaption = 'Help'
    RichEdit.PopupMenuLabels.EditCaption = '&Edit'
    RichEdit.PopupMenuLabels.ViewCaption = '&View'
    RichEdit.PopupMenuLabels.CutCaption = 'Cu&t'
    RichEdit.PopupMenuLabels.CopyCaption = '&Copy'
    RichEdit.PopupMenuLabels.PasteCaption = '&Paste'
    RichEdit.PopupMenuLabels.FontCaption = '&Font'
    RichEdit.PopupMenuLabels.BulletStyleCaption = '&Bullet Style'
    RichEdit.PopupMenuLabels.BoldCaption = 'B&old'
    RichEdit.PopupMenuLabels.ItalicCaption = '&Italic'
    RichEdit.PopupMenuLabels.UnderlineCaption = '&Underline'
    RichEdit.PopupMenuLabels.ParagraphCaption = 'P&aragraph'
    RichEdit.PopupMenuLabels.TabsCaption = '&Tabs'
    RichEdit.PopupMenuLabels.FindCaption = 'Fin&d'
    RichEdit.PopupMenuLabels.ReplaceCaption = '&Replace'
    RichEdit.PopupMenuLabels.InsertObjectCaption = 'Insert &Object...'
    RichEdit.PopupMenuLabels.ObjectPropertiesCaption = 'Object P&roperties'
    RichEdit.PopupMenuLabels.SpellCheckCaption = 'Check &Spelling'
    RichEdit.ParagraphDialog.ParagraphDlgCaption = 'Paragraph'
    RichEdit.ParagraphDialog.IndentationGroupBoxCaption = 'Indentation'
    RichEdit.ParagraphDialog.LeftEditHint = 'Left Indentation'
    RichEdit.ParagraphDialog.RightEditHint = 'Right Indentation'
    RichEdit.ParagraphDialog.FirstLineEditHint = 'First Line of Paragraph Indentation'
    RichEdit.ParagraphDialog.AlignmentHint = 'Changes Alignment of Paragraph'
    RichEdit.ParagraphDialog.LeftEditCaption = 'Left:'
    RichEdit.ParagraphDialog.RightEditCaption = 'Right:'
    RichEdit.ParagraphDialog.FirstLineEditCaption = 'First line:'
    RichEdit.ParagraphDialog.SpacingGroupCaption = 'Spacing'
    RichEdit.ParagraphDialog.BeforeParagraphCaption = '&Before'
    RichEdit.ParagraphDialog.AfterParagraphCaption = 'Aft&er'
    RichEdit.ParagraphDialog.WithinParagraphCaption = 'Li&ne Spacing'
    RichEdit.ParagraphDialog.WithinParagraphAtCaption = '&At'
    RichEdit.ParagraphDialog.AlignmentCaption = 'Alignment'
    RichEdit.ParagraphDialog.AlignLeft = 'Left'
    RichEdit.ParagraphDialog.AlignRight = 'Right'
    RichEdit.ParagraphDialog.AlignCenter = 'Center'
    RichEdit.ParagraphDialog.AlignJustify = 'Justify'
    RichEdit.TabDialog.TabDlgCaption = 'Tab'
    RichEdit.TabDialog.TabGroupBoxCaption = '&Tab Stop Position'
    RichEdit.TabDialog.SetTabButtonCaption = 'Set'
    RichEdit.TabDialog.ClearTabButtonCaption = 'Clear'
    RichEdit.TabDialog.ClearAllButtonCaption = 'Clear All'
    RichEdit.TabDialog.TabPositionEditHint = 'Tab Position Edit Box'
    RichEdit.TabDialog.ListBoxHint = 'List of tabs and their positions'
    RichEdit.TabDialog.SetButtonHint = 'Set a new tab position'
    RichEdit.TabDialog.ClearButtonHint = 'Clear the selected tab position'
    RichEdit.TabDialog.ClearAllButtonHint = 'Clear all the tabs'
    UserMessages.wwDBGridDiscardChanges = 'Discard changes to this record?'
    UserMessages.PictureValidateError = 'Invalid characters. Field : '
    UserMessages.LocateNoMatches = 'No matches found'
    UserMessages.LocateNoMoreMatches = 'No more matches found'
    UserMessages.MemoChangesWarning = 'Changes have been made!  Are you sure you wish to cancel?'
    UserMessages.RichEditExitWarning = 'Changes have been made!  Do you wish to save your changes?'
    UserMessages.RichEditClearWarning = 'Clear entire text?'
    UserMessages.RichEditSpellCheckComplete = 'The spell check is complete.'
    UserMessages.RichEditMSWordNotFound = 'Unable to start Microsoft Word'#39's Spell Checker.'
    UserMessages.FilterDlgNoCriteria = 'You have not selected any search criteria'
    UserMessages.RecordViewExitWarning = 'Changes have been made!  Do you wish to save your changes?'
    OKCancelBitmapped = True
    BtnOKCaption = '&OK'
    BtnCancelCaption = 'Cancel'
    CheckBoxInGridStyle = cbStyleAuto
    VersionInfoPower = '3000.08.01'
    FilterMemoSize = 65536
    DialogFontStyle = []
    Connected = False
    Left = 192
    Top = 32
  end
  object TabSetUp: TTable
    DatabaseName = 'kulture'
    FieldDefs = <
      item
        Name = 'Naziv1'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Naziv2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Adresa1'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Adresa2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Telefon'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PathHDD'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'PathFloppy'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'INIpath'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Reportpath'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ZadnjiputSnimano'
        DataType = ftDateTime
      end
      item
        Name = 'PathUvjerenja'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'PDV'
        DataType = ftSmallint
      end
      item
        Name = 'Rjesenje1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Rjesenje2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Rjesenje3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Rjesenje4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Rjesenje5'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NN1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NN2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NN3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NN4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NN5'
        DataType = ftString
        Size = 20
      end>
    StoreDefs = True
    TableName = 'SetUp.DB'
    Left = 104
    Top = 214
    object TabSetUpNaziv1: TStringField
      DisplayWidth = 15
      FieldName = 'Naziv1'
      Size = 40
    end
    object TabSetUpNaziv2: TStringField
      DisplayWidth = 21
      FieldName = 'Naziv2'
      Size = 40
    end
    object TabSetUpAdresa1: TStringField
      DisplayWidth = 23
      FieldName = 'Adresa1'
      Size = 40
    end
    object TabSetUpAdresa2: TStringField
      DisplayWidth = 21
      FieldName = 'Adresa2'
      Size = 40
    end
    object TabSetUpTelefon: TStringField
      DisplayWidth = 13
      FieldName = 'Telefon'
    end
    object TabSetUpPathHDD: TStringField
      DisplayWidth = 47
      FieldName = 'PathHDD'
      Size = 40
    end
    object TabSetUpPathFloppy: TStringField
      DisplayWidth = 12
      FieldName = 'PathFloppy'
      Size = 5
    end
    object TabSetUpINIpath: TStringField
      DisplayWidth = 47
      FieldName = 'INIpath'
      Size = 40
    end
    object TabSetUpReportpath: TStringField
      DisplayWidth = 47
      FieldName = 'Reportpath'
      Size = 40
    end
    object TabSetUpZadnjiputSnimano: TDateTimeField
      DisplayWidth = 21
      FieldName = 'ZadnjiputSnimano'
    end
    object TabSetUpPathUvjerenja: TStringField
      DisplayWidth = 47
      FieldName = 'PathUvjerenja'
      Size = 40
    end
    object TabSetUpPDV: TSmallintField
      FieldName = 'PDV'
    end
    object TabSetUpRjesenje1: TStringField
      FieldName = 'Rjesenje1'
    end
    object TabSetUpRjesenje2: TStringField
      FieldName = 'Rjesenje2'
    end
    object TabSetUpRjesenje3: TStringField
      FieldName = 'Rjesenje3'
    end
    object TabSetUpRjesenje4: TStringField
      FieldName = 'Rjesenje4'
    end
    object TabSetUpRjesenje5: TStringField
      FieldName = 'Rjesenje5'
    end
    object TabSetUpNN1: TStringField
      FieldName = 'NN1'
    end
    object TabSetUpNN2: TStringField
      FieldName = 'NN2'
    end
    object TabSetUpNN3: TStringField
      FieldName = 'NN3'
    end
    object TabSetUpNN4: TStringField
      FieldName = 'NN4'
    end
    object TabSetUpNN5: TStringField
      FieldName = 'NN5'
    end
  end
  object tPravoNaModule: TTable
    DatabaseName = 'kulture'
    TableName = 'PravoNaModule.DB'
    Left = 271
    Top = 218
  end
  object tPravoNaVrste: TTable
    DatabaseName = 'kulture'
    TableName = 'PravoNaVrste.DB'
    Left = 273
    Top = 265
  end
  object tModuli: TTable
    DatabaseName = 'kulture'
    TableName = 'Moduli.db'
    Left = 347
    Top = 218
  end
  object tNivoPrava: TTable
    DatabaseName = 'kulture'
    TableName = 'NivoPrava.db'
    Left = 346
    Top = 267
  end
  object frReport1: TfrReport
    Dataset = MainForm.frDBDataSet1
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Title = 'Zahtjev'
    RebuildPrinter = False
    Left = 136
    Top = 296
    ReportForm = {19000000}
  end
end
