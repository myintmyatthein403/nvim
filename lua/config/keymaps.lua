-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

vim.keymap.set(
  "n",
  "<leader>pd",
  "<cmd>lua require('goto-preview').goto_preview_definition()<CR>",
  { noremap = true, silent = true, desc = "" }
)
vim.keymap.set(
  "n",
  "<leader>pt",
  "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>",
  { noremap = true, silent = true, desc = "" }
)
vim.keymap.set(
  "n",
  "<leader>pi",
  "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>",
  { noremap = true, silent = true, desc = "" }
)
vim.keymap.set(
  "n",
  "<leader>pD",
  "<cmd>lua require('goto-preview').goto_preview_declaration()<CR>",
  { noremap = true, silent = true, desc = "" }
)
vim.keymap.set(
  "n",
  "<leader>pP",
  "<cmd>lua require('goto-preview').close_all_win()<CR>",
  { noremap = true, silent = true, desc = "" }
)
vim.keymap.set(
  "n",
  "<leader>pr",
  "<cmd>lua require('goto-preview').goto_preview_references()<CR>",
  { noremap = true, silent = true, desc = "" }
)

vim.keymap.set("n", "<leader>k", "<cmd>LazyDocker<CR>", { desc = "Toggle LazyDocker", noremap = true, silent = true })

