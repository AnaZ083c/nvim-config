" Basic VIM settings
:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
" :set foldmethod=syntax
" :set foldnestmax=1

" Plugins
call plug#begin('~/.config/nvim/plugged')

	Plug 'http://github.com/tpope/vim-surround' " Surrounding -- using ysw
	Plug 'https://github.com/preservim/nerdtree' " NerdTree
	Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
	Plug 'https://github.com/vim-airline/vim-airline' " Status bar
	Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
	Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
	Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
	" Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
	Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
	Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
	Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
	Plug 'jiangmiao/auto-pairs'
	" Plug 'kdheepak/lazygit.nvim'
	" Plug 'https://github.com/lewis6991/gitsigns.nvim'
	Plug 'https://github.com/tpope/vim-fugitive'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }
	" or                                , { 'branch': '0.1.x' }	
	Plug 'glepnir/dashboard-nvim'
	" Plug 'https://github.com/nvimdev/dashboard-nvim'

call plug#end()
" let g:dashboard_default_executive = 'telescope'

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

:colorscheme jellybeans


"""""" Autostart
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd VimEnter * Tagbar


"""""" Keybindings remap

" Nerd Tree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" COC Autocompletion
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
inoremap <expr> <CR> pumvisible() ? coc#_select_confirm() : "<CR>"

" Tab and reverse tab
nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>

" CTRL-s to save
nnoremap <silent><c-s> :<c-u>update<cr>
vnoremap <silent><c-s> <c-c>:update<cr>gv
inoremap <silent><c-s> <c-o>:update<cr>

" FZF remaps
nnoremap <F9> :<c-u>Ag<CR>
vnoremap <F9> <c-c>:Ag<CR>
inoremap <F9> <c-o>:Ag<CR>

" Folding and unfolding

