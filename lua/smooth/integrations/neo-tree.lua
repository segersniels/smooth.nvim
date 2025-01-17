local M = {}

function M.get()
	local active_bg = C.current.bg
	local inactive_bg = C.current.darkgray

	return {
		NeoTreeDirectoryName = { fg = C.current.blue },
		NeoTreeDirectoryIcon = { fg = C.current.blue },
		NeoTreeNormal = { fg = C.current.fg, bg = active_bg },
		NeoTreeNormalNC = { fg = C.current.fg, bg = active_bg },
		NeoTreeExpander = { fg = C.current.gray },
		NeoTreeIndentMarker = { fg = C.current.gray },
		NeoTreeRootName = { fg = C.current.blue, bold = true },
		NeoTreeSymbolicLinkTarget = { fg = C.current.magenta },
		NeoTreeModified = { fg = C.current.orange },
		NeoTreeGitAdded = { fg = C.current.green },
		NeoTreeGitConflict = { fg = C.current.red },
		NeoTreeGitDeleted = { fg = C.current.red },
		NeoTreeGitIgnored = { fg = C.current.gray },
		NeoTreeGitModified = { fg = C.current.yellow },
		NeoTreeGitUnstaged = { fg = C.current.red },
		NeoTreeGitUntracked = { fg = C.current.magenta },
		NeoTreeGitStaged = { fg = C.current.green },
		NeoTreeFloatBorder = { link = "FloatBorder" },
		NeoTreeFloatTitle = { link = "FloatTitle" },
		NeoTreeTitleBar = { fg = C.current.bg, bg = C.current.blue },
		NeoTreeFileNameOpened = { fg = C.current.magenta },
		NeoTreeDimText = { fg = C.current.gray },
		NeoTreeFilterTerm = { fg = C.current.green, bold = true },
		NeoTreeTabActive = { bg = active_bg, fg = C.current.blue, bold = true },
		NeoTreeTabInactive = { bg = inactive_bg, fg = C.current.gray },
		NeoTreeTabSeparatorActive = { fg = active_bg, bg = active_bg },
		NeoTreeTabSeparatorInactive = { fg = inactive_bg, bg = inactive_bg },
		NeoTreeVertSplit = { fg = C.current.darkgray, bg = inactive_bg },
		NeoTreeWinSeparator = {
			fg = C.current.darkgray,
			bg = C.current.darkgray,
		},
		NeoTreeStatusLineNC = { fg = C.current.bg, bg = C.current.bg },
	}
end

return M
