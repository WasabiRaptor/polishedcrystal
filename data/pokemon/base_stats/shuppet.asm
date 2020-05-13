
    dw 00353 ;national dex no

    db  44,  75,  35,  45,  63,  33
    evs  0,   1,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db GHOST, GHOST ; type
    db 225 ; catch rate
    db 59 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 5 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/shuppet/front.dimensions"
    db INSOMNIA, FRISK     ; abilities
    db CURSED_BODY    ; hidden ability
    db GROWTH_FAST ; growth rate
    dn EGG_AMORPHOUS ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
