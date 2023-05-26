vim.g.vimtex_compiler_latexmk = {
    executable = 'latexmk',
    options = {
        '-synctex=1',
        '-interaction=nonstopmode',
        '-file-line-error',
    },
    build_dir = 'build',
}

vim.g.vimtex_view_general_viewer = '/mnt/c/Users/BKyle/AppData/Local/SumatraPDF/SumatraPDF.exe'
vim.g.vimtex_view_general_options = '-reuse-instance -forward-search -inverse-search @tex @line @pdf'

