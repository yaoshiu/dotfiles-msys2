return {
  {
    "xiyaowong/transparent.nvim",
    name = "transparent",
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      transparent_background = false,

      flavor = "macchiato",

      background = {
        dark = "macchiato",
      },

      integrations = {
        notify = true,
        which_key = true,
        lsp_trouble = true,
        symbols_outline = true,
        noice = true,
        neotree = true,
        barbar = true,
      },
    },
  },
  {
    "rcarriga/nvim-notify",
    opts = function(_, opts)
      opts.background_colour = "#000000"
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
