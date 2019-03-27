RGB: MACRO
rept _NARG / 3
if DEF(NOIR)
x = (299 * \1 + 587 * \2 + 114 * \3) / 1000
	dw palred x + palgreen x + palblue x
else
	dw palred (\1) + palgreen (\2) + palblue (\3)
endc
	shift
	shift
	shift
endr
ENDM

palred   EQUS "(1 << 0) *"
palgreen EQUS "(1 << 5) *"
palblue  EQUS "(1 << 10) *"

palettes EQUS "* PALETTE_SIZE"
palette  EQUS "+ PALETTE_SIZE *"
color    EQUS "+ PAL_COLOR_SIZE *"

tiles EQUS "* $10"
tile  EQUS "+ $10 *"

; extracts the middle two colors from a 2bpp binary palette
; example usage:
; INCBIN "foo.gbcpal", middle_colors
middle_colors EQUS "PAL_COLOR_SIZE, PAL_COLOR_SIZE * 2"
