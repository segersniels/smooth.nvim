local M = {
	default_options = {
		style = "dark", -- "dark" | "light"
	},
}

M.options = M.default_options

C = {
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
		gray = "#626773",
		darkgray = "#a8a8a8",
	},
}

function M.get_colors()
	return C[M.options.style] or C.dark
end

local did_setup = false

---@class SmoothOptions
---@field style? "dark" | "light" # The color style to use
---@type fun(opts: SmoothOptions?)
function M.setup(opts)
	did_setup = true

	-- Parse user options
	M.options = vim.tbl_deep_extend("force", M.options, opts or {})

	-- Set actual colors
	C.current = M.get_colors()

	-- Load all modules
	local syntax = require("smooth.syntax").get()
	local treesitter = require("smooth.treesitter").get()
	local lsp = require("smooth.lsp").get()
	local editor = require("smooth.editor").get()

	-- Load all custom integrations
	local render_markdown = require("smooth.integrations.render-markdown").get()
	local neotree = require("smooth.integrations.neo-tree").get()

	-- Set all highlight groups
	local highlights = vim.tbl_extend("force", syntax, treesitter, lsp, editor, render_markdown, neotree)
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

return M
