return {
    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-treesitter/nvim-treesitter",
            "marilari88/neotest-vitest",
            "nvim-neotest/neotest-plenary",
            "nvim-neotest/nvim-nio",
            "nvim-neotest/neotest-go",
        },
        config = function()
            local neotest = require("neotest")
            neotest.setup({
                adapters = {
                    require("neotest-go")({
                        recursive_run = true
                    }),
                    require("neotest-vitest"),
                    require("neotest-plenary").setup({
                        -- this is my standard location for minimal vim rc
                        -- in all my projects
                        min_init = "./scripts/tests/minimal.vim",
                    }),
                }
            })

            vim.keymap.set("n", "<leader>tc", function()
                neotest.summary.toggle()
            end)
        end,
    },
}
