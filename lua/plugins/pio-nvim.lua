return {


	"anurag3301/nvim-platformio.lua",
	dependencies = {
		{ "akinsho/nvim-toggleterm.lua" },
		{ "nvim-telescope/telescope.nvim" },
		{ "nvim-lua/plenary.nvim" },
	},
	config = function()
		require("platformio").setup({
			lsp = "clangd", --default: ccls, other option: clangd
			-- If you pick clangd, it also creates compile_commands.json
		})

		vim.keymap.set({ "n", "v" }, "<leader>pu", ":Piorun", {})
		vim.keymap.set({ "n", "v" }, "<leader>pi", ":Pioinit", {})
		vim.keymap.set({ "n", "v" }, "<leader>pm", ":Piomon", {})
	end,
}
