set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
"set rtp+=~/.vim/autoload/pathogen.vim

call vundle#begin()

"YCMP
Plugin 'Valloric/YouCompleteMe'

"COLORSCHEMES
Bundle 'flazz/vim-colorschemes'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ColorSchemeMenuMaker'
"Bundle 'desert-warm-256'

"AIRLINE
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-signify'
Plugin 'tpope/vim-fugitive'

"NERDTREE
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'wincent/command-t'

"emoji
Plugin 'junegunn/vim-emoji'
" Track the engine.
"Plugin 'SirVer/ultisnips'
"
" " Snippets are separated from the engine. Add this if you want them:
"Plugin 'honza/vim-snippets'
"Plugin 'fatih/vim-go'
"Plugin 'Shougo/vimshell'
"Plugin 'Shougo/vimproc.vim', {'do' : 'make'}
"Plugin 'sebdah/vim-delve'
"Plugin 'gilligan/vim-lldb'
"Plugin 'jodosha/vim-godebug'
Plugin 'avakhov/vim-yaml'
Plugin 'python-mode/python-mode'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/fzf'

call vundle#end()

"execute pathogen#infect()


filetype on
filetype plugin on 
filetype plugin indent on

set t_Co=256

"YCMP
let g:ycm_python_binary_path = '/usr/bin/python'
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 1
let g:ycm_always_populate_location_list = 1 "default 0


"Syntaxic
let g:syntastic_enable_signs=1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
let g:syntastic_quiet_messages = { "type": "style" }
let g:syntastic_python_checkers = ['pyflakes']
let g:syntastic_error_symbol = "✗"
let g:syntastic_auto_jump = 1
let g:syntastic_enable_balloons = 1

"AIRLINE
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'badwolf'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#syntastic#enabled = 1

"SOLARIZED
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

set ttyfast
if !has('nvim')
    set ttymouse=xterm2
endif
set backspace=indent,eol,start

set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set shiftwidth=4
set modelines=1

set number              " show line numbers
set showcmd             " show command in bottom bar
set nocursorline          " highlight current line
set wildmenu
"set relativenumber

set showmatch           " higlight matching parenthesis

"SEARCH
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches

set encoding=utf-8
"REMAP
map <C-a> :noh<return>
map <C-x> :NERDTreeToggle<CR>
"map <C-b> :DlvToggleBreakpoint<CR>

"NERDTREE
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


set statusline+={fugitive#statusline()}
set statusline+=%*

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<C-e>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"let g:go_goimports_bin = "goimports -tabs=false -tabwidth=4"
"let g:go_fmt_autosave=0

"set rtp+=~/vim-delve
"let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
"let g:vimshell_prompt =  '$ '


"map <C-d> :DlvDebug -- --vdc 10.249.249.135,10.249.249.136 --configpath /ecs-stat-exporter-data/config/config.yml<CR>
"map <C-r> :!./ecs-stat-exporter-new-v2 --vdc 10.249.249.135 --configpath config/config.yml<CR>
map <C-g> :YcmCompleter GoToDeclaration<CR>
map <C-d> :YcmCompleter GoToDefinition<CR>
nnoremap <silent> <C-Right> gt
nnoremap <silent> <C-Left> gT
map <C-d> :YcmCompleter GoToDefinition<CR>
set expandtab ts=4 sw=4 ai
set mouse=a
let g:NERDTreeMouseMode=3
