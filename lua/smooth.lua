---@alias Style "dark" | "light"

---@class SmoothOptions
---@field style? Style The color scheme style to use

---@class M
---@field options SmoothOptions
local M = {
	options = {
		style = "dark",
	},
}

---@class ColorScheme
---@field fg string
---@field bg string
---@field black string
---@field white string
---@field red string
---@field green string
---@field blue string
---@field yellow string
---@field cyan string
---@field magenta string
---@field orange string
---@field gray string
---@field darkgray string
---@field cursorline string
---@field visual string

---@class C
---@field dark ColorScheme
---@field light ColorScheme
local C = {
	dark = {
		fg = "#cccccc",
		bg = "#383838",
		black = "#000000",
		white = "#ffffff",
		red = "#eb6f92",
		green = "#00d894",
		blue = "#69bee9",
		yellow = "#f6c177",
		cyan = "#56b6c2",
		magenta = "#aaa2ff",
		orange = "#d7827e",
		gray = "#7f848e",
		darkgray = "#484848",
		cursorline = "#404040",
		visual = "#4a4a4a",
	},
	light = {
		fg = "#575279",
		bg = "#faf4ed",
		black = "#616161",
		white = "#f1f1f1",
		red = "#eb6f92",
		green = "#60b79b",
		blue = "#3fa2ca",
		yellow = "#f6c177",
		cyan = "#3494a0",
		magenta = "#aa8acd",
		orange = "#d7827e",
		gray = "#a8a8a8",
		darkgray = "#626773",
		cursorline = "#f5f0e8",
		visual = "#ebe5d8",
	},
}

