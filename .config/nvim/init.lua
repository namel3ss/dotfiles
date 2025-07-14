require("config.lazy")

local fzf_lua = require('fzf-lua')

fzf_lua.setup {
  -- ignore all '.lua' and '.vim' files
  file_ignore_patterns = { "%.log$", "%.log%." }
}

vim.keymap.set("n", "<c-P>", fzf_lua.files, { desc= "Fzf Files" })
vim.keymap.set("n", "<c-F>", fzf_lua.live_grep, { desc= "Fzf Live grep" })

vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2

local cmp = require('cmp')

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true })
  }),
  sources = {
    {
      name = 'buffer',
      option = {
        get_bufnrs = function()
          return vim.api.nvim_list_bufs()
        end
      }
    }
  }
})

