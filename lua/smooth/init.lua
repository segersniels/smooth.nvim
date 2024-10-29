local M = {
	default_options = {},
}

M.options = M.default_options

C = {
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
	orange = "#d19a66",
	gray = "#7f848e",
	darkgray = "#484848",
}

local did_setup = false

---@class SmoothOptions
---@type fun(opts: SmoothOptions?)
function M.setup(opts)
	did_setup = true

	-- Parse user options
	M.options = vim.tbl_deep_extend("force", M.options, opts or {})

	-- Load all modules
	local syntax = require("smooth.syntax").get()
	local treesitter = require("smooth.treesitter").get()
	local lsp = require("smooth.lsp").get()
	local editor = require("smooth.editor").get()

	-- Load all custom integrations
	local render_markdown = require("smooth.integrations.render_markdown").get()
	local neotree = require("smooth.integrations.neotree").get()

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
