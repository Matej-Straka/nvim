vim.keymap.set("n", "<leader>gs", vim.cmd.Git);
vim.keymap.set("n", "<leader>pp", "<cmd>Git push<CR>");
vim.keymap.set("n", "<leader>ff", "<cmd>Git pull<CR>");
-- Map <S-f> for git fetch
vim.keymap.set('n', '<S-f>', ':Git fetch<CR>', { noremap = true, silent = true, desc = 'Git fetch with Fugitive' })

-- Map <S-r> for git rebase (e.g., rebase current branch onto upstream)
vim.keymap.set('n', '<S-r>', ':Git rebase<CR>', { noremap = true, silent = true, desc = 'Git rebase with Fugitive' })

