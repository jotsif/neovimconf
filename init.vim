set iskeyword+=_
set termguicolors
set ignorecase
set number
set clipboard=unnamed

" TODO
" 	- Automatically install coc-pyright
" 	- Automatically install vim-plug
" 	- Automatically install coc-json

call plug#begin('~/.config/nvim/site/autoload/')
	Plug 'kien/ctrlp.vim'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
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
	Plug 'tpope/vim-surround'
	Plug 'github/copilot.vim'
call plug#end()
" Code action on <leader>a
vmap <leader>a <Plug>(coc-codeaction-selected)<CR>
nmap <leader>a <Plug>(coc-codeaction-selected)<CR>

" Format action on <leader>f
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Goto definition
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
" Open definition in a split window
nmap <silent> gv :vsp<CR><Plug>(coc-definition)<C-W>L

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

let g:airline#extensions#tabline#enabled = 1
let mapleader = ','

colorscheme nord

" NNN configurations
let g:nnn#command = 'nnn -eE'
nnoremap <leader>n :NnnPicker %:p:h<CR>

autocmd BufWrite *.py :call CocAction('format')
nnoremap <leader>t :CocCommand pyright.fileTest<CR>
nnoremap <leader>b :Buffers<CR>

" Fugitive
nnoremap <leader>co :Git checkout 
nnoremap <leader>pp :Git push origin 
nnoremap <leader>ff :Git pull<CR>

let g:coc_user_config = {}
let g:coc_user_config['pyright.testing.provider'] = 'pytest'
let g:coc_user_config['python.formatting.provider'] = 'black'
let g:coc_user_config['python.linting.flake8Enabled'] = 'true'
let g:coc_user_config['python.linting.mypyEnabled'] = 'true'

" map jj to ESC
inoremap jj <ESC>
