-- 1. Captura as capacidades do nvim-cmp normalmente
local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config('pyright', {
	capabilities = capabilities
})

vim.lsp.enable('pyright')

-- 2. Define as opções padrão que todos os seus LSPs vão usar
-- local lsp_options = {
--   capabilities = capabilities,
  -- Aqui você também pode adicionar seu on_attach clássico se tiver um:
  -- on_attach = seu_on_attach_function
-- }

-- 3. Ativa os servidores usando a nova API nativa vim.lsp.config
-- Exemplo: Python (Pyright)

-- Exemplo: TypeScript/JavaScript (ts_ls)
-- vim.lsp.config['ts_ls']:enable(lsp_options)

-- Exemplo: Lua (lua_ls)
-- vim.lsp.config['lua_ls']:enable(lsp_options)
