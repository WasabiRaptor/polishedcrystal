
    dw 00242 ;national dex no

    db 255,  10,  10,  55,  75, 135
    evs  3,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, NORMAL ; type
    db 30 ; catch rate
    db 255 ; base exp
	dw 0 ; field capabilities
    dn ALL_FEMALE, 8 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/blissey/front.dimensions"
    db NATURAL_CURE, SERENE_GRACE     ; abilities
    db HEALER    ; hidden ability
    db GROWTH_FAST ; growth rate
    dn EGG_FAIRY ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
