# Plugins

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
* [antoinemadec/coc-fzf](https://github.com/antoinemadec/coc-fzf) coc lists in fzf
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

