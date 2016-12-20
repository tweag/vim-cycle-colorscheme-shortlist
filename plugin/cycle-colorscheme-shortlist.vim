if !exists("g:cycle_colorscheme_shortlist")
  let g:cycle_colorscheme_shortlist = []
endif

function! CycleColorschemeShortlist()
  let len_shortlist = len(g:cycle_colorscheme_shortlist)

  if len_shortlist == 0
    echo 'No color schemes specified in g:cycle_colorscheme_shortlist'
    return
  endif

  let current_scheme_idx = index(g:cycle_colorscheme_shortlist, g:colors_name)

  let next_scheme_idx = (current_scheme_idx + 1) % len_shortlist

  let next_scheme = g:cycle_colorscheme_shortlist[next_scheme_idx]

  exec 'colorscheme '.next_scheme
endfunction

command! CycleColorschemeShortlist :call CycleColorschemeShortlist()

CycleColorschemeShortlist
