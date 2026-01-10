return {
  "VidocqH/lsp-lens.nvim",
  event = "VeryLazy",
  config = function()
    require("lsp-lens").setup({
      enable = true,
      include_declaration = true,
      sections = {
        definition = false,
        references = true,
        implements = true,
        git_authors = true,
      },
      icons = {
        references = "",
        implements = "",
        git_authors = "",
      },
    })
  end,
}
