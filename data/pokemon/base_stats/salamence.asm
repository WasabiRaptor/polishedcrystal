
    dw 00373 ;national dex no

    db  95, 135,  80, 100, 110,  80
    evs  0,   3,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db DRAGON, FLYING ; type
    db 45 ; catch rate
    db 255 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 8 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/salamence/front.dimensions"
    db INTIMIDATE, INTIMIDATE     ; abilities
    db MOXIE    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_DRAGON ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
