local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {desc = "[P]eruse [F]iles"})
vim.keymap.set('n', '<C-p>', builtin.git_files, {desc = "Search git files"})
vim.keymap.set('n', '<leader>ps', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })

vim.keymap.set('n', '<leader>tk', ':Telescope keymaps')
vim.keymap.set('n', '<leader>fa', function()
	require("telescope").extensions.file_browser.file_browser()
end)

require("telescope").setup {
  defaults = {
    theme = "center",
    sorting_strategy = "ascending",
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.3,
      },
    },
  },
}
