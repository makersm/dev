"Plugins ----------------------------------------------------------------------
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim "rtp == RunTimePath

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'The-NERD-tree'
Plugin 'wincent/command-t'
Plugin 'vim-airline/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'morhetz/gruvbox'
Plugin 'benmills/vimux'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
call vundle#end()

"Basic Setups -----------------------------------------------------------------
set number
set softtabstop=4
set tabstop=4
set shiftwidth=4 "set expandtab " use whitespace for tab character
set cindent
set incsearch
set hlsearch
set ignorecase
set smartcase
set laststatus=2
set title
set textwidth=120
set smartindent
set autoindent
set noswapfile
set cursorline
syntax on
colorscheme gruvbox
if filereadable(expand("$HOME/.vim/bundle/gruvbox/colors/gruvbox.vim"))
    colorscheme gruvbox
endif
set bg=dark

"Remember last buffer position
:au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

"Shortcuts --------------------------------------------------------------------
let mapleader=","
"Shortcuts :: Plugin
noremap <F2> :NERDTreeToggle<CR> :vertical resize 50<CR>
nnoremap <C-e> :CommandTBuffer<CR>
nnoremap <S-e> :CommandT<CR>
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:airline#extensions#tabline#enabled = 1
let g:UltiSnipsExpandTrigger="<C-right>"

"Shortcuts :: Editor
nnoremap <leader>e :bn<CR>
nnoremap <leader>w :bp<CR>
nnoremap <leader>z :bd<CR>
nnoremap <leader>q :YcmCompleter GetDoc<CR>
nnoremap <C-i> :YcmCompleter GoToImprecise<CR>
nnoremap <C-o> <C-o>zz
noremap <F12> :wqa!<CR>
nnoremap <BS> hx
inoremap <C-w> <Esc>dwi
inoremap <C-b> <Esc>dbi

"Shortcuts :: External Utilties
noremap <F10> :!make<CR>
noremap <C-F10> :!make test<CR>
