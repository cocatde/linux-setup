require "nvim-tree".setup {
    diagnostics = {
        enable = true,
    },
    git = {
        ignore = false,
    },
    renderer = {
        highlight_opened_files = "2",
        indent_markers = {
            enable = true
        },
        group_empty = true
    }
}

vim.cmd [[highlight NvimTreeIndentMarker guifg=#30323E]]

vim.api.nvim_set_keymap("n", "<leader>n", ":NvimTreeFindFileToggle<CR>", { silent = true, noremap = true })
