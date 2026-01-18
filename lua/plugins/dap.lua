return {
  "mfussenegger/nvim-dap",
  optional = true,
  dependencies = {
    -- Mason для установки Delve
    {
      "mason-org/mason.nvim",
      opts = {
        ensure_installed = { "delve" },
      },
    },
    -- DAP UI
    {
      "rcarriga/nvim-dap-ui",
      config = function()
        local dap, dapui = require("dap"), require("dapui")
        dapui.setup()

        -- Автоматически открывать/закрывать UI
        dap.listeners.after.event_initialized["dapui_config"] = function()
          dapui.open()
        end
        dap.listeners.before.event_terminated["dapui_config"] = function()
          dapui.close()
        end
        dap.listeners.before.event_exited["dapui_config"] = function()
          dapui.close()
        end
      end,
    },
    -- DAP Go
    {
      "leoluz/nvim-dap-go",
      config = function()
        require("dap-go").setup()
      end,
    },
  },
  config = function()
    local dap, dap_go, dapui = require("dap"), require("dap-go"), require("dapui")

    -- Полезные маппинги
    local opts = { noremap = true, silent = true }
    vim.keymap.set("n", "<leader>dc", dap.continue, opts)
    vim.keymap.set("n", "<leader>do", dap.step_over, opts)
    vim.keymap.set("n", "<leader>di", dap.step_into, opts)
    vim.keymap.set("n", "<leader>dO", dap.step_out, opts)
    vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint, opts)
    vim.keymap.set("n", "<leader>dT", function()
      require("dap-go").debug_test()
    end, opts)
    vim.keymap.set("n", "<leader>du", dapui.toggle, opts)
  end,
}
