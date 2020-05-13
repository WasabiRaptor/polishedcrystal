
    dw 00692 ;national dex no

    db  50,  53,  62,  44,  58,  63
    evs  0,   0,   0,   0,   1,   0
    ;   hp  atk  def  spd  sat  sdf

    db WATER, WATER ; type
    db 225 ; catch rate
    db 66 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/clauncher/front.dimensions"
    db MEGA_LAUNCHER, MEGA_LAUNCHER     ; abilities
    db MEGA_LAUNCHER    ; hidden ability
    db GROWTH_SLOW ; growth rate
    dn EGG_WATER_1, EGG_WATER_3 ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
