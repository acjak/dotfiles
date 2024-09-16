-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
vim.cmd("highlight CursorLine guibg=#135500")
-- vim.cmd("highlight CursorLine ctermbg=235 guibg=#4b5263")
-- change cursor type
vim.cmd(
  "set guicursor=n-v-c:block,i-ci-ve:ver30,r-cr:hor20,o:hor50,a:blinkwait175-blinkoff150-blinkon175-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
)
-- hls search
vim.cmd("set hlsearch")

-- Setup rust-tools
vim.cmd("let g:rustfmt_autosave = 1")

-- Setup prettier
vim.cmd("nnoremap gp :silent %!prettier --stdin-filepath %<CR>")
-- Don't format on save
vim.cmd("let g:prettier#autoformat = 0")

-- cursor surrounding lines
vim.cmd("set scrolloff=100")

-- Leader t to save
vim.cmd("nnoremap <leader>t :w<CR>")
