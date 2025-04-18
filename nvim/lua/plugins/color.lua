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
    {
        "ferdinandrau/lavish.nvim",
        priority = 1000,
        config = function()
            require("lavish").apply()
        end,
    },
    ]] --
    { "lancewilhelm/horizon-extended.nvim", priority = 1000 },
    -- Configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "horizon-extended-neo",
        },
    },
}
