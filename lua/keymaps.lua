vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

 vim.keymap.set("i", "jk", "<ESC>")
 vim.keymap.set("i", "JK", "<ESC>")

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>vs', ':vsplit<CR>')
vim.keymap.set('n', '<leader>hs', ':split<CR>')
vim.keymap.set('n', '<leader>;', 'q:')

-- Select all
vim.keymap.set("n", "==", "gg<S-v>G")

--markdown preview

-- vim.keymap.set("n", "<leader>p", ":!tmux new-window -n 'Glow' alacritty -e glow %<CR>")
-- vim.keymap.set("n", "<leader>p", ":!tmux new-session -d 'alacritty -e glow %'; tmux attach-session -d<CR>")
-- vim.keymap.set("n", "<leader>p", ":!nohup alacritty -e glow % &<CR>")

-- vim.keymap.set("n", "<leader>p", ":ToggleTerm direction=horizontal cmd='glow %'<CR>")

vim.keymap.set("n", "<leader>p", ":ToggleTerm direction=horizontal cmd='glow ' . expand('%')<CR>")


-- Resize with arrows
vim.keymap.set("n", "<C-S-Down>", ":resize +2<CR>", { desc = "Resize Horizontal Split Down" })
vim.keymap.set("n", "<C-S-Up>", ":resize -2<CR>", { desc = "Resize Horizontal Split Up" })
vim.keymap.set("n", "<A-h>", ":vertical resize -2<CR>", { desc = "Resize Vertical Split Down" })
vim.keymap.set("n", "<A-l>", ":vertical resize +2<CR>", { desc = "Resize Vertical Split Up" })



-- Obsiidian

vim.keymap.set("n", "<leader>oc", "<cmd>lua require('obsidian').util.toggle_checkbox()<CR>", { desc = "Obsidian Check Checkbox" })
vim.keymap.set("n", "<leader>ot", "<cmd>ObsidianTemplate<CR>", { desc = "Insert Obsidian Template" })
vim.keymap.set("n", "<leader>oo", "<cmd>ObsidianOpen<CR>", { desc = "Open in Obsidian App" })
vim.keymap.set("n", "<leader>ob", "<cmd>ObsidianBacklinks<CR>", { desc = "Show ObsidianBacklinks" })
vim.keymap.set("n", "<leader>ol", "<cmd>ObsidianLinks<CR>", { desc = "Show ObsidianLinks" })
vim.keymap.set("n", "<leader>on", "<cmd>ObsidianNew<CR>", { desc = "Create New Note" })
vim.keymap.set("n", "<leader>os", "<cmd>ObsidianSearch<CR>", { desc = "Search Obsidian" })
vim.keymap.set("n", "<leader>oq", "<cmd>ObsidianQuickSwitch<CR>", { desc = "Quick Switch" })
