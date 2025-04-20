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
    { "lancewilhelm/horizon-extended.nvim", priority = 1000 },
    --{ "akinsho/horizon.nvim",               version = "*" },
    -- Configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "horizon-extended-neo",
        },
    },
    ]] --
    {
        "HoNamDuong/hybrid.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    --[[
    {
        "rockyzhang24/arctic.nvim",
        dependencies = { "rktjmp/lush.nvim" },
        name = "arctic",
        branch = "main",
        priority = 1000,
        config = function()
            vim.cmd("colorscheme arctic")
        end
    },]] --
    {
        "LazyVim/LazyVim",
        opts = {
            --colorscheme = "arctic",
            colorscheme = "hybrid",
        },
    },
}
