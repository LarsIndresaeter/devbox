call plug#begin('~/.config/nvim/plugged')                                          
" file formatting
"Plug 'vhdirk/vim-cmake'
Plug 'alepez/vim-gtest'
Plug 'rhysd/vim-clang-format'
Plug 'matthew-brett/vim-rst-sections'
Plug 'ekalinin/dockerfile.vim'
Plug 'elzr/vim-json'
Plug 'rhysd/open-pdf.vim'
Plug 'chrisbra/unicode.vim'
Plug 'vim-ruby/vim-ruby'

" layout
Plug 'romgrk/winteract.vim'

" interactive window mode
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sjl/badwolf'
Plug 'edkolev/tmuxline.vim'
Plug 'wellle/tmux-complete.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'chrisbra/vim-diff-enhanced'
Plug 'pseewald/vim-anyfold'

" Git
Plug 'tpope/vim-fugitive'
Plug 'rhysd/git-messenger.vim'
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'

" File manager
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Navigation
Plug 'szw/vim-maximizer'
Plug 'tpope/vim-unimpaired'
Plug 'wesq3/vim-windowswap'
Plug 'majutsushi/tagbar'
Plug 'yuttie/comfortable-motion.vim'
Plug 'vim-scripts/taglist.vim'
Plug 'hari-rangarajan/cctree'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'benmills/vimux'
Plug 'farmergreg/vim-lastplace'

" Productivity
Plug 'dhruvasagar/vim-table-mode'
Plug 'tpope/vim-surround'
"Plug 'neomake/neomake'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-dispatch'
Plug 'radenling/vim-dispatch-neovim'

" dictionary
Plug 'reedes/vim-wordy'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'weirongxu/coc-explorer'

" debugging
"Plug 'puremourning/vimspector'

call plug#end()

source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/coc-explorer.vim
source $HOME/.config/nvim/preferences.vim
source $HOME/.config/nvim/vim-airline.vim
"source $HOME/.config/nvim/tags.vim
source $HOME/.config/nvim/tagbar.vim
source $HOME/.config/nvim/tmuxline.vim
"source $HOME/.config/nvim/neomake.vim
source $HOME/.config/nvim/clang-format.vim
source $HOME/.config/nvim/riv.vim
source $HOME/.config/nvim/diff.vim
source $HOME/.config/nvim/vimux.vim
source $HOME/.config/nvim/vimspector.vim
source $HOME/.config/nvim/interactive-window.vim

