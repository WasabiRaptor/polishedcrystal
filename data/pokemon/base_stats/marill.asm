	dw 00undefined ;national dex no
        
        db  70,  20,  50,  40,  20,  50
        evs  2,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db WATER, FAIRY ; type
        db 190 ; catch rate
        db 88 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_50, 2 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/marill/front.dimensions"  
        db THICK_FAT, HUGE_POWER     ; abilities
        db SAP_SIPPER    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_WATER_1, EGG_FAIRY ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end