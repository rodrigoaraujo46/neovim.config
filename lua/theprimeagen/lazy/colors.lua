function ColorMyPencils(color)
    vim.cmd.colorscheme(color)
end

return {
    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
        config = function()
            require("gruvbox").setup({
                terminal_colors = true, -- add neovim terminal colors
                undercurl = true,
                underline = false,
                bold = true,
                italic = {
                    strings = false,
                    emphasis = false,
                    comments = false,
                    operators = false,
                    folds = false,
                },
                strikethrough = true,
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                invert_intend_guides = false,
                inverse = true, -- invert background for search, diffs, statuslines and errors
                contrast = "",  -- can be "hard", "soft" or empty string
                palette_overrides = {},
                overrides = {},
                dim_inactive = false,
                transparent_mode = true,
            })
            --ColorMyPencils("gruvbox")
        end,
    },
    {
        lazy = false,
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({
                style = "night", --The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
                transparent = true, --Enable this to disable setting the background color
                on_colors = function(colors)
                    colors.bg_statusline = "NONE"
                end
            })
            ColorMyPencils("tokyonight")
        end
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                disable_background = true,
                styles = {
                    italic = false,
                },
            })
            --ColorMyPencils("rose-pine")
        end
    },
}
