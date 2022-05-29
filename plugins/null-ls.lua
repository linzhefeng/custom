local null_ls = require "null-ls"
local b = null_ls.builtins

local sources = {
  b.formatting.prettier,
   b.diagnostics.write_good,
b.code_actions.gitsigns,
b.code_actions.eslint
}

local M = {}

M.setup = function()
   null_ls.setup {
      -- debug = true,
      sources = sources,

      -- format on save
      on_attach = function(client)
         if client.resolved_capabilities.document_formatting then
            vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
         end
      end,
   }
end

return M
