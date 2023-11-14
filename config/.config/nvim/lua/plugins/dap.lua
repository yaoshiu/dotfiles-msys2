return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    opts = {
      render = {
        max_type_length = 8,
      },
    },
  },
  opts = function(_, _)
    local dap = require("dap")
    local codelldb = dap.adapters.codelldb
    -- codelldb.executable.command =
    -- "/etc/profiles/per-user/phieash/share/vscode/extensions/vadimcn.vscode-lldb/adapter/codelldb"
    codelldb.host = "127.0.0.1"
    if vim.fn.has("mac") ~= 1 and vim.fn.has("windows") ~= 1 then
      dap.adapters.cppdbg = {
        type = "executable",
        command = "/etc/profiles/per-user/phieash/share/vscode/extensions/ms-vscode.cpptools/debugAdapters/bin/OpenDebugAD7",
        id = "cppdbg",
      }
      dap.configurations.cpp = vim.list_extend(dap.configurations.cpp or {}, {
        {
          name = "Launch file(cppdbg)",
          type = "cppdbg",
          request = "launch",
          program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
          end,
          cwd = "${workspaceFolder}",
          stopAtEntry = true,
          setupCommands = {
            {
              text = "-enable-pretty-printing",
              description = "enable pretty printing",
              ignoreFailures = false,
            },
          },
        },
      })
      dap.configurations.c = dap.configurations.cpp
    end
    -- dap.configurations.rust = {
    --   {
    --     name = "Launch file",
    --     type = "rt_lldb",
    --     request = "launch",
    --     program = function()
    --       return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    --     end,
    --     cwd = "${workspaceFolder}",
    --     stopOnEntry = false,
    --     initCommands = function()
    --       local rustc_sysroot = vim.fn.trim(vim.fn.system('rustc --print sysroot'))

    --       local script_import = 'command script import "' .. rustc_sysroot .. '/lib/rustlib/etc/lldb_lookup.py"'
    --       local commands_file = rustc_sysroot .. '/lib/rustlib/etc/lldb_commands'

    --       local commands = {}
    --       local file = io.open(commands_file, 'r')
    --       if file then
    --         for line in file:lines() do
    --           table.insert(commands, line)
    --         end
    --         file:close()
    --       end
    --       table.insert(commands, 1, script_import)
    --       return commands
    --     end,
    --   },
    -- }
  end,
}
