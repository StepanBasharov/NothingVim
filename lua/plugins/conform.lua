return {
  "stevearc/conform.nvim",
  optional = true,

  opts = {
    default_format_opts = {
      timeout_ms = 3000,
      async = false,
      quiet = false,
      lsp_format = "fallback",
    },

    -- ============================
    -- FORMATTERS BY FILETYPE
    -- ============================
    formatters_by_ft = {
      -- Lua
      lua = { "stylua" },

      -- Shell
      sh = { "shfmt" },
      fish = { "fish_indent" },

      -- ============================
      -- Go
      -- ============================
      go = {
        "gofumpt",
        "goimports",
        "goimports-reviser",
      },

      -- ============================
      -- Python
      -- ============================
      python = {
        "ruff_fix",
        "ruff_format",
        "black",
      },
    },

    -- ============================
    -- FORMATTER CONFIG
    -- ============================
    formatters = {
      injected = {
        options = { ignore_errors = true },
      },

      -- ---------- Go ----------
      gofumpt = {},
      goimports_reviser = {
        prepend_args = {
          "-rm-unused",
          "-set-alias",
          "-format",
        },
      },

      -- ---------- Python ----------
      ruff_fix = {},
      ruff_format = {},
      black = {
        prepend_args = {
          "--fast",
          "--line-length",
          "88",
        },
      },
    },
  },
}
