local selenized = require("selenized.colors")

local theme = {}

theme.loadSyntax = function()
  -- Syntax highlight groups

  local syntax = {
    Type = { fg = selenized.purple }, -- int, long, char, etc.
    StorageClass = { fg = selenized.cyan }, -- static, register, volatile, etc.
    Structure = { fg = selenized.puple }, -- struct, union, enum, etc.
    Constant = { fg = selenized.yellow }, -- any constant
    String = { fg = selenized.green, bg = selenized.none, style = 'italic' }, -- Any string
    Character = { fg = selenized.orange }, -- any character constant: 'c', '\n'
    Number = { fg = selenized.orange }, -- a number constant: 5
    Boolean = { fg = selenized.orange }, -- a boolean constant: TRUE, false
    Float = { fg = selenized.orange }, -- a floating point constant: 2.3e10
    Statement = { fg = selenized.pink }, -- any statement
    Label = { fg = selenized.purple }, -- case, default, etc.
    Operator = { fg = selenized.cyan }, -- sizeof", "+", "*", etc.
    Exception = { fg = selenized.cyan }, -- try, catch, throw
    PreProc = { fg = selenized.purple }, -- generic Preprocessor
    Include = { fg = selenized.blue }, -- preprocessor #include
    Define = { fg = selenized.pink }, -- preprocessor #define
    Macro = { fg = selenized.cyan }, -- same as Define
    Typedef = { fg = selenized.red }, -- A typedef
    PreCondit = { fg = selenized.cyan }, -- preprocessor #if, #else, #endif, etc.
    Special = { fg = selenized.red }, -- any special symbol
    SpecialChar = { fg = selenized.pink }, -- special character in a constant
    Tag = { fg = selenized.red }, -- you can use CTRL-] on this
    Delimiter = { fg = selenized.cyan }, -- character that needs attention like , or .
    SpecialComment = { fg = selenized.gray }, -- special things inside a comment
    Debug = { fg = selenized.red }, -- debugging statements
    Underlined = { fg = selenized.link, bg = selenized.none, style = 'underline' }, -- text that stands out, HTML links
    Ignore = { fg = selenized.disabled }, -- left blank, hidden
    Error = { fg = selenized.error, bg = selenized.none, style = 'bold,underline' }, -- any erroneous construct
    Todo = { fg = selenized.yellow, bg = selenized.none, style = 'bold,italic' }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    htmlLink = { fg = selenized.link, style = "underline" },
    htmlH1 = { fg = selenized.cyan, style = "bold" },
    htmlH2 = { fg = selenized.red, style = "bold" },
    htmlH3 = { fg = selenized.green, style = "bold" },
    htmlH4 = { fg = selenized.yellow, style = "bold" },
    htmlH5 = { fg = selenized.purple, style = "bold" },
    markdownH1 = { fg = selenized.cyan, style = "bold" },
    markdownH2 = { fg = selenized.red, style = "bold" },
    markdownH3 = { fg = selenized.green, style = "bold" },
    markdownH1Delimiter = { fg = selenized.cyan },
    markdownH2Delimiter = { fg = selenized.red },
    markdownH3Delimiter = { fg = selenized.green },
  }

  -- Options:

  -- Italic comments
  if vim.g.selenized_italic_comments == true then
    syntax.Comment = { fg = selenized.comments, bg = selenized.none, style = 'italic' } -- italic comments
  else
    syntax.Comment = { fg = selenized.comments } -- normal comments
  end

  -- Italic Keywords
  if vim.g.selenized_italic_keywords == true then
    syntax.Conditional = { fg = selenized.purple, bg = selenized.none, style = 'italic' } -- italic if, then, else, endif, switch, etc.
    syntax.Keyword = { fg = selenized.purple, bg = selenized.none, style = 'italic' } -- italic for, do, while, etc.
    syntax.Repeat = { fg = selenized.purple, bg = selenized.none, style = 'italic' } -- italic any other keyword
  else
    syntax.Conditional = { fg = selenized.purple } -- normal if, then, else, endif, switch, etc.
    syntax.Keyword = { fg = selenized.purple } -- normal for, do, while, etc.
    syntax.Repeat = { fg = selenized.purple } -- normal any other keyword
  end

  -- Italic Function names
  if vim.g.selenized_italic_functions == true then
    syntax.Function = { fg = selenized.blue, bg = selenized.none, style = 'italic' } -- italic funtion names
  else
    syntax.Function = { fg = selenized.blue } -- normal function names
  end

  if vim.g.selenized_italic_variables == true then
    syntax.Identifier = { fg = selenized.gray, bg = selenized.none, style = 'italic' }; -- any variable name
  else
    syntax.Identifier = { fg = selenized.gray }; -- any variable name
  end

  return syntax

