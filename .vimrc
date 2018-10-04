"
" Xint0 .vimrc
"
" MIT License
"
" Copyright (c) 2017 Rogelio Jacinto Pascual <rogelio.jacinto@gmail.com>
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in all
" copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
" SOFTWARE.

" Enable syntax highlighting
syntax enable
" Tabs are 4 spaces
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set smarttab
" Show line numebrs
set number
" Show current command
set showcmd
" Highlight current line
set cursorline
" Allow backspace over indent,eol,start
set backspace=indent,eol,start
filetype indent on
" Command-line completion
set wildmenu
" Lazy redraw for slow connections
set lazyredraw
" Highlight matching braces
set showmatch
" Enable incremental search
set incsearch
" Highlight search terms
set hlsearch
" Key shortcut to disable search term highlight
nnoremap <leader><space> :nohlsearch<CR>
" Enable code folding
set foldenable
" Open 10 levels by default
set foldlevelstart=10
" Allow up to 10 levels
set foldnestmax=10
" Fold by indenation
set foldmethod=indent

" vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
    Plug 'sheerun/vim-polyglot'
    Plug 'valloric/youcompleteme'
    Plug 'tpope/vim-fugitive'
    Plug 'shumphrey/fugitive-gitlab.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'scrooloose/syntastic'
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()

if &t_Co == 256
" Use Kim Silkebaekken's distinguished color scheme
" https://github.com/Lokaltog/vim-distinguished
colorscheme distinguished
endif
