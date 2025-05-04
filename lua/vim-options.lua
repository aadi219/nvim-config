vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd('set nu')
vim.cmd('set relativenumber')

vim.g.mapleader = " "

vim.keymap.set("n", "<C-n>", ":tabnew <CR>")
vim.keymap.set("n", "<leader>fl", ":norm va{ zf <CR>") -- fold current function block
vim.keymap.set("n", "<leader>fo", "zd") -- open folded function block
