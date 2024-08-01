return {
        {
                "nvim-telescope/telescope.nvim",
                tag = "0.1.5",
                dependencies = { "nvim-lua/plenary.nvim" },
                config = function()
                        local builtin = require("telescope.builtin")
                        vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp'})
                        vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = '[S]earch [F]iles' })
                        vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = '[S]earch [G]rep' })
                        vim.keymap.set("n", "<leader>sr", builtin.oldfiles, { desc = '[S]earch [R]ecent' })
                end,
        },
        {
                "nvim-telescope/telescope-ui-select.nvim",
                config = function()
                        require("telescope").setup({
                                pickers = {
                                        find_files = {
                                                hidden = true
                                        }
                                },
                                extensions = {
                                        ["ui-select"] = {
                                                require("telescope.themes").get_dropdown({}),
                                        },
                                },
                        })
                        require("telescope").load_extension("ui-select")
                end,
        },
}
