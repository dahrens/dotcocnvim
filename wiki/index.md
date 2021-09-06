# Documentation

This is the vimwiki based documentation for this dotncocnvim project.

## Plugins

* [neoclide/coc.nvim](https://github.com/neoclide/coc.nvim) completions, LSP, etc.
* [neoclide/coc-json](https://github.com/neoclide/coc-json) coc-json extension
* [neoclide/coc-pairs](https://github.com/neoclide/coc-pairs) coc-pairs extension
* [neoclide/coc-git](https://github.com/neoclide/coc-git) coc-git extension
* [neoclide/coc-snippets](https://github.com/neoclide/coc-snippets) coc-snippets extension
* [neoclide/coc-highlight](https://github.com/neoclide/coc-highlight) coc-highlight extension
* [neoclide/coc-java](https://github.com/neoclide/coc-java) coc-java extension
* [neoclide/coc-yaml](https://github.com/neoclide/coc-yaml) coc-yaml extension
* [fannheyward/coc-rust-analyzer](https://github.com/fannheyward/coc-rust-analyzer) coc-rust-analyzer extension
* [fannheyward/coc-pyright](https://github.com/fannheyward/coc-pyright) coc-pyright extension
* [weirongxu/coc-explorer](https://github.com/weirongxu/coc-explorer) file browsing
* [junegunn/fzf](https://github.com/junegunn/fzf) fzf binary
* [junegunn/fzf.vim](https://github.com/junegunn/fzf.vim) fzf vim utils
* [NLKNguyen/papercolor-theme](https://github.com/NLKNguyen/papercolor-theme) eye-friendly colorscheme
* [itchyny/lightline.vim](https://github.com/itchyny/lightline.vim) status bar
* [honza/vim-snippets](https://github.com/honza/vim-snippets) snippets for various languages
* [editorconfig/editorconfig-vim](https://github.com/editorconfig/editorconfig-vim) https://editorconfig.org/
* [puremourning/vimspector](https://github.com/puremourning/vimspector) debugger
* [vimwiki/vimwiki](https://github.com/vimwiki/vimwiki) well - a wiki, for vim
* [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive) git integration
* [tpope/vim-commentary](https://github.com/tpope/vim-commentary) commenting
* [tpope/vim-surround](https://github.com/tpope/vim-surround) change surroundings in place
* [tpope/vim-repeat](https://github.com/tpope/vim-repeat) allow repeating plugin mappings
* [tpope/vim-unimpaired](https://github.com/tpope/vim-unimpaired) handy bracket mappings

The above can be generated based on a the `init.vim` Plug lines like that working on visual lines selection:

`:'<,'>s#^.*Plug '\(.\{-}\)'.\{-}" \(\p*\)$#\* \[\1\](https://github.com/\1) \2#`

## Key Mappings

| Key                          | Description                                       |
| ---------------------------- | ------------------------------------------        |
| `Ctrl`-`p`                   | Open fuzzy find                                   |
| `leader`-`/`                 | Remove search highlights                          |
| `Y`                          | Yank from cursor to line end (like `D`)           |
| `F1`                         | Open :help                                        |
| `F2`                         | Open file browser                                 |
| `F3`                         | Toggle paste mode                                 |
| **Debugger**                 |                                                   |
| `F4`                         | Restart debugger                                  |
| `leader`-`F4`                | Reset debugger (when done)                        |
| `F5`                         | Start debugger                                    |
| `F6`                         | Pause debugger                                    |
| `F7`                         | Stop debugger                                     |
| `F8`                         | AddFunctionBreakPoint (TODO: what?)               |
| `leader`-`F8`                | Run to cursor                                     |
| `F9`                         | Toggle breakpoint                                 |
| `leader`-`F9`                | Toggle conditional breakpoint                     |
| `F10`                        | Step over                                         |
| `F11`                        | Step into                                         |
| `F12`                        | Step out                                          |
| **Clipboard**                |                                                   |
| `leader`-`y`                 | Copy to clipboard                                 |
| `leader`-`Y`                 | Copy to clipboard from cursor to line end         |
| `leader`-`p`                 | Paste from clipboard below cursor line            |
| `leader`-`P`                 | Paste from clipboard above cursor line            |
| **CoC**                      |                                                   |
| `Ctrl`-`space`               | Trigger completion (triggers automatically)       |
| `Ctrl`-`h`                   | Goto previous error                               |
| `Ctrl`-`l`                   | Goto next error                                   |
| `gd`                         | Goto definition                                   |
| `gD`                         | Goto declaration                                  |
| `gy`                         | Goto type definition                              |
| `gi`                         | Goto implementation                               |
| `gr`                         | Goto reference                                    |
| `leader`-`a`                 | Apply code action on selection e.g. `<leader>aap` |
| `leader`-`ac`                | Apply code action on current buffer               |
| `leader`-`qf`                | Autofix (not vim quickfix)                        |
|                              |                                                   |


