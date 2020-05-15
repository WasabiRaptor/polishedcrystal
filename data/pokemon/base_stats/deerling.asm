
    dw 00585 ;national dex no

    db  60,  60,  50,  75,  40,  50
    evs  0,   0,   0,   1,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, GRASS ; type
    db 190 ; catch rate
    db 67 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/deerling/front.dimensions"
    db CHLOROPHYLL, SAP_SIPPER     ; abilities
    db SERENE_GRACE    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
