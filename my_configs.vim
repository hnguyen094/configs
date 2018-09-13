"""" 1. Vim Behaviour.
" Use filetype-based syntax hilighting, ftplugins, and indentation.
syntax on
filetype plugin indent on
" Use numbering. Don't use relative numbering as this is slow (especially in
" .tex files).
set number 
"augroup numbertoggle
"    autocmd!
"    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
"    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
"augroup END

" NERD tree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Enables mouse support. Note that on Mac OS X this doesn't work well on the
" default terminal.
set mouse=a

"""" 2. Key Bindings.
" More convenient movement when lines are wrapped.
nmap j gj
nmap k gk

"""" 3. Vim Appearance.
set background=dark
color peaksea
" Search settings
set hlsearch " hilight
set incsearch " jump to best fit
 " Turn off seach hilighting with <CR>.
nnoremap <CR> :nohlsearch<CR><CR>
" Tab settings
set autoindent
set smartindent
set tabstop=2
set shiftwidth=4
set expandtab
" Make statusline appear even with only single window.
set laststatus=2

" vim: set ft=vim foldmethod=marker ts=4 sw=4 tw=80 et :
