-- Disable plain arrow keys
-- Up and Down is used for snippets
vim.keymap.set('i', '<Left>', '<nop>')
vim.keymap.set('i', '<Right>', '<nop>')
vim.keymap.set('!', '<Up>', '<nop>')
vim.keymap.set('!', '<Down>', '<nop>')

-- Tags
vim.keymap.set('n', '<leader>tt', require('telescope.builtin').tags, { desc = 'Display tags' })
--
-- -- Easymotion
-- -- <Leader>f{char} to move to {char}
-- map  <Leader>e <Plug>(easymotion-bd-f)
-- nmap <Leader>e <Plug>(easymotion-overwin-f)
--
-- -- Move to line
-- map <Leader>L <Plug>(easymotion-bd-jk)
-- nmap <Leader>L <Plug>(easymotion-overwin-line)
--
-- -- Move to word
-- map  <Leader>w <Plug>(easymotion-bd-w)
-- nmap <Leader>w <Plug>(easymotion-overwin-w)
--
--
--
-- Disable arrows
vim.keymap.set('i', '<Left>', '<nop>')
vim.keymap.set('i', '<Right>', '<nop>')
vim.keymap.set('n', '<Up>', '<nop>')
vim.keymap.set('n', '<Down>', '<nop>')

-- Resize key binding
vim.keymap.set('!', '<Left>', ':vertical resize -5<CR>')
vim.keymap.set('!', '<Right>', ':vertical resize +5<CR>')
vim.keymap.set('!', '<S-C-j>', '<Plug>(is-scroll-f)')
vim.keymap.set('!', '<S-C-k>', '<Plug>(is-scroll-b)')
vim.keymap.set('n', '<leader>c', ':noh<CR>')
vim.keymap.set('n', '<C-k>', '[e')
vim.keymap.set('n', '<C-j>', ']e')
vim.keymap.set('n', '<leader>l', ':bn<CR>')
vim.keymap.set('n', '<leader>h', ':bp<CR>')
vim.keymap.set('n', '<silent><leader>d', ':GFiles?<CR>')

--
-- -- Formatter
-- nmap <leader>fmf :CocCommand prettier.formatFile<CR>
--
-- -- Save when insert mode
vim.keymap.set('!', '<leader>s', ':StripWhitespace<CR><ESC> :w<CR>')
vim.keymap.set('n', '<leader>s', ':StripWhitespace<CR><ESC> :w<CR>')
vim.keymap.set('i', '<leader>s', '<ESC><ESC>:StripWhitespace<CR><ESC> :w<CR>')

-- -- Copy relative path
vim.keymap.set('n', '<leader>cp', ':CopyRelPath<CR>')
--
-- -- Tagbar Toggle
vim.keymap.set('n', '<leader>tt', ':TagbarToggle<CR>')
-- -- Tabs keybinding
-- nmap <silent> <leader>ta :tabnew<CR>
-- nmap <silent> <leader>th :tabprevious<CR>
-- nmap <silent> <leader>tl :tabnext<CR>
--
-- Split window
vim.keymap.set('n', 'ss', ':split<Return><C-w>w')
vim.keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window
vim.keymap.set('n', 's<left>', '<C-w>h')
vim.keymap.set('n', 's<up>', '<C-w>k')
vim.keymap.set('n', 's<down>', '<C-w>j')
vim.keymap.set('n', 's<right>', '<C-w>l')
vim.keymap.set('n', 'sh', '<C-w>h')
vim.keymap.set('n', 'sk', '<C-w>k')
vim.keymap.set('n', 'sj', '<C-w>j')
vim.keymap.set('n', 'sl', '<C-w>l')
