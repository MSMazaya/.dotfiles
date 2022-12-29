let g:neovide_transparency=0.0
let g:neovide_transparency_point=0.8
let g:neovide_background_color = '#0f1117'.printf('%x', float2nr(255 * g:neovide_transparency_point))

function! ChangeTransparency(delta)
  let g:neovide_transparency_point = g:neovide_transparency_point + a:delta
  let g:neovide_background_color = '#0f1117'.printf('%x', float2nr(255 * g:neovide_transparency_point))
endfunction

noremap <expr><D-]> ChangeTransparency(0.01)
noremap <expr><D-[> ChangeTransparency(-0.01)
