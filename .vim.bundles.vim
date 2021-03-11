call plug#begin('~/.vim/plugged')

let mapleader = ","

Plug 'sheerun/vim-polyglot'
  let g:polyglot_disabled = ['js', 'jsx', 'ts', 'tsx']
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
  hi! def link jsonKeyword Identifier
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'tfnico/vim-gradle'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'ntpeters/vim-better-whitespace'
Plug 'dunckr/js_alternate.vim'
  nnoremap <leader>r :call js_alternate#run()<cr>
  let g:js_alternate#src_types = ['lib', 'src', 'app', 'scripts', 'js']
  let g:js_alternate#test_types = ['tests', 'test', 'spec', 'features']
  let g:js_alternate#extension_types = ['js', 'jsx', 'ts', 'tsx']

Plug 'tpope/vim-projectionist'
  nmap <silent> <leader>a :A<CR>
Plug 'vim-test/vim-test', { 'commit': 'e9e824cf3f22fa1cddabb7ef739f2481436c3924'}
  nmap <silent> <leader>t :TestNearest<CR>
  nmap <silent> <leader>T :TestFile<CR>
  let test#javascript#jest#file_pattern = 'tests\.ts'
  let test#strategy = 'vimterminal'

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

Plug 'uber/prototool', { 'rtp':'vim/prototool' }

Plug 'ycm-core/YouCompleteMe'

Plug 'dense-analysis/ale'
  let g:ale_lint_delay = 200
  let g:ale_completion_enabled = 1
  let g:ale_completion_autoimport = 1
  let g:ale_hover_cursor = 0
  nmap <silent> <leader>e :ALENext<CR>
  nmap <silent> <leader>w :ALEPrevious<CR>
  nmap <silent> <leader>f :ALEFix<CR>
  nmap <silent> <leader>d :ALEGoToDefinition<CR>
  let g:ale_fix_on_save = 1
  let g:ale_fixers = {
  \   '*': ['remove_trailing_lines', 'trim_whitespace', 'eslint'],
  \}
  let g:ale_linters = {
  \   'go': ['golint'],
  \   'proto': ['prototool-lint'],
  \}
  " let g:ale_pattern_options = {
  " \ '\.min\.js$': {'ale_linters': [], 'ale_fixers': []},
  " \ '\.proto$': {'ale_linters': [], 'ale_fixers': []},
  " \}
  " let g:ale_pattern_options_enabled = 1

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
  let g:fzf_layout = { 'down': '40%' }
  let g:fzf_preview_window = ''
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
