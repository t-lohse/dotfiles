

--[[
require('onedark').setup {
    style = 'warmer',
    transparent = false,
    highlights = {
        NvimTreeVertSplit = { fg = '$bg3', bg = '$bg0' },
    }
}
require('onedark').load()
vim.g.tlohse_colorscheme = "tokyonigh"


require("github-theme").setup({
  theme_style = "dark_default",
  -- other config
})

]]--
require('onedark').setup {
    style = 'warmer',
    transparent = false,
}
require('onedark').load()

function ColorMyPencils()
    vim.g.gruvbox_contrast_dark = 'hard'
    vim.g.gruvbox_invert_selection = '0'
    vim.opt.background = "dark"


    local hl = function(thing, opts)
        vim.api.nvim_set_hl(0, thing, opts)
    end

    hl("SignColumn", {
        bg = "none",
    })

    hl("ColorColumn", {
        ctermbg = 0,
        bg = "#555555",
    })

    hl("CursorLineNR", {
        bg = "None"
    })

    hl("LineNr", {
        fg = "#5eacd3"
    })

    hl("netrwDir", {
        fg = "#5eacd3"
    })

    hl("winhighlight", {
        ctermbg = 0,
        bg = "#000000",
    })



end
ColorMyPencils()


