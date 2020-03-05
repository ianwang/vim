" Load Vundle. Manages all of the bundles.
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

let mapleader = ","

" So Vundle can update itself.
Plugin 'gmarik/Vundle.vim'

Plugin 'elzr/vim-json'
  hi! def link jsonKeyword Identifier
Plugin 'nikvdp/ejs-syntax'
Plugin 'digitaltoad/vim-jade'
Plugin 'wavded/vim-stylus'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
  let g:jsx_ext_required = 0
Plugin 'posva/vim-vue'
Plugin 'slim-template/vim-slim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'ElmCast/elm-vim'
Plugin 'uarun/vim-protobuf'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'duganchen/vim-soy'
Plugin 'thoughtbot/vim-rspec'
  "map <Leader>t :call RunCurrentSpecFile()<CR>
  "map <Leader>s :call RunNearestSpec()<CR>
  "map <Leader>l :call RunLastSpec()<CR>
  "map <Leader>a :call RunAllSpecs()<CR>
  "let g:rspec_command = "!bundle exec rspec {spec} -f d"
  "
Plugin 'tpope/vim-haml'
Plugin 'stephpy/vim-yaml'
Plugin 'tfnico/vim-gradle'
Plugin 'ap/vim-css-color'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'janko-m/vim-test'
  nmap <silent> <leader>t :TestNearest<CR>
  nmap <silent> <leader>T :TestFile<CR>
  nmap <silent> <leader>a :TestSuite<CR>
  let test#javascript#jest#file_pattern = 'tests\.ts'
  let test#ruby#rspec#file_pattern = 'test_.*\.rb'
  let test#ruby#rspec#executable = './bin/rspec'
Plugin 'tpope/vim-commentary'

" THEME
Plugin 'tomasr/molokai'
  let g:molokai_original = 1

Plugin 'jiangmiao/auto-pairs'
Plugin 'mattn/emmet-vim' " Ctrl + y + ,
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/HTML-AutoCloseTag'
Plugin 'scrooloose/nerdtree'
  map <F2> :NERDTreeToggle<CR>
  " close vim if the only window left open is a NERDTree
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" search keyword in working directory
Plugin 'dyng/ctrlsf.vim'
  vmap <Leader>f <Plug>CtrlSFVwordExec
  let g:ctrlsf_winsize = '40%'
  let g:ctrlsf_context = '-C 4 -B 0 -A 2'

Plugin 'w0rp/ale'
  let g:ale_lint_delay = 200
  let g:ale_completion_enabled = 1
  let g:ale_completion_tsserver_autoimport = 1
  nmap <silent> <leader>e :ALENext<CR>
  nmap <silent> <leader>w :ALEPrevious<CR>
  nmap <silent> <leader>f :ALEFix<CR>
  nmap <silent> <leader>d :ALEGoToDefinition<CR>
  nmap <silent> <leader>h :ALEHover<CR>

Plugin 'uber/prototool', { 'rtp':'vim/prototool' }
  let g:ale_linters = {
  \   'go': ['golint'],
  \   'proto': ['prototool-lint'],
  \}

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
  let g:airline#extensions#tabline#enabled=1
  let g:airline_theme='zenburn'

Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  " --files: List files that would be searched but do not search
  " --no-ignore: Do not respect .gitignore, etc...
  " --hidden: Search hidden files and folders
  " --follow: Follow symlinks
  " --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'

Plugin 'junegunn/fzf.vim'
  map <c-p> :Files<CR>
  map <c-f> :Rg<CR>
  map <c-b> :Buffers<CR>
  map <c-c> :Commits<CR>

Plugin 'easymotion/vim-easymotion'
  let g:EasyMotion_do_mapping = 0 " Disable default mappings
  " Jump to anywhere you want with minimal keystrokes, with just one key binding.
  " `s{char}{label}`
  map <Leader>s <Plug>(easymotion-f)
  let g:EasyMotion_smartcase = 1 " Turn on case insensitive feature
  " JK motions: Line/Word motions
  map <Leader>k <Plug>(easymotion-bd-w)
  map <Leader>l <Plug>(easymotion-bd-jk)

Plugin 'terryma/vim-multiple-cursors'

call vundle#end()
filetype plugin indent on
