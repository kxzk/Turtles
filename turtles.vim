let s:gui_dark_gray = '#293B2E'
let s:cterm_dark_gray = 239

"section c background color
let s:gui_med_gray_hi = '#191919'
let s:cterm_med_gray_hi = 237

let s:gui_med_gray_lo = '#272727'
let s:cterm_med_gray_lo = 236

"text color in section b
let s:gui_light_gray = '#b2b2b2'
let s:cterm_light_gray = 249

let s:gui_green = '#98D750'
let s:cterm_green = 148

let s:gui_blue = '#5E90C7'
let s:cterm_blue = 81

let s:gui_purple = '#BE5A79'
let s:cterm_purple = 141

let s:gui_orange = '#EC9F41'
let s:cterm_orange = 136

let s:gui_red = '#DD4641'
let s:cterm_red = 196

let s:gui_pink = '#B071BF'
let s:cterm_pink = 197

let g:airline#themes#bubblegum#palette = {}

" Normal mode
let s:N1 = [s:gui_dark_gray, s:gui_green, s:cterm_dark_gray, s:cterm_green]
let s:N2 = [s:gui_light_gray, s:gui_med_gray_lo, s:cterm_light_gray, s:cterm_med_gray_lo]
let s:N3 = [s:gui_green, s:gui_med_gray_hi, s:cterm_green, s:cterm_med_gray_hi]
let g:airline#themes#bubblegum#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#bubblegum#palette.normal_modified = {
      \ 'airline_c': [s:gui_orange, s:gui_med_gray_hi, s:cterm_orange, s:cterm_med_gray_hi, ''],
      \ }

" Insert mode
let s:I1 = [s:gui_dark_gray, s:gui_blue, s:cterm_dark_gray, s:cterm_blue]
let s:I3 = [s:gui_blue, s:gui_med_gray_hi, s:cterm_blue, s:cterm_med_gray_hi]
let g:airline#themes#bubblegum#palette.insert = airline#themes#generate_color_map(s:I1, s:N2, s:I3)
let g:airline#themes#bubblegum#palette.insert_modified = copy(g:airline#themes#bubblegum#palette.normal_modified)
let g:airline#themes#bubblegum#palette.insert_paste = {
      \ 'airline_a': [s:gui_dark_gray, s:gui_orange, s:cterm_dark_gray, s:cterm_orange, ''],
      \ }

" Replace mode
let g:airline#themes#bubblegum#palette.replace = {
      \ 'airline_a': [s:gui_dark_gray, s:gui_red, s:cterm_dark_gray, s:cterm_red, ''],
      \ 'airline_c': [s:gui_red, s:gui_med_gray_hi, s:cterm_red, s:cterm_med_gray_hi, ''],
      \ }
let g:airline#themes#bubblegum#palette.replace_modified = copy(g:airline#themes#bubblegum#palette.insert_modified)

" Visual mode
let s:V1 = [s:gui_dark_gray, s:gui_pink, s:cterm_dark_gray, s:cterm_pink]
let s:V3 = [s:gui_pink, s:gui_med_gray_hi, s:cterm_pink, s:cterm_med_gray_hi]
let g:airline#themes#bubblegum#palette.visual = airline#themes#generate_color_map(s:V1, s:N2, s:V3)
let g:airline#themes#bubblegum#palette.visual_modified = copy(g:airline#themes#bubblegum#palette.insert_modified)

" Inactive window
let s:IA = [s:gui_light_gray, s:gui_med_gray_hi, s:cterm_light_gray, s:cterm_med_gray_hi, '']
let g:airline#themes#bubblegum#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#bubblegum#palette.inactive_modified = {
      \ 'airline_c': [s:gui_orange, '', s:cterm_orange, '', ''],
      \ }

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#bubblegum#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ s:gui_orange, s:gui_med_gray_hi, s:cterm_orange, s:cterm_med_gray_hi, '' ] ,
      \ [ s:gui_orange, s:gui_med_gray_lo, s:cterm_orange, s:cterm_med_gray_lo, '' ] ,
      \ [ s:gui_dark_gray, s:gui_green, s:cterm_dark_gray, s:cterm_green, 'bold' ] )

