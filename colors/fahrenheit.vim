set background=dark
highlight clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'fahrenheit'

if has('nvim')
  lua require('fahrenheit').setup()
endif
