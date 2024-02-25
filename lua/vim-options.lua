vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set wrap")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=2")
vim.cmd("set pumheight=10")
vim.cmd("set nohlsearch")
vim.g.mapleader = " "

-- shortcut for commenting out in python files
vim.keymap.set('x', '<leader>cp', ":s/^/#<CR>", {noremap = true})
vim.keymap.set('x', '<leader>ucp', ":s/#/<CR>", {noremap = true})

-- shortcut for commenting out in rust files
vim.keymap.set('x', '<leader>cr', ":s/^/\\/\\/<CR>", {noremap = true})
vim.keymap.set('x', '<leader>ucr', ":s/\\/\\//<CR>", {noremap = true})
