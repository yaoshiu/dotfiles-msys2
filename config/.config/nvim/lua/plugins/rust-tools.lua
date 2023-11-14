return {
  "simrat39/rust-tools.nvim",
  opts = function(_, opts)
    -- local extension_path = "/etc/profiles/per-user/phieash/share/vscode/extensions/vadimcn.vscode-lldb/"
    -- local codelldb_path = extension_path .. "adapter/codelldb"
    -- local liblldb_path = extension_path .. "lldb/lib/liblldb.so"
    -- local adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path)
    -- opts.dap.adapter = adapter
    -- Enable standalone
    local server = opts.server or {}
    server.standalone = true
    opts.server = server
  end,
}
