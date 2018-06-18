set nocompatible              " be iMproved, required
filetype off                  " required

let s:vimrcBase=expand("<sfile>:h")

" based on https://github.com/VundleVim/Vundle.vim/issues/769
" START - Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1

let s:bundlesDir=s:vimrcBase . "/.vim/bundle"
let s:vundleBase=s:bundlesDir . "/Vundle.vim"
let vundle_readme=expand(s:vundleBase . '/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent execute("!mkdir -p " . s:bundlesDir)
  silent execute("!git clone https://github.com/VundleVim/Vundle.vim.git " . s:vundleBase)
  silent execute("!mkdir -p " . s:vimrcBase . "/.vim/{tmp,backups}")
  let iCanHazVundle=0
endif

if empty(&rtp)
  let &rtp=s:vundleBase
else
  let &rtp=&rtp.','.s:vundleBase
endif

call vundle#begin(s:bundlesDir)

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'

" dependencies
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'

" snippets
"Plugin 'garbas/vim-snipmate'

" IDE stuff
"Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'vim-scripts/a.vim'
"Plugin 'scrooloose/nerdtree'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'ervandew/supertab'
"Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
"Plugin 'chrisbra/changesPlugin'
"Plugin 'SirVer/ultisnips'


" for git
"Plugin 'tpope/vim-fugitive'

"Plugin 'tpope/vim-markdown'
"Plugin 'tomtom/tcomment_vim'

"Plugin 'Valloric/YouCompleteMe'

"Plugin 'mileszs/ack.vim'
"Plugin 'rking/ag.vim'

"Plugin 'astashov/vim-ruby-debugger'
"Plugin 'bling/vim-airline'
"Plugin 'pangloss/vim-javascript'
"Plugin 'Rip-Rip/clang_complete'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'timcharper/textile.vim'
"Plugin 'tpope/vim-cucumber'
"Plugin 'tpope/vim-git'
"Plugin 'tpope/vim-haml'
"Plugin 'tpope/vim-rails'
"Plugin 'tpope/vim-repeat'
"Plugin 'tpope/vim-surround'
"Plugin 'tpope/vim-vividchalk'
"Plugin 'tmhedberg/matchit'
"Plugin 'tsaleh/vim-shoulda'
"Plugin 'Townk/vim-autoclose'
"Plugin 'tsaleh/vim-tmux'
"Plugin 'vim-ruby/vim-ruby'

" for the puppets
Plugin 'rodjek/vim-puppet'

" Utility
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'ervandew/supertab'
Plugin 'BufOnly.vim'
Plugin 'wesQ3/vim-windowswap'
Plugin 'SirVer/ultisnips'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
Plugin 'godlygeek/tabular'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'benmills/vimux'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'gilsondev/searchtasks.vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'tpope/vim-dispatch'
Plugin 'jceb/vim-orgmode'
Plugin 'tpope/vim-speeddating'

" Generic Programming Support 
Plugin 'jakedouglas/exuberant-ctags'
Plugin 'honza/vim-snippets'
Plugin 'Townk/vim-autoclose'
Plugin 'tomtom/tcomment_vim'
Plugin 'tobyS/vmustache'
Plugin 'janko-m/vim-test'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'vim-syntastic/syntastic'
Plugin 'neomake/neomake'

" Markdown / Writting
Plugin 'reedes/vim-pencil'
Plugin 'tpope/vim-markdown'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'LanguageTool'

" Git Support
Plugin 'kablamo/vim-git-log'
Plugin 'gregsexton/gitv'
Plugin 'tpope/vim-fugitive'
"Plugin 'jaxbot/github-issues.vim'

" PHP Support
Plugin 'phpvim/phpcd.vim'
Plugin 'tobyS/pdv'

" Erlang Support
Plugin 'vim-erlang/vim-erlang-tags'
Plugin 'vim-erlang/vim-erlang-runtime'
Plugin 'vim-erlang/vim-erlang-omnicomplete'
Plugin 'vim-erlang/vim-erlang-compiler'

" Elixir Support 
Plugin 'elixir-lang/vim-elixir'
Plugin 'avdgaag/vim-phoenix'
Plugin 'mmorearty/elixir-ctags'
Plugin 'mattreduce/vim-mix'
Plugin 'BjRo/vim-extest'
Plugin 'frost/vim-eh-docs'
Plugin 'slashmili/alchemist.vim'
Plugin 'tpope/vim-endwise'
Plugin 'jadercorrea/elixir_generator.vim'
Plugin 'mhinz/vim-mix-format'

" Elm Support
Plugin 'lambdatoast/elm.vim'

" Theme / Interface
Plugin 'AnsiEsc.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sjl/badwolf'
Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'junegunn/limelight.vim'
Plugin 'mkarmona/colorsbox'
Plugin 'romainl/Apprentice'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'chriskempson/base16-vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'AlessandroYorba/Sierra'
Plugin 'daylerees/colour-schemes'
Plugin 'effkay/argonaut.vim'
Plugin 'ajh17/Spacegray.vim'
Plugin 'atelierbram/Base2Tone-vim'
Plugin 'colepeters/spacemacs-theme.vim'
Plugin 'dylanaraps/wal.vim'

" Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'


" All of your Plugins must be added before the following line
call vundle#end()            " required

"""" Vundle integration below
if iCanHazVundle == 0
  echo "Installing Bundles, please ignore key map error messages"
  echo ""
  :PluginInstall
endif
" END - Setting up Vundle - the vim plugin bundler

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
" ---------------------------------------------------------------------------

syntax on
filetype on
set backupdir=~/.vim/backups
set directory=~/.vim/tmp
let g:backup_directory = s:vimrcBase . "/.vim/backups"
" status
set laststatus=2
" colors
set bg=dark
set t_Co=256
colorscheme solarized
let g:airline_powerline_fonts = 1
" crosshairs
hi CursorLine   cterm=NONE ctermbg=235
hi CursorColumn cterm=NONE ctermbg=235
set cursorline
set cursorcolumn
" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" ycm
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
" maps
nmap <F8> :TagbarToggle<CR>
map <F2> :Tab /=><CR>
" tabs
set autoindent smartindent      " turn on auto/smart indenting
set expandtab                   " use spaces, not tabs
set smarttab                    " make <tab> and <backspace> smarter
set tabstop=4                   " tabstops of 8
set softtabstop=4              " tabstops of 8
set shiftwidth=4                " indents of 8
set list

" uncold by default
set foldlevel=99

"extras
set encoding=utf-8
set showcmd

" the following 2 statements provide basic find functionality
set path+=**

set wildmenu
set wildmode=longest:full

"suffixes?
"wildignore?

let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'

" show invisibles
set showbreak=↪\
"set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set listchars=tab:→\ ,nbsp:␣,trail:•,extends:⟩,precedes:⟨

set tags=./tags;$HOME
