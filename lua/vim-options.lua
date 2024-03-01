vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set wrap")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=2")
vim.cmd("set pumheight=10")
vim.cmd("set nohlsearch")
vim.cmd("set linebreak")
vim.g.mapleader = " "

-- set fold properties
vim.cmd("set foldmethod=indent")
vim.cmd("set foldlevel=2")
--vim.cmd("set foldclose=all")
vim.keymap.set("n", "<leader>fa", "zm", {noremap = true})
vim.keymap.set("n", "<leader>ufa", "zr", {noremap=true})
vim.keymap.set("n", "<leader>fc", "za", {noremap=true})

-- shortcut for commenting out in python files
vim.keymap.set("x", "<leader>cp", ":s/^/#<CR>", { noremap = true })
vim.keymap.set("x", "<leader>ucp", ":s/#/<CR>", { noremap = true })

-- shortcut for commenting out in rust files
vim.keymap.set("x", "<leader>cr", ":s/^/\\/\\/<CR>", { noremap = true })
vim.keymap.set("x", "<leader>ucr", ":s/\\/\\//<CR>", { noremap = true })

-- shortcut for showing the errors
vim.keymap.set("n", "<leader>se", ":lua vim.diagnostic.open_float()<CR>", { noremap = true })
