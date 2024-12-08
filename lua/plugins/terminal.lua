return {
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup({
        open_mapping = [[<C-\>]], -- Map Ctrl+\ to toggle the terminal
        direction = "float", -- Open terminal in floating mode
        float_opts = {
          border = "curved", -- Curved border style
        },
      })
    end,
  },
}