---@param style Style The color scheme style to use
function M.get_highlights(style)
	local colors = C[style]

	return {
		Normal = { fg = colors.fg, bg = colors.bg },
		NormalFloat = { fg = colors.fg, bg = colors.bg },
		FloatBorder = { fg = colors.fg, bg = colors.bg },
		ColorColumn = { fg = nil, bg = colors.darkgray },
		Conceal = { fg = colors.darkgray },
		Cursor = { fg = colors.fg, bg = nil, reverse = true },
		CursorIM = { fg = colors.white, bg = nil, reverse = true },
		Directory = { fg = colors.blue, bg = nil },
		EndOfBuffer = { fg = colors.darkgray },
		ErrorMsg = { fg = nil },
		Folded = { fg = colors.gray, bg = nil, italic = true },
		FoldColumn = { fg = colors.blue },
		IncSearch = { fg = colors.white, bg = colors.blue },
		LineNr = { fg = colors.gray },
		CursorLineNr = { fg = colors.fg },
		MatchParen = { fg = colors.yellow, bg = nil, bold = true },
		ModeMsg = { fg = colors.fg },
		MoreMsg = { fg = colors.fg },
		NonText = { fg = colors.darkgray },
		Pmenu = { fg = colors.fg, bg = colors.gray },
		PmenuSel = { fg = colors.fg, bg = colors.blue },
		PmenuSbar = { fg = colors.fg, bg = colors.gray },
		PmenuThumb = { fg = colors.fg, bg = colors.fg },

		-- saghen/blink.cmp
		BlinkCmpMenu = { fg = colors.fg, bg = colors.bg },
		BlinkCmpMenuBorder = { fg = colors.gray, bg = colors.visual },
		BlinkCmpMenuSelection = { fg = colors.fg, bg = colors.blue },
		BlinkCmpScrollBarThumb = { bg = colors.fg },
		BlinkCmpScrollBarGutter = { bg = colors.visual },

		Question = { fg = colors.green },
		QuickFixLine = { fg = colors.fg, bg = nil, reverse = true },
		qfLineNr = { fg = colors.fg, bg = nil, reverse = true },
		Search = { fg = colors.white, bg = colors.blue },
		Substitute = { fg = colors.black, bg = colors.magenta },
		SpecialKey = { fg = colors.cyan },
		SpellBad = { fg = colors.red, bg = nil, italic = true },
		SpellCap = { fg = colors.blue, bg = nil, italic = true },
		SpellLocal = { fg = colors.cyan, bg = nil, italic = true },
		SpellRare = { fg = colors.cyan, bg = nil, italic = true },
		StatusLine = { fg = colors.fg, bg = colors.bg },
		StatusLineNC = { fg = colors.fg, bg = colors.bg },
		StatusLineTerm = { fg = colors.fg, bg = colors.bg },
		StatusLineTermNC = { fg = colors.fg, bg = colors.bg },
		TabLineFill = { fg = colors.fg, bg = nil },
		TablineSel = { fg = colors.gray, bg = colors.cyan },
		Tabline = { fg = colors.fg, bg = colors.gray },
		Title = { fg = colors.green, bg = nil, bold = true },
		Visual = { fg = nil, bg = colors.visual },
		VisualNOS = { fg = nil, bg = colors.visual },
		WarningMsg = { fg = colors.yellow },
		WildMenu = { fg = colors.magenta, bg = nil, bold = true },
		CursorColumn = { fg = nil, bg = colors.gray },
		CursorLine = { fg = nil, bg = colors.cursorline },
		ToolbarLine = { fg = colors.fg, bg = colors.gray },
		ToolbarButton = { fg = colors.fg, bg = nil, bold = true },
		NormalMode = { fg = colors.fg, bg = nil, reverse = true },
		InsertMode = { fg = colors.green, bg = nil, reverse = true },
		ReplacelMode = { fg = colors.red, bg = nil, reverse = true },
		VisualMode = { fg = colors.cyan, bg = nil, reverse = true },
		CommandMode = { fg = colors.fg, bg = nil, reverse = true },
		Warnings = { fg = colors.yellow },
		Comment = { fg = colors.darkgray, italic = true },
		Constant = { fg = colors.orange },
		String = { fg = colors.green },
		Character = { fg = colors.green },
		Number = { fg = colors.orange },
		Boolean = { fg = colors.orange },
		Float = { fg = colors.orange },
		Identifier = { fg = colors.red },
		Function = { fg = colors.blue },
		Statement = { fg = colors.magenta },
		Conditional = { fg = colors.magenta },
		Repeat = { fg = colors.magenta },
		Label = { fg = colors.magenta },
		Operator = { fg = colors.cyan },
		Keyword = { fg = colors.magenta },
		Exception = { fg = colors.magenta },
		PreProc = { fg = colors.yellow },
		Include = { fg = colors.blue },
		Define = { fg = colors.magenta },
		Macro = { fg = colors.magenta },
		PreCondit = { fg = colors.yellow },
		Type = { fg = colors.yellow },
		StorageClass = { fg = colors.yellow },
		Structure = { fg = colors.yellow },
		Typedef = { fg = colors.yellow },
		Special = { fg = colors.blue },
		SpecialChar = { fg = colors.orange },
		Tag = { fg = colors.red },
		Delimiter = { fg = colors.fg },
		SpecialComment = { fg = colors.yellow },
		Debug = { fg = colors.red },
		Underlined = { underline = true },
		Ignore = { fg = colors.gray },
		Error = { fg = colors.white, bg = colors.red },
		Todo = { fg = colors.yellow, bold = true },

		-- nvim-treesitter/nvim-treesitter
		["@comment"] = { link = "Comment" },
		["@error"] = { link = "Error" },
		["@none"] = { fg = colors.fg },
		["@preproc"] = { link = "PreProc" },
		["@define"] = { link = "Define" },
		["@operator"] = { link = "Operator" },
		["@punctuation.bracket"] = { fg = colors.fg },
		["@punctuation.delimiter"] = { fg = colors.fg },
		["@punctuation.special"] = { fg = colors.blue },
		["@string"] = { link = "String" },
		["@string.regex"] = { fg = colors.orange },
		["@string.escape"] = { fg = colors.magenta },
		["@string.special"] = { fg = colors.blue },
		["@character"] = { link = "Character" },
		["@character.special"] = { fg = colors.magenta },
		["@boolean"] = { link = "Boolean" },
		["@number"] = { link = "Number" },
		["@float"] = { link = "Float" },
		["@function"] = { link = "Function" },
		["@function.builtin"] = { fg = colors.blue },
		["@function.call"] = { fg = colors.blue },
		["@function.macro"] = { fg = colors.magenta },
		["@method"] = { fg = colors.blue },
		["@method.call"] = { fg = colors.blue },
		["@constructor"] = { fg = colors.yellow },
		["@parameter"] = { fg = colors.red },
		["@keyword"] = { link = "Keyword" },
		["@keyword.function"] = { fg = colors.magenta },
		["@keyword.operator"] = { fg = colors.magenta },
		["@keyword.return"] = { fg = colors.magenta },
		["@conditional"] = { link = "Conditional" },
		["@repeat"] = { link = "Repeat" },
		["@debug"] = { link = "Debug" },
		["@label"] = { link = "Label" },
		["@include"] = { link = "Include" },
		["@exception"] = { link = "Exception" },
		["@type"] = { link = "Type" },
		["@type.builtin"] = { fg = colors.yellow },
		["@type.definition"] = { fg = colors.yellow },
		["@type.qualifier"] = { fg = colors.yellow },
		["@storageclass"] = { link = "StorageClass" },
		["@attribute"] = { fg = colors.yellow },
		["@field"] = { fg = colors.red },
		["@property"] = { fg = colors.red },
		["@variable"] = { fg = colors.red },
		["@variable.builtin"] = { fg = colors.orange },
		["@constant"] = { link = "Constant" },
		["@constant.builtin"] = { fg = colors.orange },
		["@constant.macro"] = { fg = colors.orange },
		["@namespace"] = { fg = colors.yellow },
		["@symbol"] = { fg = colors.orange },
		["@text"] = { fg = colors.fg },
		["@text.strong"] = { bold = true },
		["@text.emphasis"] = { italic = true },
		["@text.underline"] = { underline = true },
		["@text.strike"] = { strikethrough = true },
		["@text.title"] = { fg = colors.yellow, bold = true },
		["@text.literal"] = { fg = colors.green },
		["@text.uri"] = { fg = colors.blue, underline = true },
		["@text.math"] = { fg = colors.blue },
		["@text.reference"] = { fg = colors.blue },
		["@text.todo"] = { link = "Todo" },
		["@text.note"] = { fg = colors.blue, bold = true },
		["@text.warning"] = { fg = colors.yellow, bold = true },
		["@text.danger"] = { fg = colors.red, bold = true },
		["@tag"] = { link = "Tag" },
		["@tag.attribute"] = { fg = colors.yellow },
		["@tag.delimiter"] = { fg = colors.fg },

		-- neovim/nvim-lspconfig
		LspInlayHint = { fg = colors.gray, italic = true },
		DiagnosticError = { fg = colors.red },
		DiagnosticWarn = { fg = colors.yellow },
		DiagnosticInfo = { fg = colors.blue },
		DiagnosticHint = { fg = colors.cyan },
		DiagnosticVirtualTextError = { fg = colors.red },
		DiagnosticVirtualTextWarn = { fg = colors.yellow },
		DiagnosticVirtualTextInfo = { fg = colors.blue },
		DiagnosticVirtualTextHint = { fg = colors.cyan },
		DiagnosticUnderlineError = { undercurl = true, sp = colors.red },
		DiagnosticUnderlineWarn = { undercurl = true, sp = colors.yellow },
		DiagnosticUnderlineInfo = { undercurl = true, sp = colors.blue },
		DiagnosticUnderlineHint = { undercurl = true, sp = colors.cyan },
		LspReferenceText = { bg = colors.cursorline },
		LspReferenceRead = { bg = colors.cursorline },
		LspReferenceWrite = { bg = colors.cursorline },
		LspSignatureActiveParameter = { fg = colors.yellow, bold = true },

		-- MeanderingProgrammer/render-markdown.nvim
		RenderMarkdownCode = { bg = colors.gray },
		RenderMarkdownCodeInline = { bg = colors.gray },
		RenderMarkdownBullet = { fg = colors.blue },
		RenderMarkdownTableHead = { fg = colors.blue },
		RenderMarkdownTableRow = { fg = colors.magenta },
		RenderMarkdownSuccess = { fg = colors.green },
		RenderMarkdownInfo = { fg = colors.blue },
		RenderMarkdownHint = { fg = colors.cyan },
		RenderMarkdownWarn = { fg = colors.yellow },
		RenderMarkdownError = { fg = colors.red },

		-- nvim-neo-tree/neo-tree.nvim
		NeoTreeDirectoryName = { fg = colors.blue },
		NeoTreeDirectoryIcon = { fg = colors.blue },
		NeoTreeNormal = { fg = colors.fg, bg = colors.bg },
		NeoTreeNormalNC = { fg = colors.fg, bg = colors.bg },
		NeoTreeExpander = { fg = colors.gray },
		NeoTreeIndentMarker = { fg = colors.gray },
		NeoTreeRootName = { fg = colors.blue, bold = true },
		NeoTreeSymbolicLinkTarget = { fg = colors.magenta },
		NeoTreeModified = { fg = colors.orange },
		NeoTreeGitAdded = { fg = colors.green },
		NeoTreeGitConflict = { fg = colors.red },
		NeoTreeGitDeleted = { fg = colors.red },
		NeoTreeGitIgnored = { fg = colors.gray },
		NeoTreeGitModified = { fg = colors.yellow },
		NeoTreeGitUnstaged = { fg = colors.red },
		NeoTreeGitUntracked = { fg = colors.magenta },
		NeoTreeGitStaged = { fg = colors.green },
		NeoTreeFloatBorder = { link = "FloatBorder" },
		NeoTreeFloatTitle = { link = "FloatTitle" },
		NeoTreeTitleBar = { fg = colors.bg, bg = colors.blue },
		NeoTreeFileNameOpened = { fg = colors.magenta },
		NeoTreeDimText = { fg = colors.gray },
		NeoTreeFilterTerm = { fg = colors.green, bold = true },
		NeoTreeTabActive = { bg = colors.bg, fg = colors.blue, bold = true },
		NeoTreeTabInactive = { bg = colors.darkgray, fg = colors.gray },
		NeoTreeTabSeparatorActive = { fg = colors.bg, bg = colors.bg },
		NeoTreeTabSeparatorInactive = { fg = colors.darkgray, bg = colors.darkgray },
		NeoTreeVertSplit = { fg = colors.darkgray, bg = colors.darkgray },
		NeoTreeWinSeparator = {
			fg = colors.darkgray,
			bg = colors.darkgray,
		},
		NeoTreeStatusLineNC = { fg = colors.bg, bg = colors.bg },

		-- folke/snacks.nvim
		Added = { fg = colors.green },
		Changed = { fg = colors.yellow },
		Removed = { fg = colors.red },
		SnacksPickerDir = { fg = colors.gray },
		SnacksPickerPathIgnored = { fg = colors.gray },
		SnacksPickerPathHidden = { fg = colors.gray },
		SnacksPickerGitStatusIgnored = { fg = colors.gray },
		SnacksPickerGitStatusUntracked = { fg = colors.yellow },
		SnacksPickerGitStatusAdded = { fg = colors.green },
		SnacksPickerGitStatusDeleted = { fg = colors.red },
	}
end

local did_setup = false

---@param opts? SmoothOptions
function M.setup(opts)
	did_setup = true

	-- Parse user options
	M.options = vim.tbl_deep_extend("force", M.options, opts or {})

	-- Load all custom integrations
	local highlights = M.get_highlights(M.options.style)
	for group, styles in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, styles)
	end
end

function M.load()
	vim.g.colors_name = "smooth"

	if not did_setup then
		M.setup()
	end
end

vim.api.nvim_create_user_command("SmoothStyle", function()
	if M.options.style == "dark" then
		M.options.style = "light"
	else
		M.options.style = "dark"
	end

	M.setup(M.options)
	vim.notify("Smooth: Toggled style!", vim.log.levels.INFO)
	vim.cmd.colorscheme("smooth")
end, {})

return M
