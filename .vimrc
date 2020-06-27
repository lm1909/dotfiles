set nocompatible              " be iMproved, required
filetype off                  " required <<========== We can turn it on later

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" <============================================>
" Specify the plugins you want to install here.
" We'll come on that later
Plugin 'tpope/vim-fugitive'
Plugin 'RltvNmbr.vim'
Plugin 'zxqfl/tabnine-vim'
Plugin 'tpope/vim-commentary'
Plugin 'itchyny/lightline.vim'
Bundle 'edkolev/tmuxline.vim'
" tmuxline requires powerline font (https://github.com/powerline/fonts) to work correctly, creates file ~/.tmuxlinesnapshot
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'mbbill/undotree'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'lervag/vimtex'
" <============================================>
" All of your Plugins must be added before the following line

if !has('gui_running')
  set t_Co=256
endif
set laststatus=2
call vundle#end()            " required
filetype plugin indent on    " required
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
" Put the rest of your .vimrc file here

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" allow more than 10 open tabs from vim -p https://unix.stackexchange.com/questions/30665/gvim-p-limit-of-opened-tabs
set tabpagemax=100

" supposed to fix bug with tmux
set background=dark

" so lightline doesnt show a second bar
set noshowmode

" intellisense like text completion
filetype plugin on
set omnifunc=syntaxcomplete#Complete

"Customization for tmuxline, this replaces config of statusline in .vimrc
let g:tmuxline_preset = {
      \'a'    : ['%a %d.%m. %R', '#S'],
      \'b'    : '#W',
      \'c'    : '#{prefix_highlight}',
      \'win'  : '#I #W',
      \'cwin' : '#I #W',
      \'z'    : '#(gitmux -cfg ~/.gitmux.conf "#{pane_current_path}")'}
" the prefix_highlight line: https://github.com/tmux-plugins/tmux-prefix-highlight
" the "#(gitmux..' line allows gitmux = git info in statusline https://github.com/arl/gitmux/


set number
set cursorline

" auto-enable the RltvNmbr.vim Plugin on startup, using the answer from https://stackoverflow.com/questions/6821033/vim-how-to-run-a-command-immediately-when-starting-vim
autocmd VimEnter * RltvNmbr

set foldmethod=syntax

"convenience function to insert line numbers into the text
function! LineNumberInsert()
    :%s/^/\=printf('%-4d', line('.'))
endfunction

"enable spellcheck
set spell
