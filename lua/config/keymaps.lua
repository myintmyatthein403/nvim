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
vim.keymap.set(
  "n",
  "<leader>tn",
  "<cmd>ToggleLineNumbers<CR>",
  { desc = "Toggle LineNumbers", noremap = true, silent = true }
)

vim.keymap.set("n", "<leader>U", "<cmd>lua require('undotree').toggle()<cr>")

vim.keymap.set(
  "n",
  "<leader>ff",
  "<cmd>lua require('telescope.builtin').find_files()<CR>",
  { noremap = true, silent = true, desc = "Find Files" }
)
vim.keymap.set(
  "n",
  "<leader>fg",
  "<cmd>lua require('telescope.builtin').live_grep()<CR>",
  { noremap = true, silent = true, desc = "Live Grep" }
)
vim.keymap.set(
  "n",
  "<leader>fb",
  "<cmd>lua require('telescope.builtin').buffers()<CR>",
  { noremap = true, silent = true, desc = "Buffers" }
)
vim.keymap.set(
  "n",
  "<leader>fh",
  "<cmd>lua require('telescope.builtin').help_tags()<CR>",
  { noremap = true, silent = true, desc = "Help Tags" }
)
vim.keymap.set(
  "n",
  "<leader>fc",
  "<cmd>lua require('telescope.builtin').commands()<CR>",
  { noremap = true, silent = true, desc = "Commands" }
)
vim.keymap.set(
  "n",
  "<leader>fs",
  "<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>",
  { noremap = true, silent = true, desc = "Document Symbols" }
)
vim.keymap.set(
  "n",
  "<leader>fw",
  "<cmd>lua require('telescope.builtin').lsp_workspace_symbols()<CR>",
  { noremap = true, silent = true, desc = "Workspace Symbols" }
)
vim.keymap.set(
  "n",
  "<leader>fr",
  "<cmd>lua require('telescope.builtin').lsp_references()<CR>",
  { noremap = true, silent = true, desc = "References" }
)
vim.keymap.set(
  "n",
  "<leader>fl",
  "<cmd>lua require('telescope.builtin').lsp_code_actions()<CR>",
  { noremap = true, silent = true, desc = "Code Actions" }
)
vim.keymap.set(
  "n",
  "<leader>fd",
  "<cmd>lua require('telescope.builtin').lsp_definitions()<CR>",
  { noremap = true, silent = true, desc = "Definitions" }
)
vim.keymap.set(
  "n",
  "<leader>fi",
  "<cmd>lua require('telescope.builtin').lsp_implementations()<CR>",
  { noremap = true, silent = true, desc = "Implementations" }
)
vim.keymap.set(
  "n",
  "<leader>ft",
  "<cmd>lua require('telescope.builtin').lsp_type_definitions()<CR>",
  { noremap = true, silent = true, desc = "Type Definitions" }
)
vim.keymap.set(
  "n",
  "<leader>fs",
  "<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>",
  { noremap = true, silent = true, desc = "Document Symbols" }
)
vim.keymap.set(
  "n",
  "<leader>fp",
  "<cmd>lua require('telescope.builtin').lsp_document_diagnostics()<CR>",
  { noremap = true, silent = true, desc = "Document Diagnostics" }
)

-- Map <leader>r to run the HTTP request under the cursor
vim.api.nvim_set_keymap("n", "<leader>rr", ":Rest run<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>rp", ":Rest Params<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>rh", ":Rest History<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>rc", ":Rest Clear<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>M", ":MarkdownPreview<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>mm", ":MarkdownPreviewStop<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>CC", ":CopilotChat<CR>", { noremap = true, silent = true })
