local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end
local action_status_ok, actions = pcall(require, "telescope.actions")
if not action_status_ok then
  return
end

telescope.setup{
  defaults = {
    -- Default key mapping: https://github.com/nvim-telescope/telescope.nvim#default-mappings
    mappings = {
      i = {
        ["<C-n>"] = actions.cycle_history_next,
        ["<C-p>"] = actions.cycle_history_prev,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      }
    }
  },
  pickers = { },
  extensions = { }
}

keymap("n", "<leader>f", [[<cmd>Telescope find_files hidden=true<CR>]], opts)
keymap("n", "<leader>r", [[<cmd>Telescope live_grep<CR>]], opts)
keymap("n", "<leader>p", [[<cmd>Telescope projects<CR>]], opts)
keymap("n", "<leader>b", [[<cmd>lua require("telescope.builtin").buffers()<CR>]], opts)
