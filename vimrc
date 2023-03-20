call plug#begin()

Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

call plug#end()

" Настройки табов для Python, согласно рекоммендациям

set tabstop=4

set shiftwidth=4

set smarttab

set expandtab "Ставим табы пробелами

set softtabstop=4 "4 пробела в табе

" Автоотступ

set autoindent

" Подсвечиваем все что можно подсвечивать

let python_highlight_all = 1

" Включаем 256 цветов в терминале, мы ведь работаем из иксов?

" Нужно во многих терминалах, например в gnome-terminal

set t_Co=256

" Перед сохранением вырезаем пробелы на концах (только в .py файлах)

autocmd BufWritePre *.cpp normal m`:%s/\s\+$//e ``

" В .py файлах включаем умные отступы после ключевых слов

autocmd BufRead *.cpp set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

syntax on "Включить подсветку синтаксиса

set nu "Включаем нумерацию строк

set mousehide "Спрятать курсор мыши когда набираем текст

set mouse=a "Включить поддержку мыши

set termencoding=utf-8 "Кодировка терминала

set novisualbell "Не мигать

set t_vb= "Не пищать!

" Удобное поведение backspace

set backspace=indent,eol,start whichwrap+=<,>,[,]

" Вырубаем черточки на табах

set showtabline=1

" Переносим на другую строчку, разрываем строки

set wrap

set linebreak

" Вырубаем .swp и ~ (резервные) файлы

set nobackup

set noswapfile

set encoding=utf-8 " Кодировка файлов по умолчанию

set fileencodings=utf8,cp1251

set clipboard=unnamed

set ruler " Нижняя стока

set hidden

nnoremap <C-N> :bnext<CR>

nnoremap <C-P> :bprev<CR>

" Выключаем звук в Vim

set visualbell t_vb=

map <C-n> :NERDTreeToggle<CR>

let g:cpp_class_scope_highlight = 1

let g:cpp_member_variable_highlight = 1

let g:cpp_class_decl_highlight = 1

let g:cpp_posix_standard = 1

let g:cpp_experimental_simple_template_highlight = 1

let g:cpp_experimental_template_highlight = 1

let g:cpp_concepts_highlight = 1

let g:cpp_no_function_highlight = 1
