require("nvim-tree").setup({
   open_on_tab = true,
   open_on_setup = true,

   hijack_directories = {
      enable = false,
   },

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
