" pathogen
let g:pathogen_disabled = [ 'vim-lldb' ]
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" general
let mapleader = ","

set number

set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent

syntax on
filetype on
filetype plugin on

if has('win32')
  set nobackup
  set nowritebackup
  set backspace=2
  set fileformats=unix,dos
  set fileformat=unix
end

" NERDTree
map <F2> :NERDTreeToggle<CR>

" syntastic
map <Leader>en :lnext<CR>
map <Leader>ep :lprev<CR>
map <Leader>ee :ll<CR>

" syntastic-sass
let g:syntastic_sass_load_paths = [ "public/bower_components/bootstrap-sass/lib" ]
let g:syntastic_cpp_compiler_options = "-std=c++11"

" syntastic-javascript
let g:syntastic_javascript_checkers = [ 'jscs', 'jshint' ]

" diffutil
map <F4> :call diffutil#DiffUtil()<CR>

" fugitive
map <Leader>gc :Gcommit<CR>

" istanbul
let g:coverage_json_path = getcwd() . '/coverage/istanbul/coverage-final.json'

" vim-slime
let g:slime_target = "tmux"
