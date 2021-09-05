# My neovim configuration

Experimental (neo)vim configuration utilizing coc.nvim and related extension plugins.

## Install

Requirements:
- python-neovim
- npm (npx is used during installation)
- nodejs (see https://github.com/neoclide/coc.nvim)
- yarn (see https://github.com/neoclide/coc.nvim)
- rust-analyzer
- flake8 (Python PEP8 linter, configured in coc-settings.json)
- ripgrep
- ctags
- a clipboard tool of your choice (`:h clipboard`)

```bash
cd ~
mv .config/nvim .config/nvim.bak  # backup current neovim configuration if present
git clone https://github.com/necabo/dotcocnvim.git .cocnvim
cd .cocnvim && ./install.sh
```

## Inlcuded plugins

Have a look at `init.vim`.

## Usage

| Key                          | Description                   |
| ---------------------------- | ----------------------------- |
| <kbd>F1</kbd>                | open :help                    |
| <kbd>F2</kbd>                | open file browser (nerd tree) |
| <kbd>F3</kbd>                | toggle paste mode             |
| <kbd>Ctrl</kbd>-<kbd>p</kbd> | open fuzzy find               |
