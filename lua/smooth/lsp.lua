local M = {}

function M.get()
	return {
		LspInlayHint = { bg = C.current.darkgray, fg = C.current.gray, italic = true },
		DiagnosticError = { fg = C.current.red },
		DiagnosticWarn = { fg = C.current.yellow },
		DiagnosticInfo = { fg = C.current.blue },
		DiagnosticHint = { fg = C.current.cyan },
		DiagnosticVirtualTextError = { fg = C.current.red },
		DiagnosticVirtualTextWarn = { fg = C.current.yellow },
		DiagnosticVirtualTextInfo = { fg = C.current.blue },
		DiagnosticVirtualTextHint = { fg = C.current.cyan },
		DiagnosticUnderlineError = { undercurl = true, sp = C.current.red },
		DiagnosticUnderlineWarn = { undercurl = true, sp = C.current.yellow },
		DiagnosticUnderlineInfo = { undercurl = true, sp = C.current.blue },
		DiagnosticUnderlineHint = { undercurl = true, sp = C.current.cyan },
		LspReferenceText = { bg = C.current.darkgray },
		LspReferenceRead = { bg = C.current.darkgray },
		LspReferenceWrite = { bg = C.current.darkgray },
		LspSignatureActiveParameter = { fg = C.current.yellow, bold = true },
	}
end

return M
