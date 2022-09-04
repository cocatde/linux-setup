local options = {
  mouse = "",
  spell = true,
  title = true,
  expandtab = true,
  smarttab = true,
  shiftwidth = 2,
  tabstop = 2,
  hlsearch = true,
  incsearch = true,
  smartcase = true,
  wildmode = "longest:full,full",
  splitbelow = true,
  splitright = true,
  wrap = false,
  fileencoding = "utf-8",
  termguicolors = true,
  relativenumber = true,
  nu = true,
  cursorline = true,
  ignorecase = true,
  hidden = true,
  swapfile = false,
  backup = false,
  undodir = os.getenv("HOME") .. "/.vim/undodir",
  undofile = true,
  scrolloff = 8,
  sidescrolloff = 8,
  signcolumn = "yes",
  textwidth = 120,
  colorcolumn = "+1",
  clipboard = "unnamedplus" -- Use Linux system clipboard,
}

vim.opt.shortmess:append "c"
vim.opt_global.shortmess:remove("F")

for k, v in pairs(options) do
  vim.opt[k] = v
end
