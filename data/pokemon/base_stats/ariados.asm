
    dw 00168 ;national dex no

    db  70,  90,  70,  40,  60,  70
    evs  0,   2,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db BUG, POISON ; type
    db 90 ; catch rate
    db 140 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/ariados/front.dimensions"
    db SWARM, INSOMNIA     ; abilities
    db SNIPER    ; hidden ability
    db GROWTH_FAST ; growth rate
    dn EGG_BUG ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
