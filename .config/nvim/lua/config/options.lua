-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- vim.g.lazyvim_python_lsp = "pyright"
-- vim.g.lazyvim_python_ruffle = "ruff_lsp"

-- vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
-- vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
-- vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
-- vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting

-- Set leader+w to save the file
vim.api.nvim_set_keymap("n", "<leader>t", ":w<CR>", { noremap = true })

-- Dont format on save
vim.g.autoformat = false

-- Set number of lines from top and bottom of the screen to keep the cursor in the center
vim.o.scrolloff = 100

-- Set cursor line color
vim.cmd("highlight CursorLine ctermbg=235 guibg=#4b5263")

vim.cmd("nnoremap gp :silent %!prettier --stdin-filepath %<CR>")

