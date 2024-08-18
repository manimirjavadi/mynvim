vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set cmdheight=0")
vim.cmd("set laststatus=3")
vim.cmd("set noshowcmd")
vim.cmd("set cursorline")
vim.cmd("set scrolloff=10")
vim.g.mapleader = " "
vim.g.autoformat = false
vim.opt.mouse = ""
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.splitkeep = "cursor"
vim.opt.title = true
vim.opt.fillchars = { eob = " " }
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.shell = "fish"
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" })
vim.opt.wildignore:append("*/node_modules/*")
vim.g.background = "light"
vim.api.nvim_set_option("clipboard", "unnamed")
vim.opt.swapfile = false

-- TMUX Navigator config
vim.keymap.set("n", "c-h", ":TmuxNavigateLeft<CR>")
vim.keymap.set("n", "c-j", ":TmuxNavigateDown<CR>")
vim.keymap.set("n", "c-k", ":TmuxNavigateUp<CR>")
vim.keymap.set("n", "c-l", ":TmuxNavigateRight<CR>")

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
