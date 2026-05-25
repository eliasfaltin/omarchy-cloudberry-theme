-- Cloudberry colorscheme for Neovim, defined inline so this theme is self-contained.
-- Mirrors ~/.config/nvim/colors/cloudberry.lua from the macOS source-of-truth.

local function apply()
  local colors = {
    bg    = "#111614",
    fg    = "#e6e2d3",
    dim   = "#2b2f2b",
    acc   = "#ff7a00",
    green = "#3a5d40",
    blue  = "#5fa2d5",
    yellow = "#c9b26d",
    cyan  = "#7ec0ae",
    mag   = "#b07aa1",
    tan   = "#dcb48c",
    brfg  = "#f6f3e9",
  }

  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") == 1 then vim.cmd("syntax reset") end
  vim.g.colors_name = "cloudberry"

  local function hi(group, opts)
    local parts = {}
    if opts.fg then table.insert(parts, "guifg=" .. opts.fg) end
    if opts.bg then table.insert(parts, "guibg=" .. opts.bg) end
    if opts.bold then table.insert(parts, "gui=bold") end
    if opts.italic then table.insert(parts, "gui=italic") end
    if opts.underline then table.insert(parts, "gui=underline") end
    vim.cmd("highlight " .. group .. " " .. table.concat(parts, " "))
  end

  hi("Normal",       { fg = colors.fg, bg = colors.bg })
  hi("NormalNC",     { fg = colors.fg, bg = colors.bg })
  hi("SignColumn",   { bg = colors.bg })
  hi("CursorLine",   { bg = "#141a16" })
  hi("CursorColumn", { bg = "#141a16" })
  hi("CursorLineNr", { fg = colors.acc, bg = colors.bg, bold = true })
  hi("LineNr",       { fg = "#566257", bg = colors.bg })
  hi("StatusLine",   { fg = colors.brfg, bg = "#171d19" })
  hi("StatusLineNC", { fg = "#9aa093", bg = "#171d19" })
  hi("WinSeparator", { fg = "#2a2f2a" })
  hi("VertSplit",    { fg = "#2a2f2a" })
  hi("Pmenu",        { fg = colors.fg, bg = "#141a16" })
  hi("PmenuSel",     { fg = colors.bg, bg = colors.acc })
  hi("Search",       { fg = colors.bg, bg = colors.acc })
  hi("IncSearch",    { fg = colors.bg, bg = "#d16600" })
  hi("Visual",       { bg = "#203227" })
  hi("MatchParen",   { fg = colors.acc, bold = true })
  hi("Directory",    { fg = colors.blue })

  hi("DiagnosticError", { fg = "#ff7a66" })
  hi("DiagnosticWarn",  { fg = colors.yellow })
  hi("DiagnosticInfo",  { fg = colors.blue })
  hi("DiagnosticHint",  { fg = colors.cyan })

  hi("DiffAdd",    { fg = colors.green })
  hi("DiffChange", { fg = colors.blue })
  hi("DiffDelete", { fg = "#a34a3b" })
  hi("DiffText",   { fg = colors.acc, bold = true })

  hi("Comment",     { fg = "#7e8a7f", italic = true })
  hi("Constant",    { fg = colors.tan })
  hi("String",      { fg = colors.green })
  hi("Character",   { fg = colors.green })
  hi("Number",      { fg = colors.tan })
  hi("Boolean",     { fg = colors.tan })
  hi("Identifier",  { fg = colors.blue })
  hi("Function",    { fg = colors.acc, bold = true })
  hi("Statement",   { fg = colors.acc })
  hi("Conditional", { fg = colors.acc })
  hi("Repeat",      { fg = colors.acc })
  hi("Operator",    { fg = colors.fg })
  hi("Keyword",     { fg = colors.mag })
  hi("PreProc",     { fg = colors.yellow })
  hi("Type",        { fg = colors.cyan })
  hi("Special",     { fg = colors.blue })
  hi("Underlined",  { fg = colors.blue, underline = true })
  hi("Todo",        { fg = colors.bg, bg = colors.acc, bold = true })

  -- Markdown headings (treesitter)
  hi("@markup.heading.1.markdown", { fg = colors.acc, bold = true })
  hi("@markup.heading.2.markdown", { fg = colors.tan, bold = true })
  hi("@markup.heading.3.markdown", { fg = colors.yellow, bold = true })
  hi("@markup.heading.4.markdown", { fg = colors.cyan, bold = true })
  hi("@markup.heading.5.markdown", { fg = colors.blue, bold = true })
  hi("@markup.heading.6.markdown", { fg = colors.mag, bold = true })

  -- render-markdown.nvim overrides: dim backgrounds, accent-tinted foregrounds
  local dim_bg = "#1a201c"
  hi("RenderMarkdownH1",   { fg = colors.acc,    bg = dim_bg, bold = true })
  hi("RenderMarkdownH2",   { fg = colors.tan,    bg = dim_bg, bold = true })
  hi("RenderMarkdownH3",   { fg = colors.yellow, bg = dim_bg, bold = true })
  hi("RenderMarkdownH4",   { fg = colors.cyan,   bg = dim_bg, bold = true })
  hi("RenderMarkdownH5",   { fg = colors.blue,   bg = dim_bg, bold = true })
  hi("RenderMarkdownH6",   { fg = colors.mag,    bg = dim_bg, bold = true })
  hi("RenderMarkdownH1Bg", { bg = dim_bg })
  hi("RenderMarkdownH2Bg", { bg = dim_bg })
  hi("RenderMarkdownH3Bg", { bg = dim_bg })
  hi("RenderMarkdownH4Bg", { bg = dim_bg })
  hi("RenderMarkdownH5Bg", { bg = dim_bg })
  hi("RenderMarkdownH6Bg", { bg = dim_bg })

  -- Code blocks and inline code: dim, no garish cyan
  hi("RenderMarkdownCode",       { bg = dim_bg })
  hi("RenderMarkdownCodeInline", { fg = colors.tan, bg = dim_bg })

  -- Tables: subtle borders, no cyan-bg cells
  hi("RenderMarkdownTableHead", { fg = colors.acc })
  hi("RenderMarkdownTableRow",  { fg = colors.fg })
  hi("RenderMarkdownTableFill", { fg = "#566257" })

  -- Bullets, quotes, links
  hi("RenderMarkdownBullet", { fg = colors.acc })
  hi("RenderMarkdownQuote",  { fg = colors.cyan })
  hi("RenderMarkdownLink",   { fg = colors.blue, underline = true })
  hi("RenderMarkdownDash",   { fg = "#566257" })
  hi("RenderMarkdownSign",   { fg = "#566257" })

  for i, c in ipairs({
    "#111614", "#d3543c", "#3a5d40", "#c9b26d",
    "#5fa2d5", "#b07aa1", "#7ec0ae", "#e6e2d3",
    "#2b2f2b", "#ff7a00", "#4f7a57", "#e3c87a",
    "#7ec0ee", "#d6a6cc", "#a3d8c6", "#f6f3e9",
  }) do
    vim.g["terminal_color_" .. (i - 1)] = c
  end
end

return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function() apply() end,
    },
  },
}
