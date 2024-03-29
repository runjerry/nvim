local status, indent_blankline = pcall(require, "indent_blankline")
if not status then
  vim.notify("indent_blankline not found")
  return
end

indent_blankline.setup({
  -- blank line
  space_char_blankline = " ",
  -- context analysis with treesitter
  show_current_context = false,
  show_current_context_start = true,
  context_patterns = {
    "class",
    "function",
    "method",
    "element",
    "^if",
    "^while",
    "^for",
    "^object",
    "^table",
    "block",
    "arguments",
  },
  -- echo & filetype
  filetype_exclude = {
    "null-ls-info",
    "dashboard",
    "packer",
    "terminal",
    "help",
    "log",
    "markdown",
    "TelescopePrompt",
    "lsp-installer",
    "lspinfo",
    "toggleterm",
  },
  -- vertical line patterns
  -- char = '¦'
  -- char = '┆'
  -- char = '│'
  -- char = "|",
  char = "▏",
})
