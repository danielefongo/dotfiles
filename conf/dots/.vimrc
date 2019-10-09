set nocompatible " Don't be compatible with vi
filetype off

" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'iCyMind/NeoSolarized'

" Initialize plugin system
call plug#end()

" NERDTree
map <C-e> :NERDTreeToggle<CR> " Toggle on ctrl-e
map <leader>f :NERDTreeFind<CR> " Toggle in find mode
let NERDTreeShowHidden=1 " Show hidden files
let NERDTreeQuitOnOpen=1 " Hide after selection
" Open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Improve UI
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" ==== Appearance ====

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


colorscheme NeoSolarized
set background=dark

syntax enable