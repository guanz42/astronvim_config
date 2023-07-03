return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin" },
  {
    "catppuccin",
    opts = {
      transparent_background = true,
      term_colors = true,
    },
  },

  { import = "astrocommunity.diagnostics.trouble-nvim" },

  -- rust
  { import = "astrocommunity.pack.rust" },
  -- go
  { import = "astrocommunity.pack.go" },
  -- python
  { import = "astrocommunity.pack.python" },
  -- typescript
  { import = "astrocommunity.pack.typescript" },
  -- html css
  { import = "astrocommunity.pack.html-css" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
