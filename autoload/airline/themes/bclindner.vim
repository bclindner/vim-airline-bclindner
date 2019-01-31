" bclindner vim theme
" based loosely on 'cool' theme from vim-airline/vim-airline-themes
let g:airline#themes#bclindner#palette = {}

let s:foreground= "#e3e3e3"
let s:background= "#1d1f21"
let s:cursorColor= "#e3e3e3"
"" black
let s:color0= "#1d1f21"
let s:color8= "#595f66"
"" red
let s:color1= "#af3131"
let s:color9= "#d05c5c"
"" green
let s:color2= "#65cc3e"
let s:color10= "#a6e174"
"" yellow
let s:color3= "#ee7d2f"
let s:color11= "#e4954c"
"" blue
let s:color4= "#4a8cc3"
let s:color12= "#65a7df"
"" magenta
let s:color5= "#875fd7"
let s:color13= "#af5fff"
"" cyan
let s:color6= "#45c3b3"
let s:color14= "#7cdacd"
"" white
let s:color7= "#777777"
let s:color15= "#e3e3e3"

" reference:
" each palette is an array of attributes for:
" [
" \ guifg,
" \ guibg,
" \ ctermfg,
" \ ctermbg,
" \ attrs (see :help attr-list)
" \ ]
"
" sections are:
" A      | B      | C            | X           | Y     | Z
" NORMAL | master | bclindner.vim          vim | utf-8 | 25% LN 17/63
"
" generate_color_map appears to combine A+Z, B+Y, and C+X together

" default colors for A/Z edge sections (constant between all modes)
let s:ALL_AZ = [ s:color0 , s:color15 , 0 , 15 ]

" NORMAL
let s:NORM_BY = [ s:color15, s:color13, 15, 13 ]
let s:NORM_CX = [ s:color15, s:color5, 15, 5 ]
let g:airline#themes#bclindner#palette.normal = airline#themes#generate_color_map(s:ALL_AZ, s:NORM_BY, s:NORM_CX)

" INSERT
let s:INS_BY = [ s:color0, s:color10, 15, 2 ]
let s:INS_CX = [ s:color0, s:color2, 15, 10 ]
let g:airline#themes#bclindner#palette.insert = airline#themes#generate_color_map(s:ALL_AZ, s:INS_BY, s:INS_CX)

" REPLACE
let s:REPL_BY = [ s:color15 , s:color9 , 15 , 9 ]
let s:REPL_CX = [ s:color15 , s:color1 , 15  , 1  ]
let g:airline#themes#bclindner#palette.replace =
      \ airline#themes#generate_color_map(s:ALL_AZ, s:REPL_BY, s:REPL_CX)

" VISUAL
let s:VIS_BY = [ s:color15 , s:color9 , 0 , 9 ]
let s:VIS_CX = [ s:color15 , s:color1 , 0 , 1 ]
let g:airline#themes#bclindner#palette.visual =
      \ airline#themes#generate_color_map(s:ALL_AZ, s:VIS_BY, s:VIS_CX)

" INACTIVE
let s:INC_BY = [ s:color15, s:color8, 15, 8 ]
let s:INC_CX = [ s:color15, s:color8, 15, 8 ]
let g:airline#themes#bclindner#palette.inactive =
      \ airline#themes#generate_color_map(s:ALL_AZ, s:INC_BY, s:INC_CX)

" CTRLP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let s:CTRLP_BY = [ s:color15, s:color13, 15, 13 ]
let s:CTRLP_CX = [ s:color15, s:color5, 15, 5 ]
let g:airline#themes#bclindner#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:ALL_AZ, s:CTRLP_BY, s:CTRLP_CX)
