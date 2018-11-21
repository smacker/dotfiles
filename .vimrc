" несовместимо с vi
set nocompatible

" показывать имя буфера в заголовке терминала
set title

" возвращать заголовок после выхода
let &titleold=getcwd()

" хранить больше истории
set history=128

" хранить swap в отдельном каталоге
set directory=~/.vim/swap

" хранить резервные копии файлов ...
" set backup

" ... в отдельном каталоге
" set backupdir=~/.vim/backup

" перерисовывать буфер менее плавно
set lazyredraw

" читать параметры конфигурации из открытого файла
set modeline

" перечитывать изменённые файлы автоматически
set autoread

" не выгружать swap скрытого буфера
set hidden

" использовать больше цветов в терминале
set t_Co=256

" наследовать отступы предыдущей строки
set autoindent

" умные отступы на основе синтаксиса
set smartindent

" подсвечивать синтаксис (не для diff-режима)
if !&diff
    syntax on
endif

" определять подсветку на основе кода файла
filetype plugin on

" показывать строку с позицией курсора
set ruler

" показывать номера строк
set number

" показывать буфер вводимой команды
set showcmd

" показывать первую парную скобку после ввода второй ...
set showmatch

" ... чуть меньше времени
set matchtime=1

" показывать строку вкладок всегда
set showtabline=2

" показывать строку статуса всегда
set laststatus=2

" формат строки статуса
set statusline=%1*%m%*%2*%r%*%F%=\ Col:%3*%03c%*\Ln:%3*%03l/%03L%*File:%3*%{&filetype}/%3*%{&fileformat}/%3*%{&fileencoding}%*%<

" использовать табуляцию в 4 пробела
set tabstop=4 softtabstop=4 shiftwidth=4

" заменять <TAB> на пробелы
set expandtab

" удалять лишние пробелы при отступе
set shiftround

" использовать диалоги вместо сообщений об ошибках
set confirm

" использовать сокращённые диалоги
set shortmess=fimnrxoOtTI

" использовать инкрементальный поиск
set incsearch

" использовать подсветку поиска
set hlsearch

" игнорировать регистр при поиске ...
set ignorecase

" ... если поисковый запрос в нижнем регистре
set smartcase

" предлагать авто-дополнение на основе уже введённого регистра
set infercase

" не переносить строки
set nowrap

" расстояние до края при вертикальной прокрутке
set scrolloff=3

" размер прыжка при вертикальной прокрутке
set scrolljump=10

" расстояния до края при горизонтальной прокрутке
set sidescrolloff=3

" размер прыжка при горизонтальной прокрутке
set sidescroll=10

" открывать новое окно снизу
set splitbelow

" сворачивать по отступам
set foldmethod=indent

" не сворачивать рекурсивно
set foldlevel=99

" не вставлять лишних пробелов при объединении строк
set nojoinspaces

"Колоночка, чтобы показывать плюсики для скрытия блоков кода:
set foldcolumn=0

" показывать непечатаемые символы
set list listchars=tab:··,extends:»,precedes:«

" кодировка по-умолчанию
set encoding=utf-8

" порядок перебора кодировок
set fileencodings=utf-8,windows-1251,iso-8859-15,koi8-r

" фикс для русских клавиш
"set langmap=йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рh,оj,лk,дl,ж\\;,э',яz,чx,сc,мv,иb,тn,ьm,б\\,,ю.,ё`,ЙQ,ЦW,УE,КR,ЕT,НY,ГU,ШI,ЩO,ЗP,Х{,Ъ},ФA,ЫS,ВD,АF,ПG,РH,ОJ,ЛK,ДL,Ж:,Э\\",ЯZ,ЧX,СC,МV,ИB,ТN,ЬM,Б<,Ю>,Ё~

" разрешить переход на новую/предыдущую строку при достижении конца/начала текущей
set whichwrap=h,l,<,>,[,]

" переключение режима отступов при вставке
set pastetoggle=<F12>

" использовать wildmenu ...
set wildmenu

" ... с авто-дополнением
set wildcharm=<TAB>

" максимальное число вкладок
set tabpagemax=99

" настройки сессий
set viminfo='128,/32,:32,<64,@32,s10,h,n~/.vim/viminfo

