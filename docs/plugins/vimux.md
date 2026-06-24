# vimux

Vimux was originally inspired by tslime.vim, a plugin that lets you send input to tmux. 

- https://vimawesome.com/plugin/vimux

## seamless navigation between tmux and vim/nvim

The tmux config file and the vim plugin `vim-tmux-navigator` work together.
When a tmux pane i active it is the settings in `.tmux.conf` that control the key binding to change to vim.
When vim is active inside a tmux pane it is the vim plugin that control the kay bindings.

To change between panes in tmux and windows in vim use the keys <ctrl> h,j,k,l (vim navitation).

