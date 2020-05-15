
    dw 00391 ;national dex no

    db  64,  78,  52,  81,  78,  52
    evs  0,   0,   0,   1,   1,   0
    ;   hp  atk  def  spd  sat  sdf

    db FIRE, FIGHTING ; type
    db 45 ; catch rate
    db 142 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_12_5, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/monferno/front.dimensions"
    db BLAZE, BLAZE     ; abilities
    db IRON_FIST    ; hidden ability
    db GROWTH_MEDIUM_SLOW ; growth rate
    dn EGG_FIELD, EGG_HUMAN_LIKE ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
