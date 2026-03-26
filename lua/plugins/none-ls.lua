return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- Run ':Mason' to install stylua
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.clang_format,

				null_ls.builtins.diagnostics.pylint,
				-- null_ls.builtins.formatting.cpplint,
				null_ls.builtins.diagnostics.markdownlint,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
