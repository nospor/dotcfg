--vim.opt.rtp:append { "~/fzf" }

require 'user.preferences'
require 'plugins.lsp'

-- theme
require("nightfox").setup {
    options = { transparent = false }
}
require("cuddlefish").setup()
vim.cmd 'colo carbonfox'
--vim.cmd 'colo terafox'
--vim.cmd 'colo nordfox'
--vim.cmd 'colo duskfox'
--vim.cmd 'colo cuddlefish'

-- MarkdownPreview to starting preview after opening .md file
vim.g.mkdp_auto_start = 1

require("neo-tree").setup({
    filesystem = {
        follow_current_file = {
            enabled = true
        }
    }
})
