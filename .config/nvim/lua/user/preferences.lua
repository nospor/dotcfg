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
vim.o.colorcolumn = "80"
vim.o.cursorline = true

vim.o.splitright = true
vim.o.splitbelow = true


-- setting b shortcut to switch to buffers
vim.keymap.set('n', '<leader>b', '<cmd>buffers<cr>:buffer ', {desc = 'switch buffer'})

vim.keymap.set('n', '<leader>w', '<cmd>write<cr>', {desc = 'Save file'})
vim.keymap.set('n', '<leader>q', '<cmd>quitall<cr>', {desc = 'Exit vim'})

vim.keymap.set({'n', 'x'}, 'gy', '"+y', {desc = 'Copy to clipboard'})
vim.keymap.set({'n', 'x'}, 'gp', '"+p', {desc = 'Paste clipboard text'})
vim.keymap.set({'i'}, '<leader>x', 'vim.lsp.omnifunc()', {desc = 'Paste clipboard text'})

vim.o.completeopt = "popup,menu,preview,noinsert"
vim.keymap.set('i', '<c-space>', '<c-x><c-o>')

local builtin = require('telescope.builtin')
--vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
--vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
--vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
vim.keymap.set("n", "<leader>s.", builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })


vim.keymap.set('n', '<C-x>', '<Cmd>Neotree focus<CR>')
vim.keymap.set('n', '<C-x><C-x>', '<Cmd>Neotree float git_status<CR>')

