local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
local on_attach = function(client, bufnr)
	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(bufnr, ...)
	end

	vim.cmd([[
            augroup formatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.format()
                autocmd BufWritePre <buffer> lua OrganizeImports(1000)
            augroup END
        ]])

	-- Set autocommands conditional on server_capabilities
	vim.cmd([[
            augroup lsp_document_highlight
                autocmd! * <buffer>
                autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
                autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
            augroup END
        ]])
end

-- organize imports
-- https://github.com/neovim/nvim-lspconfig/issues/115#issuecomment-902680058
function OrganizeImports(timeoutms)
	local params = vim.lsp.util.make_range_params()
	params.context = { only = { "source.organizeImports" } }
	local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, timeoutms)
	for _, res in pairs(result or {}) do
		for _, r in pairs(res.result or {}) do
			if r.edit then
				vim.lsp.util.apply_workspace_edit(r.edit, "UTF-8")
			else
				vim.lsp.buf.execute_command(r.command)
			end
		end
	end
end

local lspconfig = require("lspconfig")

lspconfig.gopls.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	settings = {
		gopls = {
			gofumpt = true,
		},
	},
	flags = {
		debounce_text_changes = 150,
	},
})

-- local status_ok, lsp_signature = pcall(require, "lsp_signature")
-- if not status_ok then
-- 	return
-- end

-- lsp_signature.setup({
-- 	bind = true, -- This is mandatory, otherwise border config won't get registered.
-- 	handler_opts = {
-- 		border = "rounded",
-- 	},
-- })

lspconfig.rust_analyzer.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	cmd = {
		"rustup",
		"run",
		"stable",
		"rust-analyzer",
	},
})
