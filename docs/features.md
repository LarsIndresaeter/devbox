# features

## seamless navigation between tmux and vim/nvim

The tmux config file and the vim plugin `vim-tmux-navigator` work together.
When a tmux pane i active it is the settings in `.tmux.conf` that control the key binding to change to vim.
When vim is active inside a tmux pane it is the vim plugin that control the kay bindings.

To change between panes in tmux and windows in vim use the keys <ctrl> h,j,k,l (vim navitation).

## git integration in vim

the plugin `fugitive` provide git integration. Commands are prefixed with `:Git`.
If you are used to vim you will get the point quickly.

the plugin `gv` let you do a diff off the current file against a branch or tag from inside vim

## formatting

A collection of plugins for color formatting of files of difference types.

- dockerfiles
- markdown (color and linting)
- json
- restructured text
- C/C++
- python
- cmake

## visualization

plugins for

- changing color of the active pane or window which make sense in vim and tmux
- status bar for vim

## file manager

The plugin `ctrlp` let you use ripgrep to search files and open them from inside vim.

The plugin `nerdtree` let you use a tui file browser with the command `:NERDTreeToggle`,
and the plugin `nerdtree-git-plugin` show git status for the files.

## Productivity plugins

Plugins like `nerdcommenter` and `vim-table-mode` adds extra functionality for added productivity. You can read more on the project pages. No link provided, google is your friend.

## and more

Documentation is never complete. Check out [init.vim](../config/neovim/init.vim) or [.vimrc](../config/vim/.vimrc) for the complete list of plugins.
[vimawesome.com](https://vimawesome.com) is a great place to read about vim plugins.
