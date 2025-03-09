return {
  "rest-nvim/rest.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "http") -- Add "http" parser for Treesitter
    end,
  },
  config = function()
    -- Configure rest.nvim using vim.g
    vim.g.rest_vim = {
      -- Path to your .env file for environment variables
      env_file = vim.fn.stdpath("config") .. "/rest/.env",

      -- Show results in a vertical split (set to true for horizontal split)
      result_split_horizontal = false,

      -- Skip SSL verification for requests if needed
      skip_ssl_verification = false,

      highlight = {
        -- Enable request line highlight
        enabled = true,

        -- Timeout for request highlight in milliseconds
        timeout = 150,
      },

      -- Prevent automatic jump to request after execution
      jump_to_request = false,
    }

    -- Optionally, load Telescope extension for rest.nvim
    local status_ok, telescope = pcall(require, "telescope")
    if status_ok then
      telescope.load_extension("rest")
    end
  end,
}
