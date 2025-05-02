local M = {}
local x = vim.diagnostic.severity

M.debugging_signs = {
	Stopped = { "󰁕 ", "DiagnosticWarn", "DapStoppedLine" },
	Breakpoint = " ",
	BreakpointCondition = " ",
	BreakpointRejected = { " ", "DiagnosticError" },
	LogPoint = ".>",
}

M.diagnostic_signs = {
	[x.ERROR] = " ",
	[x.WARN] = " ",
	[x.HINT] = "",
	[x.INFO] = "",
}

return M
