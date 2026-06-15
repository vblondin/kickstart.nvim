vim.pack.add { 'https://github.com/MagicDuck/grug-far.nvim' }
require('grug-far').setup {}

vim.keymap.set('n', '<leader>sR', function()
  require('grug-far').open()
end, { desc = '[S]earch and [R]eplace across files (grug-far)' })

vim.keymap.set('n', '<leader>sW', function()
  require('grug-far').open { prefills = { search = vim.fn.expand '<cword>' } }
end, { desc = '[S]earch and replace [W]ord under cursor (grug-far)' })
