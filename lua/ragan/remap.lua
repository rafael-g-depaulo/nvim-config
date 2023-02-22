vim.g.mapleader = ","
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- vertical movement. remap page up/down to also center view
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true })

-- move selected text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep search result centered on screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- yank to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

-- map <C-c> to esc because there's sometimes a difference in visual-insert mode
vim.keymap.set("i", "<C-c>", "<Esc>")

-- splits
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("", "<C-Left>", ":vertical resize +3<CR>")
vim.keymap.set("", "<C-Right>", ":vertical resize -3<CR>")
vim.keymap.set("", "<C-Up>", ":resize +3<CR>")
vim.keymap.set("", "<C-Down>", ":resize -3<CR>")

vim.keymap.set("", "<leader>th", "<C-w>t<Cw>H")
vim.keymap.set("", "<leader>tk", "<C-w>t<Cw>K")

-- doesn't work and lags really bad, but maybe i can fix it in the future
-- vim.cmd([[
--   function! WSLCopy()
--     " Save the unnamed register and its type.
--     let last_yank = getreg()
--     let last_yank_type = getregtype()
-- 
--     " Copy the selection.
--     execute "normal! y"
--     " Add carriage returns for Windows, and send the text to the clipboard.
--     let windows_text = getreg() " ->substitute("\n", "\r\n", "g")
--     silent execute system("clip.exe", windows_text)
-- 
--     " Restore the unnamed register.
--     call setreg('"', last_yank, last_yank_type)
--   endfunction
-- ]])

-- Use <CMD> instead of : to avoid executing on a visual range.
vim.keymap.set("v", "<leader>y", "<CMD>call WSLCopy()<CR>")
