return {
  "m00qek/baleia.nvim",
  cmd = "BaleiaColorize",
  config = function(_, opts)
    local baleia = require("baleia").setup(opts)
    vim.api.nvim_create_user_command("BaleiaColorize", function(opts)
      baleia.once(vim.api.nvim_win_get_buf(0))
    end, { nargs = 0 })
  end,
}
