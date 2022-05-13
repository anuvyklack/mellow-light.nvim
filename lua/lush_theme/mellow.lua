--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

-- Enable lush.ify on this file, run: :Lushify

local lush = require('lush')
local hsl   = lush.hsl
local hsluv = lush.hsluv

-- Colors {{{

local fg1 = hsluv(23, 21, 3)   -- 0  #0F0908
local bg1 = hsluv(61, 54, 89)  -- 15 #F2DDBC
local bg2 = hsluv(60, 30, 83)  -- 7  #E0CCAE

local red     = hsluv(7, 100, 37)  -- 1  #AF0032
local pink    = hsluv(11, 100, 66) -- 9  #FF7477
local green1  = hsluv(112, 83, 42) -- 2  #4C6E25
local green2  = hsluv(113, 86, 71) -- 10 #84BF40
local color3  = hsluv(35, 51, 53)  -- 3  #A67458
local color4  = hsluv(311, 27, 30) -- 4  #573E55
local color5  = hsluv(8, 50,  26)  -- 5  #66292F
local color6  = hsluv(18, 82, 47)  -- 6  #BF472C
local color8  = hsluv(22, 39, 17)  -- 8  #3D241F
local color11 = hsluv(42, 77, 76)  -- 11 #F3AE72
local color12 = hsluv(324, 9, 53)  -- 12 #8A7B85
local color13 = hsluv(5, 35, 40)   -- 13 #8A4B53
local color14 = hsluv(32, 75, 61)  -- 14 #D47D49

local easymotion1 = hsluv('#ff0000')
local easymotion2 = hsluv('#ffb400')
local easymotion3 = hsluv('#b98300')

local hop1 = hsluv('#ff007c')
local hop2 = hsluv('#00a3ba')
local hop3 = hsluv('#00dfff')
local hop4 = hsluv('#0099ff')
local hop5 = hsluv('#007dd6')
local hop6 = hsluv('#0071bd')

-- }}}

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function()
   return {
      -- Predefined Highlight Groups {{{

      -- Black  { fg = black },
      -- Red    { fg = red },
      -- Green  { fg = green },
      -- Yellow { fg = yellow },
      -- Orange { fg = orange },
      -- Aqua   { },
      -- Blue   { fg = blue },
      -- Purple { fg = purple },
      -- Grey   { fg = grey4 },
      --
      -- BlackBold  { Black,  gui = 'bold' },
      -- RedBold    { Red,    gui = 'bold' },
      -- GreenBold  { Green,  gui = 'bold' },
      -- YellowBold { Yellow, gui = 'bold' },
      -- OrangeBold { Orange, gui = 'bold' },
      -- AquaBold   { Aqua,   gui = 'bold' },
      -- BlueBold   { Blue,   gui = 'bold' },
      -- PurpleBold { Purple, gui = 'bold' },
      -- GreyBold   { Grey,   gui = 'bold' },
      --
      -- BlackItalic    { Black,  gui = 'italic' },
      -- RedItalic    { Red,    gui = 'italic' },
      -- GreenItalic  { Green,  gui = 'italic' },
      -- YellowItalic { Yellow, gui = 'italic' },
      -- OrangeItalic { Orange, gui = 'italic' },
      -- AquaItalic   { Aqua,   gui = 'italic' },
      -- BlueItalic   { Blue,   gui = 'italic' },
      -- PurpleItalic { Purple, gui = 'italic' },
      -- GreyItalic   { Grey,   gui = 'italic' },

      -- }}}

      -- Standart {{{

      -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
      -- groups, mostly used for styling UI elements.
      -- Comment them out and add your own properties to override the defaults.
      -- An empty definition `{}` will clear all styling, leaving elements looking
      -- like the 'Normal' group.
      -- To be able to link to a group, it must already be defined, so you may have
      -- to reorder items as you go.
      --
      -- See :h highlight-groups

      -- hi! link CursorIM Cursor
      -- hi! link Terminal Normal
      -- hi! link helpLeadBlank StatusLineNC
      -- hi! link helpNormal StatusLineNC

      ColorColumn  { bg = bg2 }, -- Columns set with 'colorcolumn'
      Conceal      { fg = color12 }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
      -- Cursor       { }, -- Character under the cursor
      -- lCursor      { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
      -- CursorIM     { }, -- Like Cursor, but used when in IME mode |CursorIM|
      CursorColumn { bg = bg2 }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
      CursorLine   { CursorColumn }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
      Directory    { fg = color6 }, -- Directory names (and other special names in listings)
      DiffAdd      { bg = green2 }, -- Diff mode: Added line |diff.txt|
      DiffChange   { fg = color6 }, -- Diff mode: Changed line |diff.txt|
      DiffDelete   { fg = pink, gui = 'bold' }, -- Diff mode: Deleted line |diff.txt|
      DiffText     { bg = color11 }, -- Diff mode: Changed text within a changed line |diff.txt|
      EndOfBuffer  { fg = color12, bg = bg2 }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
      -- TermCursor   { }, -- Cursor in a focused terminal
      -- TermCursorNC { }, -- Cursor in an unfocused terminal
      ErrorMsg     { fg = bg1, bg = red }, -- Error messages on the command line
      VertSplit    { fg = color3, bg = bg2, gui = 'bold' }, -- Column separating vertically split windows
      Folded       { fg = color12, bg = bg2 }, -- Line used for closed folds
      FoldColumn   { fg = color12, bg = bg2 }, -- 'foldcolumn'
      SignColumn   { CursorColumn }, -- Column where |signs| are displayed
      IncSearch    { fg = fg1, bg = color11 }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
      -- Substitute   { }, -- |:substitute| replacement text highlighting
      LineNr       { fg = color14, bg = bg2 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
      CursorLineNr { fg = color6, bg = bg2 }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
      MatchParen   { fg = color6, bg = color11 }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
      ModeMsg      { fg = color6, gui = 'bold' }, -- 'showmode' message (e.g., "-- INSERT -- ")
      -- MsgArea      { }, -- Area for messages and cmdline
      -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
      MoreMsg      { fg = color3, gui = 'bold' }, -- |more-prompt|
      NonText      { fg = pink, bg = bg2 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
      Normal       { fg = fg1, bg = bg1 }, -- Normal text
      -- NormalFloat  { }, -- Normal text in floating windows.
      -- NormalNC     { }, -- normal text in non-current windows
      Pmenu        { fg = color3, bg = bg2 }, -- Popup menu: Normal item.
      PmenuSel     { fg = color6, bg = color11 }, -- Popup menu: Selected item.
      PmenuSbar    { Pmenu }, -- Popup menu: Scrollbar.
      PmenuThumb   { fg = color11, bg = color13 }, -- Popup menu: Thumb of the scrollbar.
      Question     { ModeMsg }, -- |hit-enter| prompt and yes/no questions
      QuickFixLine { gui = "underline" }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
      Search       { IncSearch }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
      SpecialKey   { fg = color12 }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
      SpellBad     { fg = red, bg = bg1, gui = 'undercurl', guisp = pink }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
      SpellCap     { fg = color4, bg = bg1, gui = 'undercurl', guisp = color12 }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
      SpellLocal   { fg = color6, bg = bg1, gui = 'undercurl', guisp = color14 }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
      SpellRare    { fg = color3, bg = bg1, gui = 'undercurl', guisp = color11 }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
      StatusLine   { fg = color13, bg = color11, gui = 'bold' }, -- Status line of current window
      StatusLineNC { fg = color3, bg = bg2, gui = 'bold,underline' }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
      TabLine      { StatusLine }, -- Tab pages line, not active tab page label
      TabLineFill  { StatusLineNC }, -- Tab pages line, where there are no labels
      TabLineSel   { StatusLine }, -- Tab pages line, active tab page label
      Title        { ModeMsg }, -- Titles for output from ":set all", ":autocmd" etc.
      Visual       { bg = color11 }, -- Visual mode selection
      VisualNOS    { fg = pink, gui = 'bold' }, -- Visual mode selection when vim is "Not Owning the Selection".
      WarningMsg   { VisualNOS }, -- Warning messages
      -- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
      -- Winseparator { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
      WildMenu     { fg = color6, bg = bg2 }, -- Current match in 'wildmenu' completion

      -- }}}
      -- Syntax {{{

      -- Common vim syntax groups used for all kinds of code and markup.
      -- Commented-out groups should chain up to their preferred (*) group
      -- by default.
      --
      -- See :h group-name
      --
      -- Uncomment and edit if you want more specific syntax highlighting.

      Comment        { fg = color14 }, -- Any comment

      Constant       { fg = green2 }, -- (*) Any constant
      String         { fg = color4 }, --   A string constant: "this is a string"
      -- Character      { }, --   A character constant: 'c', '\n'
      Number         { fg = green2 }, --   A number constant: 234, 0xff
      -- Boolean        { }, --   A boolean constant: TRUE, false
      -- Float          { }, --   A floating point constant: 2.3e10

      Identifier     { fg = color13 }, -- (*) Any variable name
      Function       { fg = color5 }, --   Function name (also: methods for classes)

      Statement      { fg = red }, -- (*) Any statement
      -- Conditional    { }, --   if, then, else, endif, switch, etc.
      -- Repeat         { }, --   for, do, while, etc.
      -- Label          { }, --   case, default, etc.
      -- Operator       { }, --   "sizeof", "+", "*", etc.
      -- Keyword        { }, --   any other keyword
      -- Exception      { }, --   try, catch, throw

      PreProc        { fg = color13 }, -- (*) Generic Preprocessor
      -- Include        { }, --   Preprocessor #include
      -- Define         { }, --   Preprocessor #define
      -- Macro          { }, --   Same as Define
      -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

      Type           { Function }, -- (*) int, long, char, etc.
      -- StorageClass   { }, --   static, register, volatile, etc.
      -- Structure      { }, --   struct, union, enum, etc.
      -- Typedef        { }, --   A typedef

      Special        { fg = color12 }, -- (*) Any special symbol
      -- SpecialChar    { }, --   Special character in a constant
      -- Tag            { }, --   You can use CTRL-] on this
      -- Delimiter      { }, --   Character that needs attention
      -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
      -- Debug          { }, --   Debugging statements

      Underlined     { gui = "underline" }, -- Text that stands out, HTML links
      -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
      Error          { fg = pink, gui = 'bold' }, -- Any erroneous construct
      Todo           { fg = color12, gui = 'bold' }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

      -- }}}
      -- LSP {{{

      -- These groups are for the native LSP client and diagnostic system. Some
      -- other LSP clients may use these groups, or use their own. Consult your
      -- LSP client's documentation.

      -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
      --
      -- LspReferenceText            { } , -- Used for highlighting "text" references
      -- LspReferenceRead            { } , -- Used for highlighting "read" references
      -- LspReferenceWrite           { } , -- Used for highlighting "write" references
      -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
      -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
      -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

      -- }}}
      -- Diagnostic {{{

      -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
      --
      -- DiagnosticError            { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
      -- DiagnosticWarn             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
      -- DiagnosticInfo             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
      -- DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
      -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
      -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
      -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
      -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
      -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
      -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
      -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
      -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
      -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
      -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
      -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
      -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
      -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
      -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
      -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
      -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.

      -- }}}
      -- Tree-Sitter {{{

      -- Tree-Sitter syntax groups. Most link to corresponding
      -- vim syntax groups (e.g. TSKeyword => Keyword) by default.
      --
      -- See :h nvim-treesitter-highlights, some groups may not be listed, submit a PR fix to lush-template!
      --
      -- TSAttribute          { } , -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
      -- TSBoolean            { } , -- Boolean literals: `True` and `False` in Python.
      -- TSCharacter          { } , -- Character literals: `'a'` in C.
      -- TSCharacterSpecial   { } , -- Special characters.
      TSComment            { Comment } , -- Line comments and block comments.
      -- TSConditional        { } , -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
      -- TSConstant           { } , -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
      -- TSConstBuiltin       { } , -- Built-in constant values: `nil` in Lua.
      -- TSConstMacro         { } , -- Constants defined by macros: `NULL` in C.
      -- TSConstructor        { } , -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
      -- TSDebug              { } , -- Debugging statements.
      -- TSDefine             { } , -- Preprocessor #define statements.
      -- TSError              { } , -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
      -- TSException          { } , -- Exception related keywords: `try`, `except`, `finally` in Python.
      -- TSField              { } , -- Object and struct fields.
      -- TSFloat              { } , -- Floating-point number literals.
      -- TSFunction           { } , -- Function calls and definitions.
      -- TSFuncBuiltin        { } , -- Built-in functions: `print` in Lua.
      -- TSFuncMacro          { } , -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
      -- TSInclude            { } , -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
      -- TSKeyword            { } , -- Keywords that don't fit into other categories.
      -- TSKeywordFunction    { } , -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
      -- TSKeywordOperator    { } , -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
      -- TSKeywordReturn      { } , -- Keywords like `return` and `yield`.
      -- TSLabel              { } , -- GOTO labels: `label:` in C, and `::label::` in Lua.
      -- TSMethod             { } , -- Method calls and definitions.
      -- TSNamespace          { } , -- Identifiers referring to modules and namespaces.
      -- TSNone               { } , -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
      -- TSNumber             { } , -- Numeric literals that don't fit into other categories.
      -- TSOperator           { } , -- Binary or unary operators: `+`, and also `->` and `*` in C.
      -- TSParameter          { } , -- Parameters of a function.
      -- TSParameterReference { } , -- References to parameters of a function.
      -- TSPreProc            { } , -- Preprocessor #if, #else, #endif, etc.
      -- TSProperty           { } , -- Same as `TSField`.
      -- TSPunctDelimiter     { } , -- Punctuation delimiters: Periods, commas, semicolons, etc.
      -- TSPunctBracket       { } , -- Brackets, braces, parentheses, etc.
      -- TSPunctSpecial       { } , -- Special punctuation that doesn't fit into the previous categories.
      -- TSRepeat             { } , -- Keywords related to loops: `for`, `while`, etc.
      -- TSStorageClass       { } , -- Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc.
      -- TSString             { } , -- String literals.
      -- TSStringRegex        { } , -- Regular expression literals.
      -- TSStringEscape       { } , -- Escape characters within a string: `\n`, `\t`, etc.
      -- TSStringSpecial      { } , -- Strings with special meaning that don't fit into the previous categories.
      -- TSSymbol             { } , -- Identifiers referring to symbols or atoms.
      -- TSTag                { } , -- Tags like HTML tag names.
      -- TSTagAttribute       { } , -- HTML tag attributes.
      -- TSTagDelimiter       { } , -- Tag delimiters like `<` `>` `/`.
      -- TSText               { } , -- Non-structured text. Like text in a markup language.
      -- TSStrong             { } , -- Text to be represented in bold.
      -- TSEmphasis           { } , -- Text to be represented with emphasis.
      -- TSUnderline          { } , -- Text to be represented with an underline.
      -- TSStrike             { } , -- Strikethrough text.
      -- TSTitle              { } , -- Text that is part of a title.
      -- TSLiteral            { } , -- Literal or verbatim text.
      -- TSURI                { } , -- URIs like hyperlinks or email addresses.
      -- TSMath               { } , -- Math environments like LaTeX's `$ ... $`
      -- TSTextReference      { } , -- Footnotes, text references, citations, etc.
      -- TSEnvironment        { } , -- Text environments of markup languages.
      -- TSEnvironmentName    { } , -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
      -- TSNote               { } , -- Text representation of an informational note.
      -- TSWarning            { } , -- Text representation of a warning note.
      -- TSDanger             { } , -- Text representation of a danger note.
      -- TSType               { } , -- Type (and class) definitions and annotations.
      -- TSTypeBuiltin        { } , -- Built-in types: `i32` in Rust.
      -- TSVariable           { } , -- Variable names that don't fit into other categories.
      -- TSVariableBuiltin    { } , -- Variable names defined by the language: `this` or `self` in Javascript.

      -- }}}

      -- Plugins {{{
      -- phaazon/hop.nvim {{{

      HopNextKey  { fg = hop1, gui = 'bold' },
      HopNextKey1 { fg = hop3, gui = 'bold' },
      HopNextKey2 { fg = hop2 },
      HopUnmatched { fg = hsluv('#aaaaaa') },

      -- }}}
      -- chentau/marks.nvim {{{

      -- MarkSignHL     { }, -- Displayed mark signs.
      -- MarkSignNumHL  { }, -- The number line in a signcolumn.
      -- MarkVirtTextHL { }, -- Bookmark virtual text annotations.

      -- }}}
      -- romgrk/barbar.nvim {{{
      -- Meaning of terms:
      --
      -- format: "Buffer" + status + part
      --
      -- status:
      --      Current : current buffer
      --      Visible : visible but not current buffer
      --     Inactive : invisible but not current buffer
      --
      -- part:
      --         Icon : filetype icon
      --        Index : buffer index
      --          Mod : when modified
      --         Sign : the separator between buffers
      --       Target : letter in buffer-picking mode
      --

      -- BufferCurrent        { }, -- fg1,    bg5
      -- BufferCurrentIndex   { }, -- fg1,    bg5
      -- BufferCurrentMod     { }, -- blue,   bg5
      -- BufferCurrentSign    { }, -- grey2,  bg5
      -- BufferCurrentTarget  { }, -- red,    bg5,   'bold'
      --
      -- BufferVisible        { }, -- fg1,    bg3
      -- BufferVisibleIndex   { }, -- fg1,    bg3
      -- BufferVisibleMod     { }, -- blue,   bg3
      -- BufferVisibleSign    { }, -- grey2,  bg3
      -- BufferVisibleTarget  { }, -- yellow, bg3,   'bold'
      --
      -- BufferInactive       { }, -- grey1,  bg3
      -- BufferInactiveIndex  { }, -- grey1,  bg3
      -- BufferInactiveMod    { }, -- grey1,  bg3
      -- BufferInactiveSign   { }, -- grey0,  bg3
      -- BufferInactiveTarget { }, -- yellow, bg3,   'bold'
      --
      -- BufferTabpages    { }, -- bg0, grey2, 'bold' -- tabpage indicator
      -- BufferTabpageFill { }, -- bg0, bg0 -- filler after the buffer section
      -- BufferOffset      { }, -- offset section, created with set_offset()

      -- }}}
      -- }}}
      -- Extended Syntax {{{

      -- -- JSON
      -- jsonKeyword { String },

      -- -- Make
      -- makeTarget { Function },

      -- -- Markdown {{{
      -- markdownCode       { Comment },
      -- markdownCodeBlock  { Comment },
      -- markdownListMarker { Keyword },
      -- markdownOrderedListMarker { Keyword },
      -- -- }}}

      -- -- Shell
      -- shFunctionKey { Keyword },

      -- -- SQL
      -- sqlKeyword { Keyword },

      -- Vimscript {{{
      VimCommentTitle { Todo },
      VimIsCommand    { Constant },
      vimGroup        { Constant },
      vimHiGroup      { Constant },
      -- }}}

      -- -- YAML
      -- yamlPlainScalar { String },

      -- }}}
   }
end)

return theme

-- vim: nowrap fdm=marker
