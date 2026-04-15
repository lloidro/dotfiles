set clipboard=unnamedplus
set number
set relativenumber
syntax on
set guifont=jetbrainsmono:h15
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
filetype plugin indent on "Включает определение типа файла, загрузку...
"... соответствующих ему плагинов и файлов отступов
set encoding=utf-8 "Ставит кодировку UTF-8
set nocompatible "Отключает обратную совместимость с Vi

if empty(glob('~/.vim/autoload/plug.vim')) "Если vim-plug не стоит
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
  "И скачать его оттуда
  "А после прогнать команду PlugInstall, о которой мы сейчас поговорим
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/bundle') "Начать искать плагины в этой директории
Plug 'vim-airline/vim-airline' 
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end() "Перестать это делать
set termguicolors
set ruler
set showcmd


colorscheme gruvbox
set background=dark

let g:airline_powerline_fonts = 1 "Включить поддержку Powerline шрифтов
let g:airline#extensions#keymap#enabled = 0 "Не показывать текущий маппинг
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" "Кастомная графа положения курсора
let g:Powerline_symbols='unicode' "Поддержка unicode
let g:airline#extensions#xkblayout#enabled = 0 "Про это позже расскажу
set noshowmode
set ttimeoutlen=10 
set cursorline
let &t_SI = "\033[5 q"
let &t_EI = "\033[5 q"
