# My neovim configuration

Experimental (neo)vim configuration utilizing coc.nvim and related extension plugins.

## Install

Requirements:

- python-neovim
- npm (npx is used during installation)
- nodejs (see https://github.com/neoclide/coc.nvim)
- yarn (see https://github.com/neoclide/coc.nvim)

*Optional*

- ripgrep
- bat
- rust-analyzer
- flake8 (Python PEP8 linter, configured in coc-settings.json)
- black
- a clipboard tool of your choice (`:h clipboard`)

```bash
cd ~
mv .config/nvim .config/nvim.bak  # backup current neovim configuration if present
git clone https://github.com/necabo/dotcocnvim.git .cocnvim
cd .cocnvim && ./install.sh
```

## Usage

The plugins and key mappings are documented in [a wiki](wiki/index.md) maintainable and useable from within you nvim using `<leader>ww`.
