local fahrenheit = {}

fahrenheit.colors = {
	bg = "#000000", -- Background
	fg = "#ffffce", -- Foreground
	cursor_bg = "#bbbbbb", -- Cursor background
	cursor_fg = "#ffffff", -- Cursor text
	sel_bg = "#4e739f", -- Selection background
	sel_fg = "#ffffce", -- Selection foreground
	black = "#1d1d1d", -- ANSI 0
	red = "#cda074", -- ANSI 1
	green = "#9e744d", -- ANSI 2
	yellow = "#fecf75", -- ANSI 3
	blue = "#720102", -- ANSI 4
	magenta = "#734c4d", -- ANSI 5
	cyan = "#979797", -- ANSI 6
	white = "#ffffce", -- ANSI 7
	bright_black = "#000000", -- ANSI 8
	bright_red = "#fecea0", -- ANSI 9
	bright_green = "#cc734d", -- ANSI 10
	bright_yellow = "#fd9f4d", -- ANSI 11
	bright_blue = "#cb4a05", -- ANSI 12
	bright_magenta = "#4e739f", -- ANSI 13
	bright_cyan = "#fed04d", -- ANSI 14
	bright_white = "#ffffff", -- ANSI 15
}

function fahrenheit.setup()
	vim.o.termguicolors = true

	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.g.colors_name = "fahrenheit"

	local c = fahrenheit.colors
	local set_hl = vim.api.nvim_set_hl

	set_hl(0, "Normal", { bg = c.bg, fg = c.fg })
	set_hl(0, "NormalFloat", { bg = c.black, fg = c.fg })
	set_hl(0, "Cursor", { bg = c.cursor_bg, fg = c.cursor_fg })
	set_hl(0, "Visual", { bg = c.sel_bg, fg = c.sel_fg })
	set_hl(0, "Search", { bg = c.bright_yellow, fg = c.black })
	set_hl(0, "IncSearch", { bg = c.yellow, fg = c.black })
	set_hl(0, "LineNr", { fg = c.cyan })
	set_hl(0, "CursorLineNr", { fg = c.bright_yellow, bold = true })
	set_hl(0, "SignColumn", { bg = c.bg })
	set_hl(0, "VertSplit", { fg = c.cyan, bg = c.bg })
	set_hl(0, "Pmenu", { bg = c.black, fg = c.fg })
	set_hl(0, "PmenuSel", { bg = c.sel_bg, fg = c.sel_fg })
	set_hl(0, "StatusLine", { bg = c.black, fg = c.fg })
	set_hl(0, "StatusLineNC", { bg = c.black, fg = c.cyan })
	set_hl(0, "TabLine", { bg = c.black, fg = c.cyan })
	set_hl(0, "TabLineSel", { bg = c.bg, fg = c.bright_yellow })
	set_hl(0, "TabLineFill", { bg = c.black })

	-- Syntax highlights
	set_hl(0, "Comment", { fg = c.cyan, italic = true })
	set_hl(0, "String", { fg = c.yellow })
	set_hl(0, "Identifier", { fg = c.red })
	set_hl(0, "Function", { fg = c.bright_red })
	set_hl(0, "Keyword", { fg = c.bright_magenta })
	set_hl(0, "Statement", { fg = c.bright_magenta })
	set_hl(0, "Constant", { fg = c.bright_cyan })
	set_hl(0, "Number", { fg = c.bright_cyan })
	set_hl(0, "PreProc", { fg = c.magenta })
	set_hl(0, "Type", { fg = c.green })
	set_hl(0, "Special", { fg = c.bright_blue })
	set_hl(0, "Underlined", { fg = c.bright_cyan, underline = true })
	set_hl(0, "Error", { bg = c.blue, fg = c.bright_white })
	set_hl(0, "Todo", { bg = c.bright_yellow, fg = c.black })

	set_hl(0, "@variable", { fg = c.red })
	set_hl(0, "@function", { fg = c.bright_red })
	set_hl(0, "@keyword", { fg = c.bright_magenta })
	set_hl(0, "@string", { fg = c.yellow })
	set_hl(0, "@number", { fg = c.bright_cyan })
	set_hl(0, "@type", { fg = c.green })
	set_hl(0, "@comment", { fg = c.cyan, italic = true })

	set_hl(0, "DiagnosticError", { fg = c.blue })
	set_hl(0, "DiagnosticWarn", { fg = c.bright_yellow })
	set_hl(0, "DiagnosticInfo", { fg = c.bright_cyan })
	set_hl(0, "DiagnosticHint", { fg = c.cyan })
end

vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "fahrenheit",
	callback = function()
		fahrenheit.setup()
	end,
})

return fahrenheit
