require('nvim-treesitter.configs').setup {
    ensure_installed = { 'vim', 'vimdoc', 'lua', 'cpp', 'java', 'python', 'markdown', 'html', 'typescript',},
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
}