end


theme.loadEditor = function()
  -- Editor highlight groups

  local editor = {
    NormalFloat = { fg = selenized.fg, bg = selenized.float }, -- normal text and background color
    ColorColumn = { fg = selenized.none, bg = selenized.active }, --  used for the columns set with 'colorcolumn'
    Conceal = { fg = selenized.disabled }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = { fg = selenized.cursor, bg = selenized.none, style = 'reverse' }, -- the character under the cursor
    CursorIM = { fg = selenized.cursor, bg = selenized.none, style = 'reverse' }, -- like Cursor, but used when in IME mode
    Directory = { fg = selenized.blue, bg = selenized.none }, -- directory names (and other special names in listings)
    DiffAdd = { fg = selenized.green, bg = selenized.none, style = 'reverse' }, -- diff mode: Added line
    DiffChange = { fg = selenized.orange, bg = selenized.none, style = 'reverse' }, --  diff mode: Changed line
    DiffDelete = { fg = selenized.red, bg = selenized.none, style = 'reverse' }, -- diff mode: Deleted line
    DiffText = { fg = selenized.yellow, bg = selenized.none, style = 'reverse' }, -- diff mode: Changed text within a changed line
    EndOfBuffer = { fg = selenized.disabled },
    ErrorMsg = { fg = selenized.none },
    Folded = { fg = selenized.disabled, bg = selenized.none, style = 'italic' },
    FoldColumn = { fg = selenized.blue },
    IncSearch = { fg = selenized.highlight, bg = selenized.white, style = 'reverse' },
    LineNr = { fg = selenized.line_numbers, bg = selenized.bg_alt },
    CursorLineNr = { fg = selenized.accent },
    MatchParen = { fg = selenized.yellow, bg = selenized.none, style = 'bold' },
    ModeMsg = { fg = selenized.accent },
    MoreMsg = { fg = selenized.accent },
    NonText = { fg = selenized.disabled },
    Pmenu = { fg = selenized.fg, bg = selenized.none },
    PmenuSel = { fg = selenized.accent, bg = selenized.active },
    PmenuSbar = { fg = selenized.text, bg = selenized.contrast },
    PmenuThumb = { fg = selenized.fg, bg = selenized.accent },
    Question = { fg = selenized.green },
    QuickFixLine = { fg = selenized.highlight, bg = selenized.white, style = 'reverse' },
    qfLineNr = { fg = selenized.highlight, bg = selenized.white, style = 'reverse' },
    Search = { fg = selenized.highlight, bg = selenized.white, style = 'reverse' },
    SpecialKey = { fg = selenized.purple },
    SpellBad = { fg = selenized.red, bg = selenized.none, style = 'italic,undercurl' },
    SpellCap = { fg = selenized.blue, bg = selenized.none, style = 'italic,undercurl' },
    SpellLocal = { fg = selenized.cyan, bg = selenized.none, style = 'italic,undercurl' },
    SpellRare = { fg = selenized.purple, bg = selenized.none, style = 'italic,undercurl' },
    StatusLine = { fg = selenized.fg, bg = selenized.contrast },
    StatusLineNC = { fg = selenized.text, bg = selenized.disabled },
    StatusLineTerm = { fg = selenized.fg, bg = selenized.contrast },
    StatusLineTermNC = { fg = selenized.text, bg = selenized.disabled },
    TabLineFill = { fg = selenized.fg },
    TablineSel = { fg = selenized.bg, bg = selenized.accent },
    Tabline = { fg = selenized.fg },
    Title = { fg = selenized.green, bg = selenized.none, style = 'bold' },
    Visual = { fg = selenized.none, bg = selenized.selection },
    VisualNOS = { fg = selenized.none, bg = selenized.selection },
    WarningMsg = { fg = selenized.yellow },
    WildMenu = { fg = selenized.orange, bg = selenized.none, style = 'bold' },
    CursorColumn = { fg = selenized.none, bg = selenized.active },
    CursorLine = { fg = selenized.none, bg = selenized.bg_alt },
    ToolbarLine = { fg = selenized.fg, bg = selenized.bg_alt },
    ToolbarButton = { fg = selenized.fg, bg = selenized.none, style = 'bold' },
    NormalMode = { fg = selenized.accent, bg = selenized.none, style = 'reverse' },
    InsertMode = { fg = selenized.green, bg = selenized.none, style = 'reverse' },
    ReplacelMode = { fg = selenized.red, bg = selenized.none, style = 'reverse' },
    VisualMode = { fg = selenized.purple, bg = selenized.none, style = 'reverse' },
    CommandMode = { fg = selenized.gray, bg = selenized.none, style = 'reverse' },
    Warnings = { fg = selenized.yellow },

    healthError = { fg = selenized.error },
    healthSuccess = { fg = selenized.green },
    healthWarning = { fg = selenized.yellow },

    -- Dashboard
    DashboardShortCut = { fg = selenized.grey },
    DashboardHeader = { fg = selenized.grey },
    DashboardCenter = { fg = selenized.grey },
    DashboardFooter = { fg = selenized.green, style = "italic" },

  }

  -- Options:

  --Set transparent background
  if vim.g.selenized_disable_background == true then
    editor.Normal = { fg = selenized.fg, bg = selenized.none } -- normal text and background color
    editor.SignColumn = { fg = selenized.fg, bg = selenized.none }
  else
    editor.Normal = { fg = selenized.fg, bg = selenized.bg } -- normal text and background color
    editor.SignColumn = { fg = selenized.fg, bg = selenized.bg }
  end

  -- Remove window split borders
  if vim.g.selenized_borders == true then
    editor.VertSplit = { fg = selenized.border }
  else
    editor.VertSplit = { fg = selenized.bg }
  end

  return editor
