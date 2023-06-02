return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin" },

  -- rust
  { import = "astrocommunity.pack.rust" },
  {
    "simrat39/rust-tools.nvim",
    opts = {
      server = {
        settings = {
          ["rust-analyzer"] = {
            checkOnSave = {
              enable = true,
              command = "clippy",
            },
            cargo = {
              allFeatures = true,
            },
          },
        }
      }
    }
  }

  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
