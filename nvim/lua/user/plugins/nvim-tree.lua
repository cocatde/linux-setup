local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

nvim_tree.setup {
  diagnostics = {
    enable = true,
  },
  git = {
    ignore = false,
  },
  renderer = {
    highlight_opened_files = "name",
    indent_markers = {
      enable = true
    },
    group_empty = true
  }
}

vim.cmd [[highlight NvimTreeIndentMarker guifg=#30323E]]

vim.api.nvim_set_keymap("n", "<leader>n", ":NvimTreeFindFileToggle<CR>", { silent = true, noremap = true })