end

theme.loadTerminal = function()

  vim.g.terminal_color_0 = selenized.black
  vim.g.terminal_color_1 = selenized.red
  vim.g.terminal_color_2 = selenized.green
  vim.g.terminal_color_3 = selenized.yellow
  vim.g.terminal_color_4 = selenized.blue
  vim.g.terminal_color_5 = selenized.purple
  vim.g.terminal_color_6 = selenized.cyan
  vim.g.terminal_color_7 = selenized.white
  vim.g.terminal_color_8 = selenized.gray
  vim.g.terminal_color_9 = selenized.red
  vim.g.terminal_color_10 = selenized.green
  vim.g.terminal_color_11 = selenized.yellow
  vim.g.terminal_color_12 = selenized.blue
  vim.g.terminal_color_13 = selenized.purple
  vim.g.terminal_color_14 = selenized.cyan
  vim.g.terminal_color_15 = selenized.white

end

theme.loadTreeSitter = function()
  -- TreeSitter highlight groups

  local treesitter = {
    TSAnnotation = { fg = selenized.red, style = 'bold' }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    TSAttribute = { fg = selenized.yellow }, -- (unstable) TODO: docs
    TSBoolean = { fg = selenized.orange }, -- For booleans.
    TSCharacter = { fg = selenized.orange }, -- For characters.
    TSConstructor = { fg = selenized.purple }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    TSConstant = { fg = selenized.yellow }, -- For constants
    TSConstBuiltin = { fg = selenized.blue }, -- For constant that are built in the language: `nil` in Lua.
    TSConstMacro = { fg = selenized.blue }, -- For constants that are defined by macros: `NULL` in C.
    TSError = { fg = selenized.error, style = 'bold' }, -- For syntax/parser errors.
    TSException = { fg = selenized.yellow, style = 'bold' }, -- For exception related keywords.
    TSField = { fg = selenized.gray }, -- For fields.
    TSFloat = { fg = selenized.red }, -- For floats.
    TSFuncMacro = { fg = selenized.blue }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    TSInclude = { fg = selenized.cyan, style = 'bold' }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSLabel = { fg = selenized.red }, -- For labels: `label:` in C and `:label:` in Lua.
    TSNamespace = { fg = selenized.yellow }, -- For identifiers referring to modules and namespaces.
    --TSNone =                    { },    -- TODO: docs
    TSNumber = { fg = selenized.orange }, -- For all numbers
    TSOperator = { fg = selenized.black }, -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter = { fg = selenized.green }, -- For parameters of a function.
    TSParameterReference = { fg = selenized.green }, -- For references to parameters of a function.
    TSProperty = { fg = selenized.green }, -- Same as `TSField`.
    TSPunctDelimiter = { fg = selenized.black }, -- For delimiters ie: `.`
    TSPunctBracket = { fg = selenized.black }, -- For brackets and parens.
    TSPunctSpecial = { fg = selenized.black }, -- For special punctutation that does not fall in the catagories before.
    TSString = { fg = selenized.link }, -- For strings.
    TSStringRegex = { fg = selenized.blue }, -- For regexes.
    TSStringEscape = { fg = selenized.disabled }, -- For escape characters within a string.
    TSSymbol = { fg = selenized.yellow }, -- For identifiers referring to symbols or atoms.
    TSType = { fg = selenized.purple, style = 'bold' }, -- For types.
    TSTypeBuiltin = { fg = selenized.purple }, -- For builtin types.
    TSTag = { fg = selenized.red, style = 'bold' }, -- Tags like html tag names.
    TSTagDelimiter = { fg = selenized.yellow }, -- Tag delimiter like `<` `>` `/`
    TSText = { fg = selenized.text }, -- For strings considered text in a markup language.
    TSTextReference = { fg = selenized.yellow }, -- FIXME
    TSEmphasis = { fg = selenized.paleblue, style = 'bold' }, -- For text to be represented with emphasis.
    TSUnderline = { fg = selenized.fg, bg = selenized.none, style = 'underline' }, -- For text to be represented with an underline.
    TSStrike = {}, -- For strikethrough text.
    TSTitle = { fg = selenized.paleblue, bg = selenized.none, style = 'bold' }, -- Text that is part of a title.
    TSLiteral = { fg = selenized.fg }, -- Literal text.
    TSURI = { fg = selenized.link }, -- Any URI like a link or email.
  }

  -- Options:

  -- Italic comments
  if vim.g.selenized_italic_comments == true then
    treesitter.TSComment = { fg = selenized.comments, bg = selenized.none, style = 'bold,italic' } -- For comment blocks.
  else
    treesitter.TSComment = { fg = selenized.comments } -- For comment blocks.
  end

  if vim.g.selenized_italic_keywords == true then
    treesitter.TSConditional = { fg = selenized.greeen, style = 'italic' } -- For keywords related to conditionnals.
    treesitter.TSKeyword = { fg = selenized.green, style = 'italic' } -- For keywords that don't fall in previous categories.
    treesitter.TSRepeat = { fg = selenized.green, style = 'bold,italic' } -- For keywords related to loops.
    treesitter.TSKeywordFunction = { fg = selenized.green, style = 'bold,italic' } -- For keywords used to define a fuction.
  else
    treesitter.TSConditional = { fg = selenized.green } -- For keywords related to conditionnals.
    treesitter.TSKeyword = { fg = selenized.green } -- For keywords that don't fall in previous categories.
    treesitter.TSRepeat = { fg = selenized.green, style = 'bold' } -- For keywords related to loops.
    treesitter.TSKeywordFunction = { fg = selenized.green, style = 'bold' } -- For keywords used to define a fuction.
  end

  if vim.g.selenized_italic_functions == true then
    treesitter.TSFunction = { fg = selenized.purple, style = 'bold,italic' } -- For fuction (calls and definitions).
    treesitter.TSMethod = { fg = selenized.purple, style = 'bold,italic' } -- For method calls and definitions.
    treesitter.TSFuncBuiltin = { fg = selenized.yellow, style = 'bold,italic' } -- For builtin functions: `table.insert` in Lua.
  else
    treesitter.TSFunction = { fg = selenized.purple, style = 'bold' } -- For fuction (calls and definitions).
    treesitter.TSMethod = { fg = selenized.purple, style = 'bold' } -- For method calls and definitions.
    treesitter.TSFuncBuiltin = { fg = selenized.yellow, style = 'bold' } -- For builtin functions: `table.insert` in Lua.
  end

  if vim.g.selenized_italic_variables == true then
    treesitter.TSVariable = { fg = selenized.gray, style = 'italic' } -- Any variable name that does not have another highlight.
    treesitter.TSVariableBuiltin = { fg = selenized.gray, style = 'italic' } -- Variable names that are defined by the languages, like `this` or `self`.
  else
    treesitter.TSVariable = { fg = selenized.cursor } -- Any variable name that does not have another highlight.
    treesitter.TSVariableBuiltin = { fg = selenized.cursor } -- Variable names that are defined by the languages, like `this` or `self`.
  end

  return treesitter

