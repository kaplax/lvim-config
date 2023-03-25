local M = {}

function M.setup()
  return {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  }
end

return M
