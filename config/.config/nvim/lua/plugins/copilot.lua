return {
  "zbirenbaum/copilot.lua",
  opts = {
    suggestion = {
      enabled = true,
      auto_trigger = true,
    },
    panel = {
      enabled = true,
      keymap = {
        open = "<C-p>",
      }
    },
    filetypes = {
      yaml = true,
      gitcommit = true,
      gitrebase = true,
      nix = true,
    }
  }
}
