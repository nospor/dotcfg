-- vim.opt.rtp:append { "/usr/bin/fzf" }

require 'user.preferences'

-- theme
require("nightfox").setup {
    options = { transparent = true }
}
vim.cmd 'colo nightfox'

-- MarkdownPreview to starting preview after opening .md file
vim.g.mkdp_auto_start = 1
