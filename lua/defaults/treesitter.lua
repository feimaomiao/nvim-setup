return {
  -- Fuzzy Finder (files, lsp, etc)
  { 
    'nvim-telescope/telescope.nvim', 
    version = '*', 
    dependencies = { 
      'nvim-lua/plenary.nvim' 
    } 
  },
  {
      'nvim-telescope/telescope-fzf-native.nvim',
      -- NOTE: If you are having trouble with this installation,
      --       refer to the README for telescope-fzf-native for more instructions.
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
  },
  { -- Highlight, edit, and navigate code
      'nvim-treesitter/nvim-treesitter',
      dependencies = {
        'nvim-treesitter/nvim-treesitter-textobjects',
      },
      build = ":TSUpdate",
  }
}
