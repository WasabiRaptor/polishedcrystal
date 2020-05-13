
    dw 00047 ;national dex no

    db  60,  95,  80,  30,  60,  80
    evs  0,   2,   1,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db BUG, GRASS ; type
    db 75 ; catch rate
    db 142 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/parasect/front.dimensions"
    db EFFECT_SPORE, DRY_SKIN     ; abilities
    db DAMP    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_BUG, EGG_GRASS ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
