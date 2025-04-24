local opts = {
	ensure_installed = {
		"efm",
		"bashls",
		-- "tsserver",
		"ts_ls",
		"solidity",
		"tailwindcss",
		"pyright",
		"html",
		"cssls",
		"lua_ls",
		"emmet_ls",
		"jsonls",
	},

	automatic_installation = true,
}

return {
	"williamboman/mason-lspconfig.nvim",
	opts = opts,
	event = "BufReadPre",
	dependencies = "williamboman/mason.nvim",
}
