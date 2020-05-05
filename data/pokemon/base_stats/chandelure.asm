	dw 00609 ;national dex no

        db  60,  55,  90,  80, 145,  90
        evs  0,   0,   0,   0,   3,   0
        ;   hp  atk  def  spd  sat  sdf

        db GHOST, FIRE ; type
        db 45 ; catch rate
        db 234 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 4 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/chandelure/front.dimensions"
        db FLASH_FIRE, FLAME_BODY     ; abilities
        db INFILTRATOR    ; hidden ability
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_AMORPHOUS ; egg groups

        ; tm/hm learnset
        tmhm
        ; end
