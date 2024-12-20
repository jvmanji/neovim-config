require("lazy").setup({
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  'tpope/vim-commentary',
  'mattn/emmet-vim',
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'ellisonleao/gruvbox.nvim',
  'dracula/vim',
  'nvim-lualine/lualine.nvim',
  'nvim-treesitter/nvim-treesitter',
  'vim-test/vim-test',
  'lewis6991/gitsigns.nvim',
  'preservim/vimux',
  'christoomey/vim-tmux-navigator',
  'tpope/vim-fugitive',
  'tpope/vim-surround',
  'stevearc/oil.nvim',
  -- completion
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  "rafamadriz/friendly-snippets",
  -- "github/copilot.vim",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "junegunn/vim-easy-align",
  "matze/vim-move",
  "Exafunction/codeium.vim",
  {
    "phpactor/phpactor",
    run = "composer install --no-dev -o"
  },
  "neovim/nvim-lspconfig",
  {
    "vinnymeller/swagger-preview.nvim",
    run = "npm install -g swagger-ui-watcher",
  },
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    "folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  },
})

-- Rethink:
--  - https://github.com/vimeo/psalm
--  - https://phpactor.readthedocs.io/en/master/reference/refactorings.html#extract-method
--  - https://psalm.dev/docs/manipulating_code/refactoring/
--  - https://pestphp.com/docs/editor-setup
--  - https://github.com/nvim-neotest/neotest
--  - https://github.com/mfussenegger/nvim-dap
--  - https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation#php
