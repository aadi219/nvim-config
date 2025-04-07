return {
    "eldritch-theme/eldritch.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        palette = "dark",
        styles = {
            comments = { italic = false },
            keywords = { italic = false },
            sidebars = "dark",
        }
    },
    config = function(_, opts)
        require("eldritch").setup(opts)
        vim.cmd[[colorscheme eldritch]]
    end
}

