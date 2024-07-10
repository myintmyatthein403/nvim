return {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    -- add dracula
    { "Mofiqul/dracula.nvim" },

    -- Configure LazyVim to load dracula
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "dracula",
      },
    },
  },
  {
    "projekt0n/github-nvim-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("github-theme").setup({
        -- ...
      })

      vim.cmd("colorscheme github_dark")
    end,
  },
  {
    "sho-87/kanagawa-paper.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "marko-cerovac/material.nvim",
  },
  {
    "savq/melange-nvim",
  },
  { "EdenEast/nightfox.nvim" },
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
  },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("poimandres").setup({
        -- leave this setup function empty for default config
        -- or refer to the configuration section
        -- for configuration options
      })
    end,

    -- optionally set the colorscheme within lazy config
    init = function()
      vim.cmd("colorscheme poimandres")
    end,
  },
  {
    {
      "sainnhe/sonokai",
      priority = 1000,
      config = function()
        vim.g.sonokai_transparent_background = "1"
        vim.g.sonokai_enable_italic = "1"
        vim.g.sonokai_style = "andromeda"
      end,
    },
  },
  {
    "samharju/synthweave.nvim",
  },
  {
    "Mofiqul/vscode.nvim",
  },
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_enable_italic = true
      vim.cmd.colorscheme("gruvbox-material")
    end,
  },
}
