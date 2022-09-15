require("nvim-tree").setup({
  open_on_setup_file = true,
  create_in_closed_folder = true,
  open_on_tab = true,

  hijack_directories = {
    enable = false,
  },

  diagnostics = {
    enable = true,
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
