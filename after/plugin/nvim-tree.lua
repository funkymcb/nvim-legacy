require("nvim-tree").setup({
   open_on_tab = true,

   update_focused_file = {
      enable = true,
      update_root = true,
   },

   hijack_directories = {
      enable = false,
   },

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

require("nvim-web-devicons").setup()
