local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Do things without affecting the registers
keymap.set("n", "x", '"_x')
keymap.set("n", "<Leader>p", '"0p')
keymap.set("n", "<Leader>P", '"0P')
keymap.set("v", "<Leader>p", '"0p')
keymap.set("n", "<Leader>c", '"_c')
keymap.set("n", "<Leader>C", '"_C')
keymap.set("v", "<Leader>c", '"_c')
keymap.set("v", "<Leader>C", '"_C')
keymap.set("n", "<Leader>d", '"_d')
keymap.set("n", "<Leader>D", '"_D')
keymap.set("v", "<Leader>d", '"_d')
keymap.set("v", "<Leader>D", '"_D')

--Terminal
keymap.set("n", "<C-_>", ":vsp term://$SHELL<CR>", opts)

-- LazyGit
keymap.set("n", "<Leader>lg", "<cmd>LazyGit<cr>", opts)

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- Function to move lines up
local function move_line_up()
	if vim.fn.mode() == "v" then
		vim.cmd("m .-2")
		vim.cmd("normal! gv")
	else
		vim.cmd("m .-2")
	end
end

-- Function to move lines down
local function move_line_down()
	if vim.fn.mode() == "v" then
		vim.cmd("m .+1")
		vim.cmd("normal! gv")
	else
		vim.cmd("m .+1")
	end
end

-- Mapping 'mk' to move the line/selection up
vim.api.nvim_set_keymap('n', 'mk', '', { noremap = true, silent = true, callback = move_line_up })

-- Mapping 'mk' in visual mode to move the line/selection up
vim.api.nvim_set_keymap('v', 'mk', '', { noremap = true, silent = true, callback = move_line_up })

-- Mapping 'mj' to move the line/selection down
vim.api.nvim_set_keymap('n', 'mj', '', { noremap = true, silent = true, callback = move_line_down })

-- Mapping 'mj' in visual mode to move the line/selection down
vim.api.nvim_set_keymap('v', 'mj', '', { noremap = true, silent = true, callback = move_line_down })
