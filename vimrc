" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim74/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" Pathogen for plugin mgmt
" Unpack plugins in bundle folder (or clone)
call pathogen#infect()

" Automatic reloading of .vimrc on :w
autocmd! bufwritepost .vimrc source %

" Surpress auto-indentation on paste
set pastetoggle=<F2>

" Use X11 clipboardboard (requires vim compiled with xterm_clipboard on most
" distributions gvim provides a console vim compiled with X11 support)
set clipboard=unnamedplus

" Normal behavoiur of backspace
set bs=2

" Enable mouse
set mouse=a

" Set <Leader> Key to ,
let mapleader = ","

" Faster tab movement
map <Leader>b <esc>:tabnew<CR>
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" Faster split movement
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Faster sorting
map <Leader>s <esc>:sort<CR>

" Improved indentation with selection
vnoremap < <gv
vnoremap > >gv

" #########################################################
" Color scheme
" #########################################################

" Visible whitespaces (not working)
" MUST be inserted BEFORE colorscheme command
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

" Show trailing whitespace and spaces before a tab:
match ExtraWhitespace /\s\+$\| \+\ze\t/

" Wombat color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400

"color wombat256mod

" Solarized color scheme
" cd ~/.vim/bundle
" git clone git://github.com/altercation/vim-colors-solarized.git

"set background=light "solarized-light
"set background=dark  "solarized-dark
"colorscheme solarized

syntax on
set t_Co=256

" #########################################################
" Misc
" #########################################################

" Showing line numbers and length
set number
set tw=79
set nowrap  " don't auto-wrap on load
set fo-=t   " don't auto-wrap on type
set colorcolumn=80
highlight ColorColumn ctermbg=233

set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround
set expandtab

filetype plugin on
filetype indent on

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Enable syntax-based folding
set foldmethod=syntax

" Allows to be able to set cursor behind last char at a line so you can append
" by pressing i
set virtualedit=block,onemore

                                                          "
" #########################################################
" Plugin configurations
" #########################################################
" To enable pathogen:
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


""""" vim-airline
" git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
" :Helptags
"
set laststatus=2
let g:airline_powerline_fonts = 1

""""" Python mode
" git clone git://github.com/klen/python-mode ~/.vim/bundle/python-mode

let g:pymode_rope = 1

""""" CrtlP
" git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp

""""" Python folding
set nofoldenable

""""" AutomaticTexPlugin
let g:atp_Compiler='bash'
