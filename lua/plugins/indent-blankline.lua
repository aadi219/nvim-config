return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {
        exclude = {
            filetypes = {
                'dashboard',
                'help',
                'mason',
                'toggleterm',
            }
        }
    },
    config = function(_, opts)
        require("ibl").setup(opts)
    end

}
