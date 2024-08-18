-- return {
-- 	"rebelot/kanagawa.nvim",
-- 	config = function()
-- 		require("kanagawa").load("dragon")
-- 	end,
-- }
--
--return {
--	"rose-pine/neovim",
--	name = "rose-pine",
--	config = function()
--		require("rose-pine").setup({
--			variant = "moon",
--			dark_variant = "main",
--			dim_inactive_windows = false,
--			extend_background_behing_borders = true,

--			enable = {
--				terminal = true,
--				legacy_highligh = true,
--				migrations = true,
--			},

--			styles = {
--				bold = true,
--				italic = true,
--				transparency = false,
--			},

--			groups = {
--				border = "muted",
--				link = "iris",
--				panel = "surface",

--				error = "love",
--				hint = "iris",
--				info = "foam",
--				note = "pine",
--				todo = "rose",
--				warn = "gold",

--				git_added = "foam",
--				git_change = "rose",
--				git_delete = "love",
--				git_dirty = "rose",
--				git_ignore = "muted",
--				git_merge = "iris",
--				git_rename = "pine",
--				git_stage = "iris",
--				git_text = "rose",
--				git_untracked = "subtle",

--				h1 = "iris",
--				h2 = "foam",
--				h3 = "rose",
--				h4 = "gold",
--				h5 = "pine",
--				h6 = "foam",
--			},

--			highlight_groups = {
--				-- Comment = { fg = "foam" },
--				-- VertSplit = { fg = "muted", bg = "muted" },
--			},

--			before_highlight = function(group, highlight, palette)
--				-- Disable all undercurls
--				-- if highlight.undercurl then
--				--     highlight.undercurl = false
--				-- end
--				--
--				-- Change palette colour
--				-- if highlight.fg == palette.pine then
--				--     highlight.fg = palette.foam
--				-- end
--			end,
--		})

--		vim.cmd("colorscheme rose-pine")
--	end,
--}

-- return {
-- 	"uloco/bluloco.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	dependencies = { "rktjmp/lush.nvim" },
-- 	config = function()
-- 		require("bluloco").setup({
-- 			style = "dark",
-- 			transparent = false,
-- 			italics = true,
-- 			terminal = vim.fn.has("gui_running") == 1,
-- 			guicursor = true,
-- 		})

-- 		vim.opt.termguicolors = true
-- 		vim.cmd("colorscheme bluloco")
-- 	end,
-- }
--
return {
	"marko-cerovac/material.nvim",
	config = function()
		require("material").setup({

			contrast = {
				terminal = true,
				sidebars = true,
				floating_windows = true,
				cursor_line = true,
				lsp_virtual_text = true,
				non_current_windows = true,
			},

			style = {
				comments = { [[ italic = true ]] },
				strings = { [[ bold = true ]] },
				functions = { [[ bold = true ]] },
			},

			plugins = {
				"neo-tree",
				"nvim-cmp",
				"telescope",
			},

			high_visibility = {
				darker = true,
			},
		})

		vim.g.material_style = "deep ocean"
		vim.cmd("colorscheme material")
	end,
}
