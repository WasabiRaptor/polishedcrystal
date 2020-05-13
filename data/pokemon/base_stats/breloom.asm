
    dw 00286 ;national dex no

    db  60, 130,  80,  70,  60,  60
    evs  0,   2,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db GRASS, FIGHTING ; type
    db 90 ; catch rate
    db 161 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/breloom/front.dimensions"
    db EFFECT_SPORE, POISON_HEAL     ; abilities
    db TECHNICIAN    ; hidden ability
    db GROWTH_FLUCTUATING ; growth rate
    dn EGG_FAIRY, EGG_GRASS ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
