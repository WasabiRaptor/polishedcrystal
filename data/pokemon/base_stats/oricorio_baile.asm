
    dw 00741 ;national dex no

    db  75,  70,  70,  93,  98,  70
    evs  0,   0,   0,   0,   2,   0
    ;   hp  atk  def  spd  sat  sdf

    db FIRE, FLYING ; type
    db 45 ; catch rate
    db 167 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_75, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/oricorio_baile/front.dimensions"
    db DANCER, DANCER     ; abilities
    db DANCER    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FLYING ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
