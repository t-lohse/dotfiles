return {
    --[[
    {
        "AlexvZyl/nordic.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("nordic").load()
        end,
    },
    ]]
    --
    {
        "ferdinandrau/lavish.nvim",
        priority = 1000,
        config = function()
            require("lavish").apply()
        end,
    },
    -- Configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "lavish-dark",
        },
    },
}
