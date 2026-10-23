-- friday-light: light theme matching the Ghostty friday-light terminal theme (warm cream / brown).
vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then vim.cmd("syntax reset") end
vim.o.termguicolors = true
vim.o.background = "light"
vim.g.colors_name = "friday-light"

local c = {
  bg = "#f2e5bc", card = "#f9f0cf", muted = "#ebdbb2", border = "#e0d0a4", border2 = "#cdbb8c",
  fg = "#654735", fg2 = "#7a5a45", dim = "#928066", subtle = "#a89a78",
  primary = "#45707a", accent = "#dccb98",
  red = "#c14a4a", red_bg = "#ecd2b2", green = "#6c782e", green_bg = "#e2dfae",
  yellow = "#b47109", yellow_bg = "#efdc9c", blue = "#45707a", blue_bg = "#d6dcbf",
  purple = "#945e80", purple_bg = "#e6d3c1", teal = "#4c7a5d", orange = "#b85c28", danger = "#c14a4a",
}

local function hl(name, spec) vim.api.nvim_set_hl(0, name, spec) end
local groups = {
  -- editor
  Normal = { fg = c.fg, bg = c.bg }, NormalNC = { fg = c.fg, bg = c.bg },
  NormalFloat = { fg = c.fg, bg = c.card }, FloatBorder = { fg = c.border2, bg = c.card },
  FloatTitle = { fg = c.primary, bg = c.card, bold = true },
  Cursor = { fg = c.bg, bg = c.fg }, CursorLine = { bg = c.muted }, CursorColumn = { bg = c.muted },
  ColorColumn = { bg = c.muted }, CursorLineNr = { fg = c.primary, bold = true },
  LineNr = { fg = c.subtle }, SignColumn = { bg = c.bg }, FoldColumn = { fg = c.subtle, bg = c.bg },
  Folded = { fg = c.dim, bg = c.muted }, VertSplit = { fg = c.border }, WinSeparator = { fg = c.border },
  StatusLine = { fg = c.fg2, bg = c.muted }, StatusLineNC = { fg = c.dim, bg = c.muted },
  TabLine = { fg = c.dim, bg = c.muted }, TabLineSel = { fg = c.fg, bg = c.bg, bold = true }, TabLineFill = { bg = c.muted },
  Pmenu = { fg = c.fg, bg = c.card }, PmenuSel = { fg = c.fg, bg = c.accent }, PmenuSbar = { bg = c.muted }, PmenuThumb = { bg = c.border2 },
  Visual = { bg = c.accent }, Search = { fg = c.yellow, bg = c.yellow_bg }, CurSearch = { fg = c.yellow_bg, bg = c.yellow },
  IncSearch = { fg = c.yellow_bg, bg = c.yellow }, MatchParen = { bg = c.accent, bold = true },
  NonText = { fg = c.border2 }, Whitespace = { fg = c.border }, SpecialKey = { fg = c.border2 },
  EndOfBuffer = { fg = c.bg }, Directory = { fg = c.primary }, Title = { fg = c.primary, bold = true },
  ErrorMsg = { fg = c.danger, bold = true }, WarningMsg = { fg = c.yellow }, MoreMsg = { fg = c.green }, Question = { fg = c.primary },
  WildMenu = { bg = c.accent },
  -- syntax
  Comment = { fg = c.subtle, italic = true }, Constant = { fg = c.orange }, String = { fg = c.green },
  Character = { fg = c.green }, Number = { fg = c.orange }, Boolean = { fg = c.orange }, Float = { fg = c.orange },
  Identifier = { fg = c.fg }, Function = { fg = c.primary }, Statement = { fg = c.purple }, Conditional = { fg = c.purple },
  Repeat = { fg = c.purple }, Label = { fg = c.purple }, Operator = { fg = c.dim }, Keyword = { fg = c.purple },
  Exception = { fg = c.red }, PreProc = { fg = c.teal }, Include = { fg = c.purple }, Define = { fg = c.teal },
  Macro = { fg = c.teal }, Type = { fg = c.blue }, StorageClass = { fg = c.blue }, Structure = { fg = c.blue },
  Special = { fg = c.teal }, SpecialChar = { fg = c.teal }, Delimiter = { fg = c.dim }, Underlined = { underline = true, fg = c.primary },
  Todo = { fg = c.yellow, bg = c.yellow_bg, bold = true }, Error = { fg = c.danger }, Added = { fg = c.green }, Changed = { fg = c.blue }, Removed = { fg = c.red },
  -- diagnostics
  DiagnosticError = { fg = c.danger }, DiagnosticWarn = { fg = c.yellow }, DiagnosticInfo = { fg = c.blue }, DiagnosticHint = { fg = c.teal }, DiagnosticOk = { fg = c.green },
  DiagnosticUnderlineError = { undercurl = true, sp = c.danger }, DiagnosticUnderlineWarn = { undercurl = true, sp = c.yellow },
  DiagnosticUnderlineInfo = { undercurl = true, sp = c.blue }, DiagnosticUnderlineHint = { undercurl = true, sp = c.teal },
  DiagnosticVirtualTextError = { fg = c.red, bg = c.red_bg }, DiagnosticVirtualTextWarn = { fg = c.yellow, bg = c.yellow_bg },
  DiagnosticVirtualTextInfo = { fg = c.blue, bg = c.blue_bg }, DiagnosticVirtualTextHint = { fg = c.teal, bg = c.green_bg },
  SpellBad = { undercurl = true, sp = c.danger }, SpellCap = { undercurl = true, sp = c.yellow },
  -- diff / git
  DiffAdd = { bg = c.green_bg }, DiffChange = { bg = c.blue_bg }, DiffDelete = { fg = c.red, bg = c.red_bg }, DiffText = { bg = c.accent },
  GitSignsAdd = { fg = c.green }, GitSignsChange = { fg = c.blue }, GitSignsDelete = { fg = c.red },
  -- treesitter extras
  ["@variable"] = { fg = c.fg }, ["@variable.builtin"] = { fg = c.orange }, ["@variable.parameter"] = { fg = c.fg2 },
  ["@property"] = { fg = c.fg2 }, ["@constructor"] = { fg = c.blue }, ["@tag"] = { fg = c.purple },
  ["@tag.attribute"] = { fg = c.blue }, ["@tag.delimiter"] = { fg = c.dim }, ["@punctuation.bracket"] = { fg = c.dim },
  ["@markup.heading"] = { fg = c.primary, bold = true }, ["@markup.link"] = { fg = c.primary, underline = true },
  ["@markup.strong"] = { bold = true }, ["@markup.italic"] = { italic = true },
}
for name, spec in pairs(groups) do hl(name, spec) end

vim.g.terminal_color_0, vim.g.terminal_color_8 = c.fg, c.dim
vim.g.terminal_color_1, vim.g.terminal_color_9 = c.red, c.danger
vim.g.terminal_color_2, vim.g.terminal_color_10 = c.green, c.green
vim.g.terminal_color_3, vim.g.terminal_color_11 = c.yellow, c.orange
vim.g.terminal_color_4, vim.g.terminal_color_12 = c.blue, c.primary
vim.g.terminal_color_5, vim.g.terminal_color_13 = c.purple, c.purple
vim.g.terminal_color_6, vim.g.terminal_color_14 = c.teal, c.teal
vim.g.terminal_color_7, vim.g.terminal_color_15 = c.border2, c.bg
