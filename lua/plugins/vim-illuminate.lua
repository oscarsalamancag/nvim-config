return {
	"RRethy/vim-illuminate",
	lazy = false,
	config = function()
		require("illuminate").configure({
      modes_denylist = {"v"},
    })
	end,
}
