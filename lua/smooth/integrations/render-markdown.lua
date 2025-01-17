local M = {}

function M.get()
	return {
		RenderMarkdownCode = { bg = C.current.darkgray },
		RenderMarkdownCodeInline = { bg = C.current.darkgray },
		RenderMarkdownBullet = { fg = C.current.blue },
		RenderMarkdownTableHead = { fg = C.current.blue },
		RenderMarkdownTableRow = { fg = C.current.magenta },
		RenderMarkdownSuccess = { fg = C.current.green },
		RenderMarkdownInfo = { fg = C.current.blue },
		RenderMarkdownHint = { fg = C.current.cyan },
		RenderMarkdownWarn = { fg = C.current.yellow },
		RenderMarkdownError = { fg = C.current.red },
	}
end

return M
