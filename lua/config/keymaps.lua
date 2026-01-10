vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { noremap = true, silent = true, desc = "Скопировать" })
vim.keymap.set({ "n", "v" }, "<leader>c", '"+d', { noremap = true, silent = true, desc = "Вырезать" })
vim.keymap.set("n", "<leader>p", '"+p', { noremap = true, silent = true, desc = "Вставить" })
vim.keymap.set("n", "<leader>sl", vim.diagnostic.setloclist)
vim.keymap.set("n", ";", ":")
vim.keymap.set(
  "n",
  "<leader>sf",
  vim.diagnostic.open_float,
  { noremap = true, silent = true, desc = "Показать ошибку/хинт" }
)
