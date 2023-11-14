return {
  "xeluxee/competitest.nvim",
  keys = {
    { "<leader>tr", "<CMD>CompetiTest run<CR>", desc = "Run the test" },
    { "<leader>ta", "<CMD>CompetiTest add<CR>", desc = "Add a test case" },
    { "<leader>te", "<CMD>CompetiTest edit<CR>", desc = "Edit a test case" },
    { "<leader>tc", "<CMD>CompetiTest receive testcases<CR>", desc = "Receive a test case" },
  },
  config = function(_, opt)
    require("competitest").setup()
  end,
}
