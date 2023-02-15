set termguicolors
set number

call plug#begin('~/.config/nvim/site/autoload/')
	Plug 'kien/ctrlp.vim'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	" Comment/Uncomment tool
	Plug 'scrooloose/nerdcommenter'
	" Switch to the begining and the end of a block by pressing %
	Plug 'tmhedberg/matchit'
	Plug 'mcchrish/nnn.vim'
	" A cool status bar
	Plug 'vim-airline/vim-airline'
	" Airline themes
	Plug 'vim-airline/vim-airline-themes'
	" Nord
	Plug 'arcticicestudio/nord-vim'
	" Better syntax-highlighting for filetypes in vim
	Plug 'sheerun/vim-polyglot'
	" Intellisense engine
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" Git integration
	Plug 'tpope/vim-fugitive'
	" Auto-close braces and scopes
	"	Plug 'jiangmiao/auto-pairs'
call plug#end()
" Code action on <leader>a
vmap <leader>a <Plug>(coc-codeaction-selected)<CR>
nmap <leader>a <Plug>(coc-codeaction-selected)<CR>

" Format action on <leader>f
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Goto definition
nmap <silent> gd <Plug>(coc-definition)
" Open definition in a split window
nmap <silent> gv :vsp<CR><Plug>(coc-definition)<C-W>L

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> [b :bNext<CR>
nmap <silent> ]b :bnext<CR>

let g:airline#extensions#tabline#enabled = 1
let mapleader = ','

colorscheme nord

" NNN configurations
let g:nnn#command = 'nnn -o'
nnoremap <leader>n :NnnPicker %:p:h<CR>

