
    dw 00772 ;national dex no

    db  95,  95,  95,  59,  95,  95
    evs  2,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, NORMAL ; type
    db 3 ; catch rate
    db 107 ; base exp
	dw 0 ; field capabilities
    dn GENDERLESS, 15 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/type_null/front.dimensions"
    db BATTLE_ARMOR, BATTLE_ARMOR     ; abilities
    db BATTLE_ARMOR    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_NONE ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
