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
  actions = {
    change_dir = {
      global = true,
    },
  },
})
require("nvim-web-devicons").setup()

-- TODO fix this since it causes vim to crash if nvim-tree is up and telescope tries to open something
-- close vim if nvim-tree is the last buffer
-- vim.api.nvim_create_autocmd("BufEnter", {
--   nested = true,
--   callback = function()
--     if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
--       vim.cmd "quit"
--     end
--   end
-- })
