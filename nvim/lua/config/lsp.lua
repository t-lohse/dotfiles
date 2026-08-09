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

    {
        "salkin-mada/openscad.nvim",
        config = function()
            vim.g.openscad_load_snippets = true
            require("openscad")
        end,
        dependencies = { "L3MON4D3/LuaSnip", "junegunn/fzf.vim" },
    },
}
