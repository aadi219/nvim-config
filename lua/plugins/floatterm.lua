return {
    'voldikss/vim-floaterm',
    config = function()
        vim.keymap.set('n', '<leader>lg', ':FloatermNew --height=0.9 --width=0.8 --name=lazygit --title=lazygit lazygit <CR>')
        vim.keymap.set('n', '<C-O>r', ':FloatermNew --position=bottomright <CR>')
    end
}
