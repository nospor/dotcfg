return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = 'master',
        lazy = false,
        build = ":TSUpdate",
        config = function()
            local config = require("nvim-treesitter.configs")
            vim.opt.foldmethod = "expr"
            vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
            vim.opt.foldlevel = 99
            vim.opt.foldenable = true
            --
            -- shortcut for toggling folds: za
            -- shortcut for opening all folds: zR
            -- shortcut for closing all folds: zM
            -- shortcut for opening current fold: zo
            -- shortcut for closing current fold: zc


            config.setup({
                ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "javascript", "php", "twig", "html", "dockerfile", "css", "json", "yaml" },
                sync_install = false,
                auto_install = true,
                highlight = { enable = true, additional_vim_regex_highlighting = false, },
                indent = { enable = true },
                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true,
                        include_surrounding_whitespace = true,
                        keymaps = {
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["ac"] = "@class.outer",
                            ["ic"] = "@class.inner",
                            ["as"] = {
                                query = "@scope",
                                query_group = "locals"
                            }
                        }
                    }
                }
            })
        end
    },
    { "nvim-treesitter/nvim-treesitter-textobjects" }
}
