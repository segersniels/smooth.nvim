local M = {}

function M.get()
	local active_bg = C.bg
	local inactive_bg = C.darkgray

	return {
		NeoTreeDirectoryName = { fg = C.blue },
		NeoTreeDirectoryIcon = { fg = C.blue },
		NeoTreeNormal = { fg = C.white, bg = active_bg },
		NeoTreeNormalNC = { fg = C.white, bg = active_bg },
		NeoTreeExpander = { fg = C.gray },
		NeoTreeIndentMarker = { fg = C.gray },
		NeoTreeRootName = { fg = C.blue, bold = true },
		NeoTreeSymbolicLinkTarget = { fg = C.magenta },
		NeoTreeModified = { fg = C.orange },
		NeoTreeGitAdded = { fg = C.green },
		NeoTreeGitConflict = { fg = C.red },
		NeoTreeGitDeleted = { fg = C.red },
		NeoTreeGitIgnored = { fg = C.gray },
		NeoTreeGitModified = { fg = C.yellow },
		NeoTreeGitUnstaged = { fg = C.red },
		NeoTreeGitUntracked = { fg = C.magenta },
		NeoTreeGitStaged = { fg = C.green },
		NeoTreeFloatBorder = { link = "FloatBorder" },
		NeoTreeFloatTitle = { link = "FloatTitle" },
		NeoTreeTitleBar = { fg = C.bg, bg = C.blue },
		NeoTreeFileNameOpened = { fg = C.magenta },
		NeoTreeDimText = { fg = C.gray },
		NeoTreeFilterTerm = { fg = C.green, bold = true },
		NeoTreeTabActive = { bg = active_bg, fg = C.blue, bold = true },
		NeoTreeTabInactive = { bg = inactive_bg, fg = C.gray },
		NeoTreeTabSeparatorActive = { fg = active_bg, bg = active_bg },
		NeoTreeTabSeparatorInactive = { fg = inactive_bg, bg = inactive_bg },
		NeoTreeVertSplit = { fg = C.darkgray, bg = inactive_bg },
		NeoTreeWinSeparator = {
			fg = C.darkgray,
			bg = C.darkgray,
		},
		NeoTreeStatusLineNC = { fg = C.bg, bg = C.bg },
	}
end

return M
