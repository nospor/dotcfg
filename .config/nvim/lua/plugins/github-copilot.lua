return {
    {
        "github/copilot.vim",
        config = function()
            vim.g.copilot_idle_delay = 600 -- add a delay before suggestions appear

            --vim.g.copilot_no_tab_map = true -- Disable default tab mapping
            -- and set Shift-Tab to accept suggestions
            --vim.api.nvim_set_keymap("i", "<S-Tab>", 'copilot#Accept("<CR>")', { expr = true, silent = true })
        end,
    }, -- or zbirenbaum/copilot.lua
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        dependencies = {
            { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
        },
        build = "make tiktoken",                            -- Only on MacOS or Linux
        opts = {
            -- See Configuration section for options
        },
        keys = {
            { "<leader>cc", "<cmd>CopilotChatToggle<cr>",   mode = "n", desc = "Copilot Chat" },
            { "<leader>ce", "<cmd>CopilotChatExplain<cr>",  mode = "v", desc = "Copilot Chat Explain Code" },
            { "<leader>cr", "<cmd>CopilotChatReview<cr>",   mode = "v", desc = "Copilot Chat Review Code for selection" },
            { "<leader>cf", "<cmd>CopilotChatFix<cr>",      mode = "v", desc = "Copilot Chat Fix Code Issues" },
            { "<leader>co", "<cmd>CopilotChatOptimize<cr>", mode = "v", desc = "Copilot Chat Optimize Code" },
            { "<leader>cd", "<cmd>CopilotChatDocs<cr>",     mode = "v", desc = "Copilot Chat Generate Docs" },
            { "<leader>ct", "<cmd>CopilotChatTests<cr>",    mode = "v", desc = "Copilot Chat Generate Tests" },
            { "<leader>cm", "<cmd>CopilotChatCommit<cr>",   mode = "n", desc = "Copilot Chat Generate Commit Message" },
            { "<leader>cm", "<cmd>CopilotChatCommit<cr>",   mode = "v", desc = "Copilot Chat Generate Commit for selectione" },
        },
        -- See Commands section for default commands if you want to lazy load on them
    },
}
