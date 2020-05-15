
    dw 00301 ;national dex no

    db  70,  65,  65,  90,  55,  55
    evs  1,   0,   0,   1,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, NORMAL ; type
    db 60 ; catch rate
    db 140 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_75, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/delcatty/front.dimensions"
    db CUTE_CHARM, NORMALIZE     ; abilities
    db WONDER_SKIN    ; hidden ability
    db GROWTH_FAST ; growth rate
    dn EGG_FIELD, EGG_FAIRY ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
