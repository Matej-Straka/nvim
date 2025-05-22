vim.opt.nu = true
vim.opt.rnu = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.scrolloff = 8

vim.opt.undodir = os.getenv("HOME")
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "


-- Define a custom highlight group for yanking with light blue background
vim.api.nvim_set_hl(0, "YankHighlight", { bg = "#ADD8E6", fg = "#000000" }) -- Light blue background, black text

-- Set up autocommand to highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({ higroup = "YankHighlight", timeout = 200 })
  end,
})
