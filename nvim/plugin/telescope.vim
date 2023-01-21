" Lua configuration
lua << EOF
require "telescope".setup {
  defaults = {
    sorting_strategy = "ascending",
    layout_config = {
      prompt_position = "top",
    }
  }
}

require "telescope".load_extension "file_browser"

EOF

" Find files using Telescope command-line sugar.
nnoremap <C-p>      <cmd>Telescope find_files<cr>
nnoremap <leader>fg  <cmd>Telescope live_grep<cr>
nnoremap <leader>b  <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>ct <cmd>Telescope treesitter<cr>
nnoremap <leader>ct <cmd>Telescope treesitter<cr>
nnoremap <C-space>  <cmd>Telescope file_browser<cr>
"nnoremap <leader>df <cmd>Telescope lsp_definitions<cr>
