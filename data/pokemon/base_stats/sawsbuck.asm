
    dw 00586 ;national dex no

    db  80, 100,  70,  95,  60,  70
    evs  0,   2,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, GRASS ; type
    db 75 ; catch rate
    db 166 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/sawsbuck/front.dimensions"
    db CHLOROPHYLL, SAP_SIPPER     ; abilities
    db SERENE_GRACE    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