end

theme.loadLSP = function()
  -- Lsp highlight groups

  local lsp = {
    LspDiagnosticsDefaultError = { fg = selenized.error }, -- used for "Error" diagnostic virtual text
    LspDiagnosticsSignError = { fg = selenized.error }, -- used for "Error" diagnostic signs in sign column
    LspDiagnosticsFloatingError = { fg = selenized.error }, -- used for "Error" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextError = { fg = selenized.error }, -- Virtual text "Error"
    LspDiagnosticsUnderlineError = { style = 'undercurl', sp = selenized.error }, -- used to underline "Error" diagnostics.
    LspDiagnosticsDefaultWarning = { fg = selenized.yellow }, -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsSignWarning = { fg = selenized.yellow }, -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsFloatingWarning = { fg = selenized.yellow }, -- used for "Warning" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextWarning = { fg = selenized.yellow }, -- Virtual text "Warning"
    LspDiagnosticsUnderlineWarning = { style = 'undercurl', sp = selenized.yellow }, -- used to underline "Warning" diagnostics.
    LspDiagnosticsDefaultInformation = { fg = selenized.paleblue }, -- used for "Information" diagnostic virtual text
    LspDiagnosticsSignInformation = { fg = selenized.paleblue }, -- used for "Information" diagnostic signs in sign column
    LspDiagnosticsFloatingInformation = { fg = selenized.paleblue }, -- used for "Information" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextInformation = { fg = selenized.paleblue }, -- Virtual text "Information"
    LspDiagnosticsUnderlineInformation = { style = 'undercurl', sp = selenized.paleblue }, -- used to underline "Information" diagnostics.
    LspDiagnosticsDefaultHint = { fg = selenized.purple }, -- used for "Hint" diagnostic virtual text
    LspDiagnosticsSignHint = { fg = selenized.purple }, -- used for "Hint" diagnostic signs in sign column
    LspDiagnosticsFloatingHint = { fg = selenized.purple }, -- used for "Hint" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextHint = { fg = selenized.purple }, -- Virtual text "Hint"
    LspDiagnosticsUnderlineHint = { style = 'undercurl', sp = selenized.paleblue }, -- used to underline "Hint" diagnostics.
    LspReferenceText = { fg = selenized.accent, bg = selenized.highlight }, -- used for highlighting "text" references
    LspReferenceRead = { fg = selenized.accent, bg = selenized.highlight }, -- used for highlighting "read" references
    LspReferenceWrite = { fg = selenized.accent, bg = selenized.highlight }, -- used for highlighting "write" references
  }

  return lsp

