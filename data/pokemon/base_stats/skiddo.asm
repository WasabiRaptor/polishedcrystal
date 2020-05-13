
    dw 00672 ;national dex no

    db  66,  65,  48,  52,  62,  57
    evs  1,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db GRASS, GRASS ; type
    db 200 ; catch rate
    db 70 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/skiddo/front.dimensions"
    db SAP_SIPPER, SAP_SIPPER     ; abilities
    db GRASS_PELT    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FIELD ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
