return {
  "folke/edgy.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "simrat39/symbols-outline.nvim",
  },
  opts = function(_, opts)
    local async = require("plenary.async")
    opts.right = opts.right or {}

    for _, v in ipairs(opts.right) do
      if v.title == "Symbols Outline" then
        v.open = function()
          async.run(function()
            vim.cmd [[SymbolsOutlineOpen]]
            async.util.sleep(20)
            vim.cmd("wincmd h")
          end)
        end
      end
    end
  end,
}
