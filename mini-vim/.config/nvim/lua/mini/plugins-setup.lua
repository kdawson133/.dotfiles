local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- reloads neovim and installs/updates/removes plugins when file saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end

-- list of plugins to install
return packer.startup(function(use)
	use("wbthomason/packer.nvim") -- plugin manager
    use("nvim-lua/plenary.nvim") -- lua library for neovim
    use("arcticicestudio/nord-vim") -- colorscheme
    use("nvim-lualine/lualine.nvim") -- statusline
    -- treesitter configuration
	use({"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})
    use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for bettter performance
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder itself
	-- auto closing
	use("windwp/nvim-autopairs") -- autoclose parenthases, brackets, quotes, etc...
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags
	-- git integration
	use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side
	-- start page
	use("goolord/alpha-nvim") -- welcome screen
    -- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
