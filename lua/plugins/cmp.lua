return {
  {
    "saghen/blink.cmp",
    version = "*",
    event = "InsertEnter",

    dependencies = {
      "rafamadriz/friendly-snippets",
    },

    opts = {
      -- keymaps
      keymap = {
        preset = "default",

        ["<Tab>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
        ["<CR>"] = { "accept", "fallback" },
        ["<C-Space>"] = {
          "show",
          "show_documentation",
          "hide_documentation",
        },
      },

      -- визуал
      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "mono",
      },

      -- документация
      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 150,
        },
      },

      -- источники
      sources = {
        default = {
          "lsp",
          "path",
          "snippets",
          "buffer",
        },

        providers = {
          lsp = {
            name = "LSP",
            module = "blink.cmp.sources.lsp",
          },
          path = {
            name = "Path",
            module = "blink.cmp.sources.path",
          },
          buffer = {
            name = "Buffer",
            module = "blink.cmp.sources.buffer",
          },
          snippets = {
            name = "Snippets",
            module = "blink.cmp.sources.snippets",
            score_offset = 100,
          },
        },
      },
    },

    -- корректная инициализация
    config = function(_, opts)
      require("blink.cmp").setup(opts)
    end,
  },
}
