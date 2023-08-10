local telescope_exists, telescope_builtin = pcall(require, "telescope.builtin")
local treesitter_exists, treesitter_configs = pcall(require, "nvim-treesitter.configs")

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.swapfile = false
vim.opt.backup = false

if telescope_exists and treesitter_exists then
  -- ignore this start
  vim.g.mapleader = " "
  vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files, {})
  vim.keymap.set('n', '<leader>fg', telescope_builtin.live_grep, {})
  vim.keymap.set('n', '<leader>fb', telescope_builtin.buffers, {})
  vim.keymap.set('n', '<leader>fh', telescope_builtin.help_tags, {})
  vim.keymap.set("v", "<C-c>", '"*y :let @+=@*<CR>', { silent=true })
  vim.keymap.set("n", "<C-v>", '"+p', { silent=true})
  vim.keymap.set("n", "<C-h>", '<c-w>h', {})
  vim.keymap.set("n", "<C-j>", '<c-w>j', {})
  vim.keymap.set("n", "<C-k>", '<c-w>k', {})
  vim.keymap.set("n", "<C-l>", '<c-w>l', {})
  vim.keymap.set("n", "<C-n>", vim.cmd.NERDTreeToggle)
  -- ignore this end

  treesitter_configs.setup {
    --ensure_installed = { "markdown", "javascript", "typescript", "ruby", "bash", "c", "lua", "vim", "vimdoc", "query" },
    ensure_installed = { "javascript" },
    sync_install = false,
    auto_install = true,
    highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
    },
  }
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use('preservim/nerdtree')

  use {
    "folke/which-key.nvim",
    event = "VimEnter",
  }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- just color scheme remove it if you want
  use 'folke/tokyonight.nvim'
  vim.cmd("colorscheme tokyonight")
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

  use('tpope/vim-commentary')

  -- Debugging
  use {
    "mfussenegger/nvim-dap",
    opt = true,
    event = "BufReadPre",
    module = { "dap" },
    wants = { 
      "nvim-dap-virtual-text", 
      "nvim-dap-ui", 
      "nvim-dap-vscode-js",
      "telescope.nvim",
      "telescope-dap.nvim",
      "which-key.nvim",
    },
    requires = {
      "theHamsta/nvim-dap-virtual-text",
      "rcarriga/nvim-dap-ui",
      "mxsdev/nvim-dap-vscode-js",
      "nvim-telescope/telescope-dap.nvim",
    },
    config = function()
        require("dapconfig").setup()
    end,
  }
end)


