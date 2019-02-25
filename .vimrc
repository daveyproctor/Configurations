" as per https://github.com/VundleVim/Vundle.vim#about
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 1
highlight YcmErrorSection guibg=#3f0000
set completeopt-=preview

Plugin 'lervag/vimtex'
let g:vimtex_compiler_latexmk = {'callback' : 0}
let g:vimtex_view_automatic = 0
let maplocalleader = "\\"

Plugin 'lifepillar/vim-solarized8' 

" Plugin 'andreasvc/vim-256noir'

" Plugin 'Lokaltog/vim-powerline', {'rtp': 'powerline/bindings/vim/'}

Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()            " required
filetype plugin indent on    " required
" Other plugins:
source ~/.cscope.conf/cscope_maps.vim

:imap jk <Esc>

"https://dougblack.io/words/a-good-vimrc.html#colors
:syntax enable
:set number

" indent as per https://stackoverflow.com/questions/41657784/inserting-at-the-end-of-a-line-in-vim
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
set softtabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set rtp+=/usr/local/opt/fzf

set clipboard=unnamed

set mouse=a

" Colors
set background=light
colorscheme solarized8

" No highlight on search
set nohlsearch


" fzf
" :map :FG :F ~/Google\ Drive 

" tell it to use an undo file
set undofile
" set a directory to store the undo history
set undodir=~/.vimundo/

:command WQ wq
:command Wq wq
:command W w
:command Q q

" python for nvim
let g:python2_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'



" SCRAP
" Latex
" Plugin 'LaTeX-Box-Team/LaTeX-Box'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" let g:vimtex_view_skim_hook_view = 1
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" Bundle 'Powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
" Latex
" :command L Latexmk
" :command V LatexView
" write and compile
" :map :wl :w <bar> L
" :map zz :w <bar> L <return>
" Latex ycm
" :let g:tex_flavor = 'latex'
" SPEED
" set nocursorline
" set nornu
"syntax off
" au FileType tex setlocal nocursorline
" au FileType tex :NoMatchParen

" YCM
" off:
" let g:ycm_auto_trigger = 0
"
" :colorscheme
" highlight YcmWarningSign guibg=#ffffcc
" highlight YcmWarningSection guibg=#ffffcc
" highlight YcmWarningLine guibg=#ffffcc
" highlight YcmErrorLine guibg=#ffffff
" let g:ycm_allow_changing_updatetime = 0
" highlight Pmenu ctermfg=2 ctermbg=3 guifg=#ffffff guibg=#0001ff
"
"
"
