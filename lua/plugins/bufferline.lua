return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    opts = {
        termguicolors = true
    },
    config = function(_, opts)
        require("bufferline").setup{}
		-- close current buffer
		vim.keymap.set("n", "<leader>bd", ":bdelete <CR>")
		-- open new tab into telescope
		vim.keymap.set("n", "<leader>bn", function()
			vim.cmd[[tabnew]]
			vim.cmd[[Telescope find_files]]
		end)
    end
}