" настройки файлов с сессиями
set sessionoptions=curdir,buffers,tabpages

" меняем текущую директорию на директорию файла
set autochdir

" --- настройки для GUI ---

if has('gui_running')

    " не показывать панель инструментов
    set guioptions-=T

    " не показывать tearoff'ы в меню
    set guioptions-=t

    " разрешить визуальное выделение мышью
    set mouse=a

    " использовать контекстное меню
    set mousemodel=popup

endif


" --- переменные ---

" использовать CSS в TOhtml
let html_use_css=1

" --- аббревиатуры ---

" дизайнерская рыба
inoreabbrev lorem Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.<C-O>:call EatChar()<CR>

" --- подсветка ---

" подсветка строки статуса
highlight user1 term=bold cterm=inverse,bold ctermbg=green gui=inverse,bold guibg=green
highlight user2 term=bold cterm=inverse,bold ctermbg=red gui=inverse,bold guibg=red
highlight user3 term=bold cterm=inverse,bold ctermbg=blue gui=inverse,bold guibg=blue

" подсветка непечатаемых символов
highlight specialkey ctermfg=lightgray guifg=lightgray
highlight nontext ctermfg=gray guifg=gray

" подсветка вкладок
highlight tabline term=none cterm=none ctermbg=lightgray guibg=lightgray
highlight tablinefill term=none cterm=none ctermbg=lightgray guibg=lightgray

" --- горячие клавиши ---

