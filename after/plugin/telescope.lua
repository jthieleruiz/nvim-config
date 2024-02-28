local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {desc = "[P]eruse [F]iles"})
vim.keymap.set('n', '<C-p>', builtin.git_files, {desc = "Search git files"})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end, {desc = "Grep"})

vim.keymap.set('n', '<leader>tk', ':Telescope keymaps')
