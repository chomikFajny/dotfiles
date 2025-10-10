return
{
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				--require("none-ls.diagnostics.eslint_d"),
				require("none-ls.diagnostics.eslint"),
				--null_ls.builtins.formatting.prettierd,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
