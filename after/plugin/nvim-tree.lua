require("nvim-tree").setup({
   open_on_tab = true,

   respect_buf_cwd = true,

   diagnostics = {
      enable = true,
   },

   git = {
      ignore = false,
   },

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

local function open_nvim_tree()
   require("nvim-tree.api").tree.open()
   vim.cmd "wincmd w" -- cursor to buffer
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })


require("nvim-web-devicons").setup()
