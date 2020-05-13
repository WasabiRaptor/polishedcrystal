
    dw 00184 ;national dex no

    db 100,  50,  80,  50,  60,  80
    evs  3,   0,   0,   0,   0,   0
    ;   hp  atk  def  spd  sat  sdf

    db WATER, FAIRY ; type
    db 75 ; catch rate
    db 189 ; base exp
	dw 0 ; field capabilities
    dn FEMALE_50, 2 ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/azumarill/front.dimensions"
    db THICK_FAT, HUGE_POWER     ; abilities
    db SAP_SIPPER    ; hidden ability
    db GROWTH_FAST ; growth rate
    dn EGG_WATER_1, EGG_FAIRY ; egg groups

    ; tm/hm learnset
    tmhm
    ; end
