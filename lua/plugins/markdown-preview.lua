local M = {}

function M.setup()
  return {
    "iamcco/markdown-preview.nvim",
    run = "cd app && yarn install",
    ft = "markdown",
    config = function()
      vim.g.mkdp_auto_start = 1
    end,
  }
end

return M
