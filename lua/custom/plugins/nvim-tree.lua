vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<cr>', { desc = 'Toggle NvimTre[e]', silent = true, noremap = true })
-- on_attach = function(bufnr)
--   vim.keymap.set('n', 'h', ':NvimTre <CR>')
--   vim.keymap.set('n', 'H', ':NvimTreeCollapse<CR>')
-- end

return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      sort = {
        sorter = 'case_sensitive',
      },
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    }
  end,
}
