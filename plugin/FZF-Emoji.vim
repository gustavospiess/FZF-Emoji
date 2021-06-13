let s:emoji_path = expand('<sfile>:p:h:h') . '/emoji.json'
let s:emoji_inited = 0

function! s:init_emojis_once()
  if s:emoji_inited
    return
  endif
  unlet! s:emojis
  let s:emojis = []
  for emoji in eval( join( readfile( s:emoji_path ), '' ) )
    if !has_key( emoji, 'emoji' )
      continue
    endif
    call add( s:emojis, s:emoji_to_candidate( emoji ) )
  endfor
  let s:emoji_inited = 1
endfunction

function! s:rpad(s,amt)
    return a:s . repeat(' ',a:amt - len(a:s))
endfunction

function! s:emoji_to_candidate( emoji )
    return a:emoji['emoji'] . ' || '
                \ . s:rpad(join(a:emoji['aliases']), 50) . ' || '
                \ . a:emoji['description']
endfunction


function! GetEmoji()
    call s:init_emojis_once()
    return s:emojis
endfunction


function! PlaceEmogi(emoji)
    execute 'normal! a'.substitute(a:emoji, '\v \|\|.*', '', 'g')
endfunction


command! FZFEmoji call fzf#run(extend({'sink': funcref('PlaceEmogi'), 'source': GetEmoji()}, get(g:, 'fzf_layout', {})))
