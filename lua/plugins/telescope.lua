return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, {})

			require("telescope").load_extension("ui-select")
		end,
	},
	{
		"akinsho/nvim-bufferline.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("bufferline").setup({
				options = {
					numbers = "none",
					close_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
					right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
					left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
					middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
					-- NOTE: this plugin is designed with this icon in mind,
					-- and so changing this is NOT recommended, this is intended
					-- as an escape hatch for people who cannot bear it for whatever reason
					indicator_icon = "▎",
					buffer_close_icon = "",
					modified_icon = "●",
					close_icon = "",
					left_trunc_marker = "",
					right_trunc_marker = "",
					--- name_formatter can be used to change the buffer's name in the bufferline.
					--- Please note some names can/will break the
					--- bufferline so use this at your discretion knowing that it has
					--- some limitations that will *NOT* be fixed.
					-- name_formatter = function(buf)  -- buf contains:
					-- name                | str        | the basename of the active file
					-- path                | str        | the full path of the active file
					-- bufnr (buffer only) | int        | the number of the active buffer
					-- buffers (tabs only) | table(int) | the numbers of the buffers in the tab
					-- tabnr (tabs only)   | int        | the number of the tab
					-- end,
					max_name_length = 18,
					max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
					tab_size = 18,
					diagnostics = "nvim_lsp", -- false | "nvim_lsp" | "coc"
					diagnostics_update_in_insert = false,
					offsets = { { filetype = "NvimTree", text = "File Explorer", text_align = "center" } },
					show_buffer_icons = true, -- disable filetype icons for buffers
					show_buffer_close_icons = true,
					show_close_icon = true,
					show_tab_indicators = true,
					persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
					-- can also be a table containing 2 custom separators
					-- [focused and unfocused]. eg: { '|', '|' }
					separator_style = "thick", -- "slant" | "thick" | "thin" | { 'any', 'any' }
					enforce_regular_tabs = false,
					always_show_bufferline = true,
					sort_by = "id",
				},
			})
			-- Key mappings for switching tabs
			vim.api.nvim_set_keymap("n", "<Tab>", ":bnext<CR>", { noremap = true, silent = true })
			vim.api.nvim_set_keymap("n", "<S-Tab>", ":bprev<CR>", { noremap = true, silent = true })
			vim.api.nvim_set_keymap("n", "<leader>bd", ":bdelete<CR>", { noremap = true, silent = true })
			vim.api.nvim_set_keymap("n", "<leader>br", ":BufferLineCloseRight<CR>", { noremap = true, silent = true })
			vim.api.nvim_set_keymap("n", "<leader>bl", ":BufferLineCloseLeft<CR>", { noremap = true, silent = true })
			vim.api.nvim_set_keymap("n", "<leader>ba", ":BufferLineCloseOthers<CR>", { noremap = true, silent = true })
		end,
	},
}
