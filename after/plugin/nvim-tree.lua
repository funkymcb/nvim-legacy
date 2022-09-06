require("nvim-tree").setup({    
  view = {
    mappings = {
      list = {
        { key = "i", action = "split" },
        { key = "s", action = "vsplit" },
        { key = "t", action = "tabnew" },
        { key = "I", action = "toggle_dotfiles" },
      },
    },
  },
  --[[
  actions = {
    open_file = {
      window_picker = {
        enable = false
      },
    },
  },
  --]]
})
require("nvim-web-devicons").setup()

-- close vim if nvim-tree is the last buffer
vim.api.nvim_create_autocmd("BufEnter", {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
      vim.cmd "quit"
    end
  end
})
