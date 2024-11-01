local M = {}

function M.get()
	return {
		RenderMarkdownCode = { bg = C.darkgray },
		RenderMarkdownCodeInline = { bg = C.darkgray },
		RenderMarkdownBullet = { fg = C.blue },
		RenderMarkdownTableHead = { fg = C.blue },
		RenderMarkdownTableRow = { fg = C.magenta },
		RenderMarkdownSuccess = { fg = C.green },
		RenderMarkdownInfo = { fg = C.blue },
		RenderMarkdownHint = { fg = C.cyan },
		RenderMarkdownWarn = { fg = C.yellow },
		RenderMarkdownError = { fg = C.red },
	}
end

return M
