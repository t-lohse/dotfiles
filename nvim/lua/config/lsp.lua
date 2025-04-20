return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            setup = {
                rust_analyzer = function()
                    return true
                end,
            },
            keys = {},
        },
    },

    {
        "neovim/nvim-lspconfig",
        opts = {
            setup = {
                hls = function()
                    return true
                end,
            },
        },
    },

    {
        "neovim/nvim-lspconfig",
        ---@class PluginLspOpts
        opts = {
            ---@type lspconfig.options
            servers = {
                -- pyright will be automatically installed with mason and loaded with lspconfig
                pyright = {},
            },
        },
    },

    {
        "neovim/nvim-lspconfig",
        ---@class PluginLspOpts
        opts = {
            ---@type lspconfig.options
            servers = {
                taplo = {
                    keys = {
                        {
                            "K",
                            function()
                                if vim.fn.expand("%:t") == "Cargo.toml" and require("crates").popup_available() then
                                    require("crates").show_popup()
                                else
                                    vim.lsp.buf.hover()
                                end
                            end,
                            desc = "Show Crate Documentation",
                        },
                    },
                },
            },
        },
    },
}
