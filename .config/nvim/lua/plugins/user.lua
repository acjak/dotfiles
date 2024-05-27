-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore

-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  -- setup mason and disable pyright
  -- {
  --   "mason-lang/mason.nvim",
  --   enabled = true,
  --   opts = {
  --     -- disable pyright
  --     lsp = {
  --       python = { enabled = false },
  --     },
  --   },
  -- }
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = { enabled = false },
      },
    },
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "night" },
  }
}
