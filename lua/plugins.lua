
-- bootstrap packer via recipe from packer readme
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
-- to make use of nvim-tree you have to install patched fonts.
-- otherwise, you will get a bunch of unicode instead of folder icons, etc.
-- Go to https://github.com/ryanoasis/nerd-fonts and clone the repo
-- Then to a ./install.sh in it.
-- Finally configure your shell to use a patched font. 


  use {
	  "kyazdani42/nvim-tree.lua",
	  requires = "kyazdani42/nvim-web-devicons",
	  wants = "nvim-web-devicons",
	  config = function()
		  require("nvim-web-devicons").setup()
		  require("nvim-tree").setup {
			hijack_cursor = true,
			view = {
				width = 40
			}
		  }
		end

     }
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'
end)
