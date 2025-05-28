vim.g.mapleader = ' '
vim.g.localleader = '\\'

--open remap file
vim.keymap.set('n','<Leader>vr',':e ~/.config/nvim/lua/config/remaps.lua <cr>')

--open opts file
vim.keymap.set('n','<Leader>vo',':e ~/.config/nvim/lua/config/opts.lua <cr>')

--resource init.lua
vim.keymap.set('n','<Leader><CR>',':so ~/.config/nvim/init.lua <CR>')

--explorer binds
vim.keymap.set('n','<Leader>e',':e ./<CR>')

--set cwd to buffer
vim.keymap.set('n','<Leader>cd',':cd <C-R>=expand("%:p:h")<CR><CR>')


--open file explorer at plugins folder
vim.keymap.set('n','<Leader>vp',':e ~/.config/nvim/lua/plugins/ <CR>')
