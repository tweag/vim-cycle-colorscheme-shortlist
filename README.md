# `vim-cycle-colorscheme-shortlist`

Cycle between a shortlist of your favorite color schemes.

## Setup

Add plugin:

```viml
Plug 'promptworks/vim-cycle-colorscheme-shortlist'
```

Configure:

```viml
" Set the list of your color schemes
let g:cycle_colorscheme_shortlist = ['Tomorrow', 'Tomorrow-Night']

" Add shortcut to cycle
nmap <Leader>c :CycleColorschemeShortlist<cr>
```

The plugin cycles automatically when loaded, so if you have your color scheme already set to one in your list, it will cycle to the next one. To fix this, don't set your color scheme and instead make the first one in your list the one you want to be the default.

If for some reason you can't have your shortlist defined before the plugin loads, add this to your vimrc to make it cycle to the first one:

```vml
CycleColorschemeShortlist
```
