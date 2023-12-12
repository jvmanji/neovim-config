-- Tmux --
vim.keymap.set('n', '<M-Left>' , ':TmuxNavigateLeft<cr>')
vim.keymap.set('n', '<M-Down>' , ':TmuxNavigateDown<cr>')
vim.keymap.set('n', '<M-Up>'   , ':TmuxNavigateUp<cr>')
vim.keymap.set('n', '<M-Right>', ':TmuxNavigateRight<cr>')

vim.keymap.set('i', '<M-Left>' , '<esc>:TmuxNavigateLeft<cr>i')
vim.keymap.set('i', '<M-Down>' , '<esc>:TmuxNavigateDown<cr>i')
vim.keymap.set('i', '<M-Up>'   , '<esc>:TmuxNavigateUp<cr>i')
vim.keymap.set('i', '<M-Right>', '<esc>:TmuxNavigateRight<cr>i')
