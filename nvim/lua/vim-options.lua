-- COLORS
vim.cmd('syntax on')
vim.cmd('highlight LineNr ctermfg=white')
vim.g.have_nerd_font = true

-- BASICS
vim.o.number = true
vim.o.relativenumber = true
vim.o.showmode = true
vim.o.autoindent = true
vim.o.expandtab = true
vim.o.tabstop = 8
vim.o.shiftwidth = 8
vim.o.smarttab = true
vim.o.scrolloff = 25
vim.o.clipboard = 'unnamedplus'
vim.o.mouse = ""

vim.o.timeout = true
vim.o.timeoutlen = 800

--KEYMAPS
vim.g.mapleader = " "
vim.g.maplocalleader = " "
local map = vim.api.nvim_set_keymap
map('n', '<C-t>', ':silent !tmux neww tmux-sessioniser<CR>', {noremap = true, silent = true})

vim.o.hlsearch = true

vim.keymap.set('n', '<left>', '<cmd>echo "Use h"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j"<CR>')

vim.api.nvim_create_autocmd('TextYankPost', {
        desc = 'Highlight on yank',
        group = vim.api.nvim_create_augroup('HighlightOnYank', { clear = true }),
        callback = function()
                vim.highlight.on_yank()
        end,
})


