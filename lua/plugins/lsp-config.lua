return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    -- opts = {
    --  auto_install = true,
    --  },
    config = function()
    require("mason-lspconfig").setup({
        auto_install = true,
       -- automatic_installation = false,
        ensure_installed = { "lua_ls", "pyright", "ruff_lsp", "rust_analyzer", "gopls", "bufls" }
      -- navigate to this website for most lsp languages list
        -- https://github.com/williamboman/mason-lspconfig.nvim
     })
    end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.pyright.setup({
        capabilities = capabilities
      })
      lspconfig.ruff_lsp.setup({
        capabilities = capabilities
      })
      lspconfig.rust_analyzer.setup({
        capabilities = capabilities
      })
      lspconfig.gopls.setup({
        capabilities=capabilities
      })
      lspconfig.bufls.setup({
        capabilities=capabilities
      })
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  },
  {
    "rust-lang/rust.vim"
  },
  {
    'numToStr/Comment.nvim',
    lazy = false,
    config = function()
      require("Comment").setup({
        toggler = {
          line = '<leader>/'
        },
        opleader = {
          line = '<leader>/'
        }
      })
    end
  }
}
