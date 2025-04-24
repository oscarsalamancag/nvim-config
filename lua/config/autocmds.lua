-- auto-format on save
local lsp_fmt_group = vim.api.nvim_create_augroup("LspFormattingGroup", {})

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	group = lsp_fmt_group,
	callback = function(args)
		local buf = args.buf
		local clients = vim.lsp.get_active_clients({ bufnr = args.buf })
		local efm_attached = false

		for _, client in ipairs(clients) do
			if client.name == "efm" and client.attached_buffers[buf] then
				efm_attached = true
				break
			end
		end

		if not efm_attached then
			return
		end

		-- Ejecuta el formateo de forma sincrónica y segura
		vim.lsp.buf.format({ name = "efm", async = false })
	end,
})
