
require"nvim-treesitter.configs".setup{
    ensure_installed = { "c", "python", "vim", "json", "html" },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,

        disable = { "tex" },

        additional_vim_regex_highlighting = false,
    },
}

