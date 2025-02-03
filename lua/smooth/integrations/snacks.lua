local M = {}

function M.get()
	return {
		SnacksPickerPathIgnored = { fg = C.current.gray },
		SnacksPickerPathHidden = { fg = C.current.gray },
	}
end

return M
