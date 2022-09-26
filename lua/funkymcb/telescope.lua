local actions = require("telescope.actions")
require("telescope").setup({
   defaults = {
      file_sorter = require("telescope.sorters").get_fzy_sorter,
      color_devicons = true,

      mappings = {
         i = {
            ["<Tab>"] = actions.file_split, -- workaround for <c-i>
            ["<C-s>"] = actions.file_vsplit,
         },
      }
   }
})
