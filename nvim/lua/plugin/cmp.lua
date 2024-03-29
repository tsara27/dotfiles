-- Set up nvim-cmp.
---------------------------------
-- Completion
---------------------------------
-- local cmp = require("cmp")
-- 
-- cmp.setup({
--   snippet = {
--     expand = function(args)
--       require("luasnip").lsp_expand(args.body)
--     end,
--   },
--   sources = cmp.config.sources({
--     { name = "nvim_lsp" },
--     { name = "luasnip" },
--     { name = "buffer" },
--     { name = "path" },
--   }),
-- })
-- 
-- -- File types specifics
-- cmp.setup.filetype("gitcommit", {
--   sources = cmp.config.sources({
--     { name = "cmp_git" },
--   }, {
--     { name = "buffer" },
--   }),
-- })
-- 
-- -- Command line completion
-- cmp.setup.cmdline("/", {
--   mapping = cmp.mapping.preset.cmdline(),
--   sources = { { name = "buffer" } },
-- })
-- 
-- cmp.setup.cmdline(":", {
--   mapping = cmp.mapping.preset.cmdline(),
--   sources = cmp.config.sources({
--     { name = "path" },
--   }, {
--     { name = "cmdline" },
--   }),
-- })
-- 
-- -- Set up lspconfig.
-- local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- require("lspconfig").ruby_ls.setup({
--   on_attach = function(client, buffer)
--     setup_diagnostics(client, buffer)
--   end,
-- })
-- require'lspconfig'.solargraph.setup({
--   diagnostic = false,
--   reference = false
-- })
-- -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
-- vim.diagnostic.config({
--   virtual_text = {
--     severity = {
--       min = vim.diagnostic.severity.ERROR,
--     },
--   },
--   severity_sort = true,
-- })
-- 
