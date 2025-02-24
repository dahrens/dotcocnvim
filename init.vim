call plug#begin('~/.cocnvim/plugged')

    " tpope is awesome!
    Plug 'tpope/vim-fugitive'                                                       " git integration
    Plug 'tpope/vim-commentary'                                                     " commenting
    Plug 'tpope/vim-surround'                                                       " change surroundings in place
    Plug 'tpope/vim-repeat'                                                         " allow repeating plugin mappings
    Plug 'tpope/vim-unimpaired'                                                     " handy bracket mappings

    " for obsidian.nvim
    Plug 'hrsh7th/nvim-cmp'

    " fzf
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }               " fzf binary
    Plug 'junegunn/fzf.vim'                                                         " fzf vim utils

    " Obisidian
    Plug 'epwalsh/obsidian.nvim'

    " Treesitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}                                 " completions, LSP, etc.

    " useful vim script based plugins
    Plug 'antoinemadec/coc-fzf'                                                     " coc lists in fzf
    Plug 'itchyny/lightline.vim'                                                    " status bar
    Plug 'honza/vim-snippets'                                                       " snippets for various languages
    Plug 'editorconfig/editorconfig-vim'                                            " https://editorconfig.org/
    Plug 'puremourning/vimspector'                                                  " debugger
    Plug 'z0mbix/vim-shfmt', { 'for': 'sh' }                                        " bash auto formatting

    Plug 'arcticicestudio/nord-vim'                                                 " eye-friendly colorscheme
    Plug 'jparise/vim-graphql'

call plug#end()

let g:coc_global_extensions = [
    \'coc-pairs',
    \'coc-git',
    \'coc-snippets',
    \'coc-highlight',
    \'coc-json',
    \'coc-yaml',
    \'coc-markdownlint',
    \'coc-java',
    \'coc-rust-analyzer',
    \'coc-pyright',
    \'coc-sh',
    \'coc-prettier',
\]

let mapleader = "\<Space>"

set hidden
set title
set modeline
set modelines=5
set cursorline
set encoding=utf-8
set number
set relativenumber
set expandtab
set tabstop=4
set shiftwidth=4
set inccommand=nosplit
set termguicolors

" search
set ignorecase
set smartcase
set incsearch
set hlsearch
" remove highlighting of previous search results
nnoremap <silent> <Leader>/ :nohlsearch<CR>

nnoremap Y y$
" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" highlight trailing whitespace
:highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
:match ExtraWhitespace /\s\+$/

nnoremap <silent> <leader>sv :source $MYVIMRC<CR>

set pastetoggle=<F3>

" suppress the annoying 'match x of y', 'The only match' and 'Pattern not
" found' messages
set shortmess+=c

" set colorscheme
silent! colorscheme nord

" --------------------------------------------------------------------------------
" fzf                                                                            |
" --------------------------------------------------------------------------------
let g:fzf_layout = {'window': {'width': 0.90, 'height': 0.90}}
let g:fzf_preview_window = 'right:70%'
let g:coc_fzf_preview = ''
let g:coc_fzf_opts = []

" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* RgAll call fzf#vim#grep('rg --column --line-number --no-heading --ignore-case --no-ignore --hidden --follow --glob "!*/.git/*" --color "always" '.shellescape(<q-args>), 1, fzf#vim#with_preview(), <bang>0)

map <silent><expr> <leader>ff FugitiveHead() != '' ? ':GFiles --cached --others --exclude-standard<CR>' : ':Files<CR>'
map <silent> <leader>fa :Files<CR>
map <silent> <leader>frg :Rg<CR>
map <silent> <leader>fra :RgAll<CR>
map <silent> <leader>fss :Ag<CR>
map <silent> <leader>fh :Helptags<CR>
map <silent> <leader>fgh :Commits<CR>
map <silent> <leader>fgb :BCommits<CR>
map <silent> <leader>fm :Marks<CR>
map <silent> <leader>fc :Commands<CR>
map <silent> <leader>fo :CocFzfList outline<CR>
map <silent> <leader>fsn :CocFzfList snippets<CR>

" --------------------------------------------------------------------------------
" coc.nvim                                                                       |
" --------------------------------------------------------------------------------
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" always show signcolumns
set signcolumn=yes
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" When the <Enter> key is pressed while the popup menu is visible, it only
" hides the menu. Use this mapping to close the menu.
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Close preview window when completion is done
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> <c-h> <Plug>(coc-diagnostic-prev)
nmap <silent> <c-l> <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD <Plug>(coc-declaration)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <silent><leader>a  <Plug>(coc-codeaction-selected)
nmap <silent><leader>a  <Plug>(coc-codeaction-selected)w

" Remap keys for applying codeAction to the current buffer.
nmap <silent><leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <silent><leader>qf  <Plug>(coc-fix-current)

nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Use gh to show documentation in preview window
nmap <silent> gh :call CocAction('doHover')<CR>

" Allow scrolling in preview window
nnoremap <expr><C-d> coc#float#has_float() ? coc#float#scroll(1) : "<C-d>"
nnoremap <expr><C-u> coc#float#has_float() ? coc#float#scroll(0) : "<C-u>"
nnoremap <silent><expr><Esc> coc#float#has_float() ? ":call coc#float#close_all()<CR>" : "<Esc>"

" Highlight symbol under cursor on CursorHold
highlight CocHighlightText cterm=bold gui=bold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

let g:python3_host_prog='/usr/bin/python3'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" --------------------------------------------------------------------------------
" lightline.vim
" --------------------------------------------------------------------------------
" Don't show modes as lightline also does so
set noshowmode

if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
  \   'colorscheme': 'nord',
  \   'active': {
  \     'left': [ [ 'mode', 'paste' ],
  \               ['cocstatus', 'gitbranch', 'readonly', 'filename', 'modified' ] ],
  \     'right': [ [ 'lineinfo' ],
  \                [ 'percent' ],
  \                [ 'fileformat', 'fileencoding', 'filetype' ] ],
  \   },
  \   'component_function': {
  \     'gitbranch': 'LightLineFugitive',
  \     'fileformat': 'LightLineFileformat',
  \     'filetype': 'LightLineFiletype',
  \     'cocstatus': 'coc#status',
  \   },
  \ }

function! LightLineFugitive()
  let _ = FugitiveHead()
  return strlen(_) ? "\uf126 "._ : ""
endfunction

function! LightLineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightLineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

" --------------------------------------------------------------------------------
" netrw
" --------------------------------------------------------------------------------
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20
let g:NetrwIsOpen=0

function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i 
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction

" Add your own mapping. For example:
noremap <silent> <F2> :call ToggleNetrw()<CR>

" --------------------------------------------------------------------------------
" editorconfig-vim
" --------------------------------------------------------------------------------
let g:EditorConfig_max_line_indicator = "none"

" debugger adapters
let g:vimspector_install_gadgets = [ 'debugpy' ]
" debugger keybindings
nmap <leader><F4> :<c-u>call vimspector#Reset()<CR>
nmap <F4>         <Plug>VimspectorRestart
nmap <F5>         <Plug>VimspectorContinue
nmap <leader><F5> <Plug>VimspectorLaunch
nmap <F6>         <Plug>VimspectorPause
nmap <F7>         <Plug>VimspectorStop
nmap <F8>         <Plug>VimspectorAddFunctionBreakpoint
nmap <leader><F8> <Plug>VimspectorRunToCursor
nmap <F9>         <Plug>VimspectorToggleBreakpoint
nmap <leader><F9> <Plug>VimspectorToggleConditionalBreakpoint
nmap <F10>        <Plug>VimspectorStepOver
nmap <F11>        <Plug>VimspectorStepInto
nmap <F12>        <Plug>VimspectorStepOut

" obsidian
lua <<EOF
require("obsidian").setup({
  dir = "~/Documents/Cerebra",
  completion = {
    nvim_cmp = true, -- if using nvim-cmp, otherwise set to false
  },
  note_id_func = function(title)
    -- Create note IDs in a Zettelkasten format with a timestamp and a prefix.
    local prefix = ""
    if title ~= nil then
      -- If title is given, transform it into valid file name.
      prefix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
    else
      -- If title is nil, just add 4 random uppercase letters to the prefix.
      for _ = 1, 4 do
        prefix = prefix .. string.char(math.random(65, 90))
      end
    end
    return prefix .. "-" .. tostring(os.time())
  end
})
EOF

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "help", "markdown", "markdown_inline" },
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = { "markdown" },
  },
}
EOF

" shfmt
if executable('shfmt')
  let &l:formatprg='shfmt -i ' . &l:shiftwidth . ' -ln posix -sr -ci -s'
endif
let g:shfmt_extra_args = '-i 2'
let g:shfmt_fmt_on_save = 1
