return {
  'gorbit99/codewindow.nvim',
  keys = {
    {
      "<leader>ms",
      function()
        local async = require("plenary.async")
        if require("codewindow.window").is_minimap_open() and require("symbols-outline").state.code_win == 0
            or (not require("codewindow.window").is_minimap_open() and require("symbols-outline").state.code_win ~= 0) then
          async.run(
            function()
              require("symbols-outline").toggle_outline()
              require("codewindow").toggle_minimap()

              async.util.sleep(20)
              if require("symbols-outline").state.code_win ~= 0 then
                vim.cmd("wincmd h")
              end
            end
          )
        end
      end,
      desc = "Switch between minimap and outline"
    },
  },
  config = function()
    local codewindow = require('codewindow')
    codewindow.setup()
    codewindow.apply_default_keybinds()
  end,
}
