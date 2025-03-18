require('nvim-treesitter.configs').setup {
    ensure_installed = { 'vim', 'vimdoc', 'lua', 'cpp', 'java', 'python', 'markdown', 'html', 'typescript', 'gdscript', 'godot_resource', 'gdshader', 'php',},
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
}
