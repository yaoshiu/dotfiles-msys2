return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  ft = "norg",
  cmd = "Neorg",
  opts = {
    load = {
      ["core.defaults"] = {},
      ["core.concealer"] = {},
      -- ["core.dirman"] = {
      --   config = {
      --     workspaces = {
      --       notes = "~/Documents/neorg",
      --     },
      --   },
      -- },
      ["core.completion"] = {
        config = {
          engine = "nvim-cmp",
        },
      },
      ["core.export"] = {},
      ["core.export.markdown"] = {},
    },
  },
  dependencies = { "nvim-neorg/neorg-telescope" },
}
