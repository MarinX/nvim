return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
        "html", "css", "go", "gomod", "gitignore", "terraform", "tsx", "typescript","javascript" 
  		},
  	},
  },
{
  "github/copilot.vim",
  lazy = false,
  config = function()
    vim.g.copilot_no_tab_map = true;
    vim.g.copilot_assume_mapped = true;
    vim.g.copilot_tab_fallback = "";
  end
},
  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    opts = function()
      cfg = require "nvchad.configs.nvimtree"
      cfg.view.adaptive_size = true
      return cfg
    end,
  },
  {
   "tris203/precognition.nvim",
   event = "VeryLazy",
   opts = require "configs.precognition"
  },
  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "configs.lint"
    end
  },
  {
    "rshkarin/mason-nvim-lint",
    event = "VeryLazy",
    dependencies = { "nvim-lint" },
  },
  {
   'fatih/vim-go',
    lazy = false,
  },
}
