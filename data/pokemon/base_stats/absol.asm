
    dw 00359 ;national dex no

    db  65, 130,  60,  75,  75,  60
    evs  0,   2,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db DARK, DARK ; type
    db 30 ; catch rate
    db 163 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 5 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/absol/front.dimensions"
    db PRESSURE, SUPER_LUCK     ; abilities
    db JUSTIFIED    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
