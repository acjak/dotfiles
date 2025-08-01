-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- change cursor type
-- vim.cmd("highlight CursorLine guibg=#995520")
--
-- vim.cmd(
--   "set guicursor=n-v-c:block,i-ci-ve:ver30,r-cr:hor20,o:hor50,a:blinkwait175-blinkoff150-blinkon175-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
-- )
-- -- hls search
-- vim.cmd("set hlsearch")
--
-- -- Setup rust-tools
-- vim.cmd("let g:rustfmt_autosave = 1")
--
-- -- Setup prettier
-- vim.cmd("nnoremap gp :silent %!prettier --stdin-filepath %<CR>")
-- -- Don't format on save
-- vim.cmd("let g:prettier#autoformat = 0")
--
-- -- cursor surrounding lines
-- vim.cmd("set scrolloff=100")
--
-- -- Leader t to save
-- vim.cmd("nnoremap <leader>t :w<CR>")
-- Enable cursorline first, then set its color
vim.opt.cursorline = true
-- vim.api.nvim_set_hl(0, "CursorLine", { bg = "#995520" })
-- vim.api.nvim_create_autocmd("ColorScheme", {
--   pattern = "*",
--   callback = function()
--     vim.api.nvim_set_hl(0, "CursorLine", { bg = "#336631" })
--   end,
-- })

-- Search highlighting
vim.opt.hlsearch = true

-- Rust settings
vim.g.rustfmt_autosave = 1

-- Prettier keymap (modern way)
vim.keymap.set("n", "gp", ":silent %!prettier --stdin-filepath %<CR>", { desc = "Format with prettier" })

-- Prettier autoformat off
vim.g["prettier#autoformat"] = 0

-- Cursor surrounding lines
vim.opt.scrolloff = 100

-- Leader t to save
vim.keymap.set("n", "<leader>t", ":w<CR>", { desc = "Save file" })
vim.schedule(function()
  vim.api.nvim_set_hl(0, "CursorLine", { bg = "#336631" })
  vim.api.nvim_set_hl(0, "Cursor", { bg = "#ffffff", fg = "#000000" })
  vim.api.nvim_set_hl(0, "lCursor", { bg = "#ffffff", fg = "#000000" })
end)
-- Cursor shape settings (this one's fine as vim.cmd since it's a complex string)
vim.opt.guicursor =
  "n-v-c:block,i-ci-ve:ver30,r-cr:hor20,o:hor50,a:blinkwait175-blinkoff150-blinkon175,sm:block-blinkwait175-blinkoff150-blinkon175"
-- vim.opt.guicursor =
-- "n-v-c:block,i-ci-ve:ver30,r-cr:hor20,o:hor50,a:blinkwait175-blinkoff150-blinkon175-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
