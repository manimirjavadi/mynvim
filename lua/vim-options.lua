vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set cmdheight=0")
vim.cmd("set laststatus=3")
vim.cmd("set noshowcmd")
vim.cmd("set cursorline")
vim.cmd("set scrolloff=5")
vim.g.mapleader = " "
vim.opt.mouse = ""
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.splitkeep = "cursor"
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"
vim.opt.wrap = false
vim.opt.shell = "fish"
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" })
vim.opt.wildignore:append("*/node_modules/*")
vim.g.background = "light"
vim.api.nvim_set_option("clipboard", "unnamed")

vim.opt.swapfile = false

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
