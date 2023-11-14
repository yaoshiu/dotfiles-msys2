return {
  "michaelb/sniprun",
  lazy = true,
  cmd = { "SnipRun", "SnipInfo" },
  keys = {
    { "<leader>r", "<Plug>SnipRunOperator", desc = "Run the whole code" },
    { "r", "<Plug>SnipRun", desc = "Run the snip", mode = "v" },
  },
  build = "./install.sh",
}
