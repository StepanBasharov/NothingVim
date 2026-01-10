return {
  "mason-org/mason.nvim",
  opts = {
    ensure_installed = {
      "stylua",
      "shellcheck",
      "shfmt",
      "flake8",
      "gopls",
      "gofumpt",
      "golangci-lint",
      "ruff",
      "black",
      "goimports",
      "goimports-reviser",
    },
  },
}
