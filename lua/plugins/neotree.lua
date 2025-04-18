return{
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
	"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
	"MunifTanjim/nui.nvim",
	--{"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more 
	},
	config = function()
	require("neo-tree").setup({
        event_handlers = {

          {
            event = "file_open_requested",
            handler = function()
              -- auto close
              -- vim.cmd("Neotree close")
              -- OR
              require("neo-tree.command").execute({ action = "close" })
            end
          },

        }
	})
	vim.keymap.set('n','<C-n>', ':Neotree filesystem reveal left<CR>', {})
	end

}
