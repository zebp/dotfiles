local palettes = {
  github_dark = {
    bg0 = '#FF00FF',
    bg1 = '#FF00FF',
    bg2 = '#FF00FF',
    bg3 = '#FF00FF',
    bg4 = '#FF00FF'
  }
}

local specs = {}

local groups = {
  all = {},
  github_dark = {
    LineNr         = { bg = 'none', fg = 'palette.fg.subtle' },
    ['@variable']  = { fg = '#c9d1d9' },
    ['@namespace'] = { fg = '#ffa657' },
    ['@parameter'] = { fg = '#ffa657' }
  },
}

require('github-theme').setup({
  options = {
    dim_inactive = true,
    terminal_colors = true,
    transparent = false,
  },
  palettes = palettes,
  groups = groups,
  specs = specs,
})

vim.cmd('colorscheme github_dark')
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
