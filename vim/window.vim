set mouse=a

" Theme/Layout
syntax enable

colorscheme one

set background=dark
set cmdheight=1
set cursorline
set guifont=Hack\ Nerd\ Font:h11
set laststatus=2  " Always display the status line
set lazyredraw
set number relativenumber
set numberwidth=5
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set showmatch
set termguicolors

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use one space, not two, after punctuation.
set nojoinspaces

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" autoreload file
set autoread
au CursorHold * checktime

" welcome message
autocmd VimEnter * echo " >^.^< Hello!"

" Folding
" set foldenable
" set foldlevelstart=10
" set foldmethod=indent
" set foldnestmax=10
" nnoremap <leader>z za " open/close folds

" Search
set incsearch			" search as characters are entered
set hlsearch			" highlight matches
set wildmenu

let g:CommandTWildIgnore=&wildignore . ",*/node_modules"
let g:fzf_layout = { 'up': '~50%' }

nnoremap <silent> <Leader>t :Files<CR>
nnoremap <leader>/ :nohlsearch<CR>    " turn off search highlight

" yank highlight duration
let g:highlightedyank_highlight_duration = 300

" Explorer
"let g:loaded_netrw=1
let g:loaded_netrwPlugin=1
let g:NERDTreeLimitedSyntax = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeDirArrows = 1
let NERDTreeMinimalUI = 1
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
nnoremap <silent> <Leader>d :NERDTreeToggle<CR> " open
nnoremap <silent> <Leader>v :NERDTreeFind<CR> " open and find current file

" airline
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1

let g:airline_powerline_fonts = 1
let g:airline_theme='one'
let g:airline_skip_empty_sections = 1

call airline#parts#define('linenr', { 'accents': 'bold' })

autocmd User AirlineAfterInit call AirlineInit()
function! AirlineInit()
  let g:airline_section_b = airline#section#create(['branch'])
  let g:airline_section_z = airline#section#create(['hunks', 'linenr'])
endfunction


