return {
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup({
                signs = {
                    add = { text = "│" },
                    change = { text = "│" },
                    delete = { text = "_" },
                    topdelete = { text = "‾" },
                    changedelete = { text = "~" },
                    untracked = { text = "┆" },
                },
                on_attach = function(bufnr)
                    local gs = package.loaded.gitsigns
                    local function map(mode, l, r, opts)
                        opts = opts or {}
                        opts.buffer = bufnr
                        vim.keymap.set(mode, l, r, opts)
                    end

                    -- Navigation
                    map('n', ']h', function()
                        if vim.wo.diff then return ']h' end
                        gs.next_hunk()
                    end, { expr = true })
                    map('n', '[h', function()
                        if vim.wo.diff then return '[h' end
                        gs.prev_hunk()
                    end, { expr = true })
                end
            })
        end,
        opts = {
            current_line_blame = true, -- ← enables inline blame
            current_line_blame_opts = {
                delay = 500,
                virt_text_pos = "eol", -- or 'overlay' or 'right_align'
            },
            current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
        },
    }
}
