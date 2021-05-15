" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "theme
    Plug 'joshdick/onedark.vim'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Autocomplete
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    " intellij sync
    Plug 'beeender/Comrade'
    " More colors
    Plug 'norcalli/nvim-colorizer.lua'
    " Floating terminal
    Plug 'voldikss/vim-floaterm'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " vim quick-scope
    Plug 'unblevable/quick-scope'
    " Rainbow parentheses
    Plug 'junegunn/rainbow_parentheses.vim'
    " Nice statusbar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Scala
    Plug 'scalameta/coc-metals', {'do': 'yarn install --frozen-lockfile'}
    call plug#end()
