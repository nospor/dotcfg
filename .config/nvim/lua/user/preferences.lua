vim.o.number = true
vim.o.wrap = false
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.smartcase = true
vim.o.ignorecase = true
vim.o.hlsearch = false
vim.o.signcolumn = 'yes'

vim.o.termguicolors = true

vim.g.mapleader = ' '
vim.g.maplocalleader = "\\"

vim.o.expandtab = true
vim.o.scrolloff = 10
vim.o.showcmd = true
vim.o.history = 1000
vim.o.number = true
vim.o.wildmenu = true
vim.o.wildmode='list:longest'
vim.o.hidden = true
--vim.o.colorcolumn = "80"
vim.o.cursorline = true

vim.o.splitright = true
vim.o.splitbelow = true

-- setting b shortcut to switch to buffers
-- vim.keymap.set('n', '<leader>b', '<cmd>buffers<cr>:buffer ', {desc = 'switch buffer'})

vim.keymap.set('n', '<leader>w', '<cmd>write<cr>', {desc = 'Save file'})
vim.keymap.set('n', '<leader>q', '<cmd>quitall<cr>', {desc = 'Exit vim'})

vim.keymap.set('i', '<c-space>', '<c-x><c-o>')

vim.o.clipboard="unnamedplus"
vim.keymap.set({'n', 'x'}, 'gy', '"+y', {desc = 'Copy to clipboard'})
vim.keymap.set({'n', 'x'}, 'gp', '"+p', {desc = 'Paste clipboard text'})

vim.keymap.set("n", "<Tab>", function()
  if vim.bo.modifiable and not vim.bo.readonly and vim.bo.modified then
    vim.cmd("write")
  end
  vim.cmd("bnext")
end, { silent = true })

vim.keymap.set("n", "<S-Tab>", function()
  if vim.bo.modifiable and not vim.bo.readonly and vim.bo.modified then
    vim.cmd("write")
  end
  vim.cmd("bprevious")
end, { silent = true })


