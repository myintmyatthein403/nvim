return {
  "kiddos/gemini.nvim",
  config = function()
    require("gemini").setup({
      completion = {
        enabled = true,
        insert_result_key = "<C-j>", -- Change keybinding to Ctrl+J
      },
      hints = {
        enabled = true,
        hints_delay = 2000,
        insert_result_key = "<C-j>", -- Also change here for inline hints
      },
      instruction = {
        enabled = true,
        menu_key = "<C-o>", -- Keep existing menu keybinding
      },
    })
  end,
}
