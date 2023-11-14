return {
  "p00f/clangd_extensions.nvim",
  dependencies = { "neovim/nvim-lspconfig" },
  opts = function(_, _)
    require("lazyvim.util").lsp.on_attach(function(client, _)
      if client.name == "clangd" then
        local inlay_hints = require("clangd_extensions.inlay_hints")
        inlay_hints.setup_autocmd()
        inlay_hints.set_inlay_hints()
      end
    end)
  end,
}
