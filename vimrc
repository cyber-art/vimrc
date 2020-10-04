set nocompatible              " required
filetype off                  " required

" vim Vundle plugin installiations
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" vim Vundle Plugin for plugin configurations
Plugin 'VundleVim/Vundle.vim'
" vim folding plugin to prevent unwanted folding actions
Plugin 'tmhedberg/SimpylFold'
" vim python indentation plugin
Plugin 'vim-scripts/indentpython.vim'
" vim syntax checking plugin
Plugin 'vim-syntastic/syntastic'
" vim python PEP8 checking plugin
Plugin 'nvie/vim-flake8'
" vim file tree extension
Plugin 'preservim/nerdtree'
" vim commenter plugin
Plugin 'preservim/nerdcommenter'
" vim powerline plugin
Plugin 'vim-airline/vim-airline'
" vim-airline theme plugin
Plugin 'vim-airline/vim-airline-themes'
" vim python autocompletion plugin
Plugin 'davidhalter/jedi-vim'
" vim cpp autocompletion plugins
Plugin 'Valloric/YouCompleteMe'
" vim hierarchy plugin
Plugin 'majutsushi/tagbar'
" vim multiple cursor plugin
Plugin 'terryma/vim-multiple-cursors'
" vim built-in terminal plugin
Plugin 'tc50cal/vim-terminal'
" vim auto-pairs plugin
Plugin 'jiangmiao/auto-pairs'
" vim indentation lines plugin
Plugin 'Yggdroot/indentLine'
" vim Google autoformatting plugins
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'
" vim JS syntax plugin
Plugin 'pangloss/vim-javascript'
" vim JSX syntax plugin
Plugin 'mxw/vim-jsx'
" vim rust-lang syntax plugin
Plugin 'rust-lang/rust.vim'

call vundle#end()            " required
filetype plugin indent on    " required

"colorscheme and basic configurations
colorscheme monokai256
let python_highlight_all=1
syntax on
set encoding=utf-8
set shiftwidth=4
set tabstop=4

" displaying the line numbers
set nu

" system clipboard (for using clipboard of OS)
set clipboard=unnamed

" split configurations
set splitbelow
set splitright

" split navigation (moving between splits) configuration
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" folding configurations
set foldmethod=indent
set foldlevel=99
" enabling folding with spacebar
nnoremap <space> za
" automatic docstring folding
let g:SimpylFold_docstring_preview=1

" python indentation configurations
au FileType py setlocal
    \ tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=79
    \ expandtab
    \ autoindent
    \ fileformat=unix

" js indentation configurations
au FileType js,html,css setlocal
    \ tabstop=2
    \ softtabstop=2
    \ shiftwidth=2

au FileType c,cc,h,cpp,hpp setlocal
    \ tabstop=2
    \ softtabstop=2
    \ shiftwidth=4
    \ noexpandtab
    \ colorcolumn=100
    \ autoindent
    \ fileformat=unix


" unnecessary whitespace configuration
au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" nerdTree .pyc file ignoring
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" syntastic plugin configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" python syntax highlighting
let g:python_highlight_all = 1

" c anc c++ syntax highlighting
let g:cpp_simple_highlight = 1
let g:cpp_named_requirements_highlight = 1

" nerdTree configuration
map <C-t> :NERDTreeToggle<CR>

" nerdCommenter configuration
" \cn comment the selected lines
" \cc comment out the selected lines

" vim-airline theme configuration
let g:airline_theme='simple'

" vim-jedi autocompletion plugin configuration
" let g:jedi#use_splits_not_buffers = "left"

" vim ycm autocompletion plugin configuration
let g:ycm_max_num_candidates = 10
let g:ycm_error_symbol = '!!'
let g:ycm_warning_symbol = '>>'
let g:ycm_goto_buffer_command = 'split'
nnoremap <Leader>g :rightbelow vertical YcmCompleter GoTo<CR>

" vim tagbar configuration
nmap <F8> :TagbarToggle<CR>

" vim multiple cursors configuration
let g:multi_cursor_use_default_mapping=0
" multiple cursor default key bindings
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" built-in terminal configuration
nnoremap <C-S-c> :TerminalVSplit bash<CR>
nnoremap <C-S-x> :TerminalSplit bash<CR>

" vim indentLine plugin configuration
let g:indentLine_color_tty_light = 2 " (default: 4)
