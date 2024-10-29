local M = {}

function M.get()
	return {
		LspInlayHint = { bg = C.darkgray, fg = C.gray, italic = true },
		DiagnosticError = { fg = C.red },
		DiagnosticWarn = { fg = C.yellow },
		DiagnosticInfo = { fg = C.blue },
		DiagnosticHint = { fg = C.cyan },
		DiagnosticVirtualTextError = { fg = C.red },
		DiagnosticVirtualTextWarn = { fg = C.yellow },
		DiagnosticVirtualTextInfo = { fg = C.blue },
		DiagnosticVirtualTextHint = { fg = C.cyan },
		DiagnosticUnderlineError = { undercurl = true, sp = C.red },
		DiagnosticUnderlineWarn = { undercurl = true, sp = C.yellow },
		DiagnosticUnderlineInfo = { undercurl = true, sp = C.blue },
		DiagnosticUnderlineHint = { undercurl = true, sp = C.cyan },
		LspReferenceText = { bg = C.darkgray },
		LspReferenceRead = { bg = C.darkgray },
		LspReferenceWrite = { bg = C.darkgray },
		LspSignatureActiveParameter = { fg = C.yellow, bold = true },
	}
end

return M
