return {
	"jay-babu/mason-nvim-dap.nvim",
	opts = {
		handlers = {
			function(config)
				require("mason-nvim-dap").default_setup(config)
			end,
			python = function(config)
				config.adapters = {
					type = "executable",
					command = "python",
					args = { "-m", "debugpy.adapter" },
				}
				require("mason-nvim-dap").default_setup(config)
			end,
		},
	},
}
