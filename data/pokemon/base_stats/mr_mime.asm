
    dw 00122 ;national dex no

    db  40,  45,  65,  90, 100, 120
    evs  0,   0,   0,   0,   0,   2
    ;   hp  atk  def  spd  sat  sdf

    db PSYCHIC, FAIRY ; type
    db 45 ; catch rate
    db 161 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 5 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/mr_mime/front.dimensions"
    db SOUNDPROOF, FILTER     ; abilities
    db TECHNICIAN    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_HUMAN_LIKE ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
