return {
	"michaelrommel/nvim-silicon",
	lazy = true,
	cmd = "Silicon",
	config = function()
		require("silicon").setup({
			-- Configuration here, or leave empty to use defaults
			-- font = "JetBrainsMono Nerd Font=34",
      font = "VictorMono NF=34",
			-- debug = true,
			-- to_clipboard = false,
			to_clipboard = true,
			pad_horiz = 0,
			pad_vert = 0,
			background = "#000000",
			no_window_controls = true,
		})
	end,
}
