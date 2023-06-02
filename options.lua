-- set vim options here (vim.<first_key>.<second_key> = value)

-- return {
--   opt = {
--     -- set to true or false etc.
--     relativenumber = true, -- sets vim.opt.relativenumber
--     number = true, -- sets vim.opt.number
--     spell = false, -- sets vim.opt.spell
--     signcolumn = "auto", -- sets vim.opt.signcolumn to auto
--     wrap = false, -- sets vim.opt.wrap

--     -- powershell for Toggleterm
--     shell = vim.fn.executable "pwsh" == 1 and "pwsh" or "powershell",
--     shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
--     shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
--     shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
--     shellquote = "",
--     shellxquote = "",
--   },
--   g = {
--     mapleader = " ", -- sets vim.g.mapleader
--     autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
--     cmp_enabled = true, -- enable completion at start
--     autopairs_enabled = true, -- enable autopairs at start
--     diagnostics_mode = 3, -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
--     icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
--     ui_notifications_enabled = true, -- disable notifications when toggling UI elements
--   },
-- }

-- If you need more control, you can use the function()...end notation
-- return function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
-- end

return function(local_vim)
  local_vim.opt.relativenumber = true
  local_vim.opt.number = true
  local_vim.opt.spell = false
  local_vim.opt.signcolumn = "auto"
  local_vim.opt.wrap = false

  if vim.fn.has "win32" == 1 then
    local_vim.opt.shell = vim.fn.executable "pwsh" == 1 and "pwsh" or "powershell"
    local_vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
    local_vim.opt.shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait"
    local_vim.opt.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
    local_vim.opt.shellquote = ""
    local_vim.opt.shellxquote = ""
  end

  local_vim.g.mapleader = " "
  local_vim.g.autoformat_enabled = true
  local_vim.g.cmp_enabled = true
  local_vim.g.autopairs_enabled = true
  local_vim.g.diagnostics_mode = 3
  local_vim.g.icons_enabled = true
  local_vim.g.ui_notifications_enabled = true

  return local_vim
end
