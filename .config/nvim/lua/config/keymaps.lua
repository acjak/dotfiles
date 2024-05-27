-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local cmp = require("cmp")

-- Example keymap
-- Set jk to escape
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })

return {
  ["<Tab>"] = cmp.mapping(function(fallback)
    if cmp.visible() then
      cmp.select_next_item()
    elseif require("luasnip").expand_or_jumpable() then
      vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
    -- elseif vim.b._copilot_suggestion ~= nil then
    --   vim.fn.feedkeys(vim.api.nvim_replace_termcodes(vim.fn["copilot#Accept"](), true, true, true), "")
    else
      fallback()
    end
  end, {
    "i",
    "s",
  }), -- Example keymap
  -- vim.keymap.set("n", "<leader>h", ':echo "Hello"<CR>', { noremap = true, silent = true }),
  -- Set jk to escape
  -- vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true }),
}
