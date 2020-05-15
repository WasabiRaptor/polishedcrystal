
    dw 00587 ;national dex no

    db  55,  75,  60, 103,  75,  60
    evs  0,   0,   0,   2,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db ELECTRIC, FLYING ; type
    db 200 ; catch rate
    db 150 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 4 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/emolga/front.dimensions"
    db STATIC, STATIC     ; abilities
    db MOTOR_DRIVE    ; hidden ability
    db GROWTH_MEDIUM_FAST ; growth rate
    dn EGG_FIELD ; egg groups
    db 3 ; number of portrait emotes

    ; tm/hm learnset
    tmhm
    ; end
