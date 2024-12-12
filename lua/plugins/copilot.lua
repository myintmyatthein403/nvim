return {
  "github/copilot.lua",
  config = function()
    -- Set up Copilot
    require("copilot").setup({
      suggestion = { enabled = true },
      panel = { enabled = true },
    })

    -- Optional: Disable Tab mapping (if you want to use your custom keybinding)
    vim.g.copilot_no_tab_map = true

    -- Map <C-J> to accept the current Copilot suggestion
    vim.api.nvim_set_keymap("i", "<C-J>", "copilot#Accept()", { silent = true, expr = true })
  end,
}
