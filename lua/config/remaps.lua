-- leader and localleader
vim.g.mapleader = " "
vim.g.localleader = "\\"

--open remap file
vim.keymap.set("n", "<Leader>vr", ":e " .. vim.fn.stdpath("config") .. "/lua/config/remaps.lua <cr>")

--open opts file
vim.keymap.set("n", "<Leader>vo", ":e " .. vim.fn.stdpath("config") .. "/lua/config/opts.lua <cr>")

--resource init.lua
vim.keymap.set("n", "<Leader><CR>", ":so " .. vim.fn.stdpath("config") .. "/init.lua <CR>")

--explorer binds
vim.keymap.set("n", "<Leader>e", ":NvimTreeToggle<CR>")

--set cwd to buffer
vim.keymap.set("n", "<Leader>cd", ':cd <C-R>=expand("%:p:h")<CR><CR>')

--open file explorer at plugins folder
vim.keymap.set("n", "<Leader>vp", ":e " .. vim.fn.stdpath("config") .. "/lua/plugins/ <CR>")

--lsp code action
vim.keymap.set("n", "<Leader>a", ":lua vim.lsp.buf.code_action()<CR>")
