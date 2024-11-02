-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
-- vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Moving lines up and down in Normal mode
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { silent = true })
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { silent = true })

-- Moving lines up and down in Insert mode
vim.keymap.set('i', '<A-j>', '<Esc>:m .+1<CR>==gi', { silent = true })
vim.keymap.set('i', '<A-k>', '<Esc>:m .-2<CR>==gi', { silent = true })

-- Moving lines up and down in Visual mode
-- For visual mode, 'x' represents visual mode including visual line and visual block
vim.keymap.set('x', '<A-j>', ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set('x', '<A-k>', ":m '<-2<CR>gv=gv", { silent = true })

-- Flutter-specific keymaps
vim.keymap.set('n', '<leader>fa', ':FlutterRun<CR>', { desc = 'Flutter Run' })
vim.keymap.set('n', '<leader>fq', ':FlutterQuit<CR>', { desc = 'Flutter Quit' })
vim.keymap.set('n', '<leader>fr', ':FlutterHotReload<CR>', { desc = 'Flutter Hot Reload' })
vim.keymap.set('n', '<leader>fR', ':FlutterRestart<CR>', { desc = 'Flutter Hot Restart' })
vim.keymap.set('n', '<leader>fd', ':FlutterDevices<CR>', { desc = 'Flutter Devices' })
vim.keymap.set('n', '<leader>fe', ':FlutterEmulators<CR>', { desc = 'Flutter Emulators' })
vim.keymap.set('n', '<leader>fo', ':FlutterOutlineToggle<CR>', { desc = 'Flutter Outline Toggle' })
vim.keymap.set('n', '<leader>fs', ':FlutterDevTools<CR>', { desc = 'Flutter Dev Tools' })
