return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "folke/neodev.nvim",
      name = "neodev",
      opts = {
        override = function(root_dir, library)
          if root_dir:find("/etc/nixos", 1, true) == 1 then
            library.enabled = true
            library.plugins = true
          end
        end,
      },
    },
  },
  opts = function(_, opts)
    opts.servers.clangd = {
      cmd = {
        "C:/msys64/clang64/bin/clangd.exe",
        "--offset-encoding=utf-16",
        "--background-index",
        "--clang-tidy",
        "--header-insertion=iwyu",
        "--completion-style=detailed",
        "--function-arg-placeholders",
        "--fallback-style=llvm",
      },
    }
  end,
}
