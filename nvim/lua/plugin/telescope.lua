require "telescope".setup {
  defaults = {
    sorting_strategy = "ascending",
    layout_config = {
      prompt_position = "top",
    }
  },
  extensions = {
    file_browser = {
      grouped = true,
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
    }
  }
}

pcall(require('telescope').load_extension, 'fzf')
require "telescope".load_extension "file_browser"

vim.keymap.set('n', '<C-p>', require('telescope.builtin').find_files, { desc = 'Find files' })
vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, { desc = 'Search [F]iles with [G]rep' })
vim.keymap.set('n', '<leader>b', require('telescope.builtin').buffers, { desc = 'List opened [B]uffers' })
vim.keymap.set('n', '<leader>ht', require('telescope.builtin').help_tags, { desc = '[H]elp [T]ags' })
vim.keymap.set('n', '<leader>ct', require('telescope.builtin').treesitter, { desc = 'Show treesitter' })
vim.keymap.set('n', '<leader>fb', require('telescope').extensions.file_browser.file_browser, { desc = 'Show file browser' })
--vim.api.nvim_set_keymap(
--  "n",
--  "<leader>fb",
--  ":Telescope file_browser<CR>",
--  { noremap = true, silent = true, desc = "File Browser }
--)