end

theme.loadPlugins = function()
  -- Plugins highlight groups

  local plugins = {

    -- LspTrouble
    LspTroubleText = { fg = selenized.text },
    LspTroubleCount = { fg = selenized.purple, bg = selenized.active },
    LspTroubleNormal = { fg = selenized.fg, bg = selenized.sidebar },

    -- Diff
    diffAdded = { fg = selenized.green },
    diffRemoved = { fg = selenized.red },
    diffChanged = { fg = selenized.yellow },
    diffOldFile = { fg = selenized.yelow },
    diffNewFile = { fg = selenized.orange },
    diffFile = { fg = selenized.blue },
    diffLine = { fg = selenized.comments },
    diffIndexLine = { fg = selenized.purple },

    -- Neogit
    NeogitBranch = { fg = selenized.paleblue },
    NeogitRemote = { fg = selenized.purple },
    NeogitHunkHeader = { fg = selenized.fg, bg = selenized.highlight },
    NeogitHunkHeaderHighlight = { fg = selenized.blue, bg = selenized.contrast },
    NeogitDiffContextHighlight = { fg = selenized.text, bg = selenized.contrast },
    NeogitDiffDeleteHighlight = { fg = selenized.red },
    NeogitDiffAddHighlight = { fg = selenized.green },

    -- GitGutter
    GitGutterAdd = { fg = selenized.green }, -- diff mode: Added line |diff.txt|
    GitGutterChange = { fg = selenized.yellow }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete = { fg = selenized.red }, -- diff mode: Deleted line |diff.txt|

    -- GitSigns
    GitSignsAdd = { fg = selenized.green }, -- diff mode: Added line |diff.txt|
    GitSignsAddNr = { fg = selenized.green }, -- diff mode: Added line |diff.txt|
    GitSignsAddLn = { fg = selenized.green }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = selenized.yellow }, -- diff mode: Changed line |diff.txt|
    GitSignsChangeNr = { fg = selenized.yellow }, -- diff mode: Changed line |diff.txt|
    GitSignsChangeLn = { fg = selenized.yellow }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = selenized.red }, -- diff mode: Deleted line |diff.txt|
    GitSignsDeleteNr = { fg = selenized.red }, -- diff mode: Deleted line |diff.txt|
    GitSignsDeleteLn = { fg = selenized.red }, -- diff mode: Deleted line |diff.txt|

    -- Telescope
    TelescopePromptBorder = { fg = selenized.cyan },
    TelescopeResultsBorder = { fg = selenized.purple },
    TelescopePreviewBorder = { fg = selenized.green },
    TelescopeSelectionCaret = { fg = selenized.purple },
    TelescopeSelection = { fg = selenized.purple },
    TelescopeMatching = { fg = selenized.cyan },
    TelescopeNormal = { fg = selenized.fg, bg = selenized.float },

    -- NvimTree
    NvimTreeRootFolder = { fg = selenized.blue, style = "bold" },
    NvimTreeGitDirty = { fg = selenized.yellow },
    NvimTreeGitNew = { fg = selenized.green },
    NvimTreeImageFile = { fg = selenized.yellow },
    NvimTreeExecFile = { fg = selenized.green },
    NvimTreeSpecialFile = { fg = selenized.purple, style = "underline" },
    NvimTreeFolderName = { fg = selenized.paleblue },
    NvimTreeEmptyFolderName = { fg = selenized.disabled },
    NvimTreeFolderIcon = { fg = selenized.accent },
    NvimTreeIndentMarker = { fg = selenized.disabled },
    LspDiagnosticsError = { fg = selenized.error },
    LspDiagnosticsWarning = { fg = selenized.yellow },
    LspDiagnosticsInformation = { fg = selenized.paleblue },
    LspDiagnosticsHint = { fg = selenized.purple },

    -- WhichKey
    WhichKey = { fg = selenized.accent, style = 'bold' },
    WhichKeyGroup = { fg = selenized.text },
    WhichKeyDesc = { fg = selenized.blue, style = 'italic' },
    WhichKeySeperator = { fg = selenized.fg },
    WhichKeyFloating = { bg = selenized.float },
    WhichKeyFloat = { bg = selenized.float },

    -- LspSaga
    DiagnosticError = { fg = selenized.error },
    DiagnosticWarning = { fg = selenized.yellow },
    DiagnosticInformation = { fg = selenized.paleblue },
    DiagnosticHint = { fg = selenized.purple },
    DiagnosticTruncateLine = { fg = selenized.fg },
    LspFloatWinNormal = { bg = selenized.contrast },
    LspFloatWinBorder = { fg = selenized.purple },
    LspSagaBorderTitle = { fg = selenized.cyan },
    LspSagaHoverBorder = { fg = selenized.paleblue },
    LspSagaRenameBorder = { fg = selenized.green },
    LspSagaDefPreviewBorder = { fg = selenized.green },
    LspSagaCodeActionBorder = { fg = selenized.blue },
    LspSagaFinderSelection = { fg = selenized.green },
    LspSagaCodeActionTitle = { fg = selenized.paleblue },
    LspSagaCodeActionContent = { fg = selenized.purple },
    LspSagaSignatureHelpBorder = { fg = selenized.pink },
    ReferencesCount = { fg = selenized.purple },
    DefinitionCount = { fg = selenized.purple },
    DefinitionIcon = { fg = selenized.blue },
    ReferencesIcon = { fg = selenized.blue },
    TargetWord = { fg = selenized.cyan },

    -- BufferLine
    BufferLineIndicatorSelected = { fg = selenized.accent },
    BufferLineFill = { bg = selenized.bg_alt },

    -- Sneak
    Sneak = { fg = selenized.bg, bg = selenized.accent },
    SneakScope = { bg = selenized.selection },

    -- Indent Blankline
    IndentBlanklineChar = { fg = selenized.highlight },
    IndentBlanklineContextChar = { fg = selenized.disabled },

    -- Nvim dap
    DapBreakpoint = { fg = selenized.red },
    DapStopped = { fg = selenized.green },
  }

  -- Options:

  -- Disable nvim-tree background
  if vim.g.selenized_disable_background == true then
    plugins.NvimTreeNormal = { fg = selenized.fg, bg = selenized.none }
  else
    plugins.NvimTreeNormal = { fg = selenized.fg, bg = selenized.sidebar }
  end

  return plugins

end

return theme
