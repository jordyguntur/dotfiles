require('impatient') -- This needs to be first
require('packer_commands')
require('config')
require('settings')
require('colorscheme')
require('keymappings')
require('autocmds')
require('functions')
require('lsp.config')

-- manual vim-plug
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug('prettier/vim-prettier', {
 ['do'] = function()
  vim.cmd('yarn install --frozen-lockfile --production')
 end
})

vim.call('plug#end')