" автоматическое закрытие скобок
inoremap { {}<LEFT>
inoremap ( ()<LEFT>
inoremap [ []<LEFT>

" сохранять выделение при визуальном изменении отступа
vnoremap < <gv 
vnoremap > >gv 

" быстро прыгать по буферу
nnoremap <C-H> 5h
nnoremap <C-J> 5j
nnoremap <C-K> 5k
nnoremap <C-L> 5l
vnoremap <C-H> 5h
vnoremap <C-J> 5j
vnoremap <C-K> 5k
vnoremap <C-L> 5l

" быстрая прокрутка буфера
nnoremap <C-E> 5<C-E>
nnoremap <C-Y> 5<C-Y>
vnoremap <C-E> 5<C-E>
vnoremap <C-Y> 5<C-Y>
nnoremap <C-DOWN> 5<C-E>
nnoremap <C-UP> 5<C-Y>
inoremap <C-DOWN> <C-O>5<C-E>
inoremap <C-UP> <C-O>5<C-Y>
vnoremap <C-DOWN> 5<C-E>
vnoremap <C-UP> 5<C-Y>

" не перепрыгивать через длинные строки при включенном переносе строк
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <DOWN> gj
nnoremap <UP> gk
vnoremap <DOWN> gj
vnoremap <UP> gk
inoremap <DOWN> <C-O>gj
inoremap <UP> <C-O>gk

" сохранять позицию при page up/down
nnoremap <PAGEUP> <C-U><C-U>
nnoremap <PAGEDOWN> <C-D><C-D>
inoremap <PAGEUP> <C-O><C-U><C-O><C-U>
inoremap <PAGEDOWN> <C-O><C-D><C-O><C-D>
vnoremap <PAGEUP> <C-U><C-U>
vnoremap <PAGEDOWN> <C-D><C-D>

" новая вкладка
nnoremap <C-T> :tabnew<CR>
inoremap <C-T> <C-O>:tabnew<CR>
vnoremap <C-T> <ESC>:tabnew<CR>

" предыдущая вкладка
nnoremap <silent><A-LEFT> :call TabJump('left')<CR>
inoremap <silent><A-LEFT> <C-O>:call TabJump('left')<CR>
vnoremap <silent><A-LEFT> <ESC>:call TabJump('left')<CR>

" следующая вкладка
nnoremap <silent><A-RIGHT> :call TabJump('right')<CR>
inoremap <silent><A-RIGHT> <C-O>:call TabJump('right')<CR>
vnoremap <silent><A-RIGHT> <ESC>:call TabJump('right')<CR>

" первая вкладка
nnoremap <A-UP> :tabfirst<CR>
inoremap <A-UP> <C-O>:tabfirst<CR>
vnoremap <A-UP> <ESC>:tabfirst<CR>

" последняя вкладка
nnoremap <A-DOWN> :tablast<CR>
inoremap <A-DOWN> <C-O>:tablast<CR>
vnoremap <A-DOWN> <ESC>:tablast<CR>

" переместить вкладку в начало
nnoremap <A-S-UP> :tabmove 0<CR>
inoremap <A-S-UP> <C-O>:tabmove 0<CR>
vnoremap <A-S-UP> <ESC>:tabmove 0<CR>

" переместить вкладку в конец
nnoremap <A-S-DOWN> :tabmove<CR>
inoremap <A-S-DOWN> <C-O>:tabmove<CR>
vnoremap <A-S-DOWN> <ESC>:tabmove<CR>

" переместить вкладку назад
nnoremap <silent><A-S-LEFT> :call TabMove('left')<CR>
inoremap <silent><A-S-LEFT> <C-O>:call TabMove('left')<CR>
vnoremap <silent><A-S-LEFT> <ESC>:call TabMove('left')<CR>

" переместить вкладку вперёд
nnoremap <silent><A-S-RIGHT> :call TabMove('right')<CR>
inoremap <silent><A-S-RIGHT> <C-O>:call TabMove('right')<CR>
vnoremap <silent><A-S-RIGHT> <ESC>:call TabMove('right')<CR>

" умный прыжок в начало строки
nnoremap <silent><HOME> :call SmartHome('n')<CR>
inoremap <silent><HOME> <C-R>=SmartHome('i')<CR>
vnoremap <silent><HOME> <ESC>:call SmartHome('v')<CR>

" умный прыжок в конец строки
nnoremap <silent><END> :call SmartEnd('n')<CR>
inoremap <silent><END> <C-R>=SmartEnd('i')<CR>
vnoremap <silent><END> <ESC>:call SmartEnd('v')<CR>

" заворачиваем текст в теги
vnoremap <silent>,w <ESC>:call VisualTagWrap()<CR>

" поиск выделенного текста
vnoremap <silent>* <ESC>:call VisualSearch('/')<CR>/<C-R>/<CR>
vnoremap <silent># <ESC>:call VisualSearch('?')<CR>?<C-R>/<CR>

" удалить пробелы в конце строк
noremap <silent>,t :call RemoveTrailingSpaces()<CR>:echo 'trailing spaces removed'<CR>

" сохранить
nnoremap <F2> :w!<CR>
inoremap <F2> <C-O>:w!<CR>
vnoremap <F2> <ESC>:w!<CR>

" сохранить всё
nnoremap <C-F2> :wall!<CR>
inoremap <C-F2> <C-O>:wall!<CR>
vnoremap <C-F2> <ESC>:wall!<CR>

" скрыть результаты поиска
nnoremap <F3> :nohlsearch<CR>:echo 'nohlsearch'<CR>
inoremap <F3> <C-O>:nohlsearch<CR><C-O>:echo 'nohlsearch'<CR>
vnoremap <F3> <ESC>:nohlsearch<CR>:echo 'nohlsearch'<CR>

" перенос строк
nnoremap <F4> :setlocal wrap! wrap?<CR>
inoremap <F4> <C-O>:setlocal wrap! wrap?<CR>
vnoremap <F4> <ESC>:setlocal wrap! wrap?<CR>

" меню выбора типа конца строк
nnoremap <F5> :emenu File.EOL.<TAB>
inoremap <F5> <C-O>:emenu File.EOL.<TAB>
vnoremap <F5> <ESC>:emenu File.EOL.<TAB>

" меню выбора кодировки сохранения
nnoremap <F6> :emenu File.Encoding.Write.<TAB>
inoremap <F6> <C-O>:emenu File.Encoding.Write.<TAB>
vnoremap <F6> <ESC>:emenu File.Encoding.Write.<TAB>

" меню выбора кодировки чтения
nnoremap <F7> :emenu File.Encoding.Read.<TAB>
inoremap <F7> <C-O>:emenu File.Encoding.Read.<TAB>
vnoremap <F7> <ESC>:emenu File.Encoding.Read.<TAB>

" меню проверки орфографии
nnoremap <F8> :emenu File.Spell.<TAB>
inoremap <F8> <C-O>:emenu File.Spell.<TAB>
vnoremap <F8> <ESC>:emenu File.Spell.<TAB>

" меню открытия внешней программой
nnoremap <F9> :emenu File.Preview.<TAB>
inoremap <F9> <C-O>:emenu File.Preview.<TAB>
vnoremap <F9> <ESC>:emenu File.Preview.<TAB>

" закрыть буфер
nnoremap <F10> :q!<CR>
inoremap <F10> <C-O>:q!<CR>
vnoremap <F10> <ESC>:q!<CR>

" закрыть всё
nnoremap <C-F10> :qall!<CR>
inoremap <C-F10> <C-O>:qall!<CR>
vnoremap <C-F10> <ESC>:qall!<CR>

" перенос строк
nnoremap <F12> :setlocal paste! paste?<CR>
inoremap <F12> <C-O>:setlocal paste! paste?<CR>
vnoremap <F12> <ESC>:setlocal paste! paste?<CR>

" --- меню ---

" меню выбора типа конца строк
anoremenu &File.&EOL.&unix :setlocal fileformat=unix<CR>
anoremenu &File.&EOL.&dos :setlocal fileformat=dos<CR>
anoremenu &File.&EOL.&mac :setlocal fileformat=mac<CR>

" меню выбора кодировки сохранения
anoremenu &File.E&ncoding.&Write.&utf-8 :setlocal fileencoding=utf-8<CR>
anoremenu &File.E&ncoding.&Write.&windows-1251 :setlocal fileencoding=windows-1251<CR>
anoremenu &File.E&ncoding.&Write.&iso-8859-15 :setlocal fileencoding=iso-8859-15<CR>
anoremenu &File.E&ncoding.&Write.&koi8-r :setlocal fileencoding=koi8-r<CR>

" меню выбора кодировки чтения
anoremenu &File.E&ncoding.&Read.&utf-8 :edit ++enc=utf-8<CR>
anoremenu &File.E&ncoding.&Read.&windows-1251 :edit ++enc=windows-1251<CR>
anoremenu &File.E&ncoding.&Read.&iso-8859-15 :edit ++enc=iso-8859-15<CR>
anoremenu &File.E&ncoding.&Read.&koi8-r :edit ++enc=koi8-r<CR>

" меню проверки орфографии
anoremenu &File.&Spell.&Combined :setlocal spell spelllang=ru,en<CR>
anoremenu &File.&Spell.&Russian :setlocal spell spelllang=ru<CR>
anoremenu &File.&Spell.&English :setlocal spell spelllang=en<CR>
anoremenu &File.&Spell.&Off :setlocal nospell spelllang=<CR>

" меню открытия внешней программой
anoremenu &File.&Preview.&Firefox :!firefox %<CR>
anoremenu &File.&Preview.&Opera :!opera %<CR>

" --- авто-команды ---

" прыгать на последнюю позицию при открытии буфера
autocmd! bufreadpost * call LastPosition()

" сохранять умные резервные копии ежедневно
autocmd! bufwritepre * call BackupDir()

" автоматически перечитывать конфигурацию VIM после сохранения
autocmd! bufwritepost ~/.vimrc source ~/.vimrc

" переопределять переменные для некоторых типов файлов
autocmd! filetype help setlocal nonumber

" переопределять переменные для некоторых файлов по расширению
autocmd! bufnewfile,bufenter *.tpl_dev setlocal filetype=smarty


" --- функции ---

" убиваем последний введённый символ
function! EatChar()
    let l:char=getchar(0)
    return ''
endfunction

" передвигаемся по вкладкам
function! TabJump(direction)
    let l:tablen=tabpagenr('$')
    let l:tabcur=tabpagenr()
    if a:direction=='left'
        if l:tabcur>1
            execute 'tabprevious'
        endif
    else
        if l:tabcur!=l:tablen
            execute 'tabnext'
        endif
    endif
endfunction

" передвигаем вкладки
function! TabMove(direction)
    let l:tablen=tabpagenr('$')
    let l:tabcur=tabpagenr()
    if a:direction=='left'
        if l:tabcur>1
            execute 'tabmove' l:tabcur-2
        endif
    else
        if l:tabcur!=l:tablen
            execute 'tabmove' l:tabcur
        endif
    endif
endfunction

" умный прыжок в начало строки
function! SmartHome(mode)
    let l:curcol=col('.')
    if l:curcol>indent('.')+2
        call cursor(0, l:curcol-1)
    endif
    if l:curcol==1
        if &wrap
            normal! g^
        else
            normal! ^
        endif
    else
        if &wrap
            normal! g0
        else
            normal! 0
        endif
    endif
    if a:mode=='v'
        normal! msgv`s
    endif
    return ''
endfunction

" умный прыжок в конец строки
function! SmartEnd(mode)
    let l:curcol=col('.')
    let l:lastcol=a:mode=='i'?col('$'):col('$')-1
    if l:curcol<l:lastcol-1
        call cursor(0, l:curcol+1)
    endif
    if l:curcol<l:lastcol
        if &wrap
            normal! g$
        else
            normal! $
        endif
    else
        normal! g_
    endif
    if a:mode=='i'
        call cursor(0, col('.')+1)
    endif
    if a:mode=='v'
        normal! msgv`s
    endif
    return ''
endfunction

" заворачиваем текст в теги
function! VisualTagWrap()
    let l:tag=input('tag to wrap block: ')
    if len(l:tag)>0
        execute 'normal! `>a</'.l:tag.'>'
        execute 'normal! `<i<'.l:tag.'>'
    endif
endfunction

" поиск выделенного текста
function! VisualSearch(cmd)
    let l:old_reg=getreg('"')
    let l:old_regtype=getregtype('"')
    normal! gvy
    let @/='\V'.substitute(substitute(substitute(escape(@@, a:cmd.'\'), '^\_s\+', '\\s\\+', ''), '\_s\+$', '\\s\\*', ''), '\_s\+', '\\_s\\+', 'g')
    normal! gV
    call setreg('"', l:old_reg, l:old_regtype)
endfunction

" прыгать на последнюю позицию при открытии буфера
function! LastPosition()
    if line("'\"") && line("'\"")<=line('$')
        normal! `"
    endif
endfunction

" сохранять умные резервные копии ежедневно
function! BackupDir()
    let l:backupdir=$HOME.'/.vim/backup/'.substitute(expand('%:p:h'), '^'.$HOME, '~', '')
    if !isdirectory(l:backupdir)
        call mkdir(l:backupdir, 'p', 0700)
    endif
    let &backupdir=l:backupdir
    let &backupext=strftime('~%Y-%m-%d~')
endfunction

" удалить пробелы в конце строк
function! RemoveTrailingSpaces()
    normal! mzHmy
    execute '%s/\s\+$//ge'
    normal! 'yzt`z
endfunction


" --- всячина ---

" выключим подсветку поиска при загрузке конфигурации
nohlsearch

" Python
let python_highlight_all = 1

" Перед сохранением вырезаем пробелы на концах (только в .py файлах)
" au tocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
"
" В .py файлах включаем умные отступы после ключевых слов
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" Omni
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"Авто комплит по табу
"function InsertTabWrapper()
"    let col = col('.') - 1
"    if !col || getline('.')[col - 1] !~ '\k'
"        return "\<tab>"
"    else
"        return "\<c-p>"
"    endif
"endfunction
"
"imap <tab> <c-r>=InsertTabWrapper()<cr>
" Показываем все полезные опции автокомплита сразу
"set complete=""
"set complete+=.
"set complete+=k
"set complete+=b
"set complete+=t

" Supertab
"let g:SuperTabDefaultCompletionType = "context"

" Запуск проверки правописания
set wildmenu
set wcm=<Tab>
menu Spl.next ]s
menu Spl.prev [s
menu Spl.word_good zg
menu Spl.word_wrong zw
menu Spl.word_ignore zG
imap <F2> <Esc>:setlocal spell spelllang=ru,en<CR>a
nmap <F2> :setlocal spell spelllang=ru,en<CR>
imap <S-F2> <Esc>:setlocal spell spelllang=<CR>a
nmap <S-F2> :setlocal spell spelllang=<CR>
imap <C-F2> <Esc>:emenu Spl.<TAB>
nmap <C-F2> :emenu Spl.<TAB>

" Color Theme
colorscheme wombat

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.*/
