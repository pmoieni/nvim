local map = vim.keymap.set

map('n', 'x', '"_x')

-- Increment/decrement
map('n', '+', '<C-a>')
map('n', '-', '<C-x>')

-- Delete a word backwards
map('n', 'dw', 'vb"_d')

-- Select all
map('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
map('n', 'te', ':tabedit')
-- Split window
map('n', 'ss', ':split<Return><C-w>w')
map('n', 'sv', ':vsplit<Return><C-w>w')

