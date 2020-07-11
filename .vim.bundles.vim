call plug#begin('~/.vim/plugged')

let mapleader = ","

Plug 'elzr/vim-json'
  hi! def link jsonKeyword Identifier
Plug 'digitaltoad/vim-jade'
Plug 'wavded/vim-stylus'
Plug 'editorconfig/editorconfig-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
  let g:jsx_ext_required = 0
Plug 'posva/vim-vue'
Plug 'slim-template/vim-slim'
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'uarun/vim-protobuf'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'duganchen/vim-soy'
Plug 'tpope/vim-haml'
Plug 'stephpy/vim-yaml'
Plug 'tfnico/vim-gradle'
Plug 'ap/vim-css-color'
Plug 'ntpeters/vim-better-whitespace'
Plug 'dunckr/js_alternate.vim'
  nnoremap <leader>r :call js_alternate#run()<cr>
  let g:js_alternate#src_types = ['lib', 'src', 'app', 'scripts', 'js']
  let g:js_alternate#test_types = ['tests', 'test', 'spec', 'features']
  let g:js_alternate#extension_types = ['js', 'jsx', 'ts', 'tsx']

Plug 'janko-m/vim-test'
  nmap <silent> <leader>t :TestNearest<CR>
  nmap <silent> <leader>T :TestFile<CR>
  nmap <silent> <leader>a :TestSuite<CR>
  let test#javascript#jest#file_pattern = 'tests\.ts'
  let test#ruby#rspec#file_pattern = 'test_.*\.rb'
  let test#ruby#rspec#executable = './bin/rspec'
Plug 'tpope/vim-commentary'

" THEME
Plug 'tomasr/molokai'
  let g:molokai_original = 1

Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim' " Ctrl + y + ,
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/HTML-AutoCloseTag'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  map <F2> :NERDTreeToggle<CR>
  " close vim if the only window left open is a NERDTree
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" search keyword in working directory
Plug 'dyng/ctrlsf.vim'
  vmap <Leader>f <Plug>CtrlSFVwordExec
  let g:ctrlsf_winsize = '40%'
  let g:ctrlsf_context = '-C 4 -B 0 -A 2'

Plug 'dense-analysis/ale'
  let g:ale_lint_delay = 200
  let g:ale_completion_enabled = 1
  let g:ale_completion_tsserver_autoimport = 1
  nmap <silent> <leader>e :ALENext<CR>
  nmap <silent> <leader>w :ALEPrevious<CR>
  nmap <silent> <leader>f :ALEFix<CR>
  nmap <silent> <leader>d :ALEGoToDefinition<CR>
  nmap <silent> <leader>h :ALEHover<CR>
  let g:ale_fix_on_save = 1
  let g:ale_fixers = {
  \   '*': ['remove_trailing_lines', 'trim_whitespace', 'eslint'],
  \}
  let g:ale_linters = {
  \   'go': ['golint'],
  \   'proto': ['prototool-lint'],
  \}

Plug 'uber/prototool', { 'rtp':'vim/prototool' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
  let g:airline#extensions#tabline#enabled=1
  let g:airline_theme='zenburn'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  " --files: List files that would be searched but do not search
  " --no-ignore: Do not respect .gitignore, etc...
  " --hidden: Search hidden files and folders
  " --follow: Follow symlinks
  " --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'

Plug 'junegunn/fzf.vim'
  map <c-p> :Files<CR>
  map <c-f> :Rg<CR>
  map <c-b> :Buffers<CR>
  map <c-c> :Commits<CR>

Plug 'easymotion/vim-easymotion'
  let g:EasyMotion_do_mapping = 0 " Disable default mappings
  " Jump to anywhere you want with minimal keystrokes, with just one key binding.
  " `s{char}{label}`
  map <Leader>s <Plug>(easymotion-f)
  let g:EasyMotion_smartcase = 1 " Turn on case insensitive feature
  " JK motions: Line/Word motions
  map <Leader>k <Plug>(easymotion-bd-w)
  map <Leader>l <Plug>(easymotion-bd-jk)

Plug 'terryma/vim-multiple-cursors'

call plug#end()
