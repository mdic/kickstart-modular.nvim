return {
  'linux-cultist/venv-selector.nvim',
  dependencies = { 'neovim/nvim-lspconfig', 'nvim-telescope/telescope.nvim', 'mfussenegger/nvim-dap-python' },
  opts = {
    -- Your options go here
    name = 'venv_\\w',
    -- search = true,
    -- auto_refresh = false,
    search_venv_managers = false,
    path = '~/venvs',
    -- set parents to 0 so that it only looks in the ~/venvs/ folder!
    parents = 0,
  },
  event = 'VeryLazy', -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
  keys = {
    -- Keymap to open VenvSelector to pick a venv.
    { '<leader>vs', '<cmd>VenvSelect<cr>', { desc = '[S]elect venv from list' } },
    -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
    { '<leader>vc', '<cmd>VenvSelectCached<cr>', { desc = 'Select [c]ached venv' } },
  },
}
