-- ~/.config/nvim/lua/plugins/toggle.lua

return {
  "folke/lazy.nvim",
  config = function()
    -- Define a function to toggle between relative and absolute line numbers
    local function toggle_line_numbers()
      if vim.wo.relativenumber then
        vim.wo.relativenumber = false
        vim.wo.number = true
      else
        vim.wo.relativenumber = true
        vim.wo.number = true
      end
    end

    -- Create a command that calls the function
    vim.api.nvim_create_user_command("ToggleLineNumbers", toggle_line_numbers, {})
  end,
}
