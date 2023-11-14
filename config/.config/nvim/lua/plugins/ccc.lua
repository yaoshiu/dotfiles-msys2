return {
  "uga-rosa/ccc.nvim",
  lazy = true,
  event = "BufReadPre",
  opts = {
    highlighter = {
      auto_enable = true,
      max_byte = 200 * 1024,
    },
  },
}
