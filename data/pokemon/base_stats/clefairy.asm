	dw 00035 ;national dex no
        
        db  70,  45,  48,  35,  60,  65
        evs  2,   0,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf
        
        db FAIRY, FAIRY ; type
        db 150 ; catch rate
        db 113 ; base exp
        db NO_ITEM, NO_ITEM ; items
        dn FEMALE_75, 2 ; gender, step cycles to hatch
        INCBIN "gfx/pokemon/clefairy/front.dimensions"  
        db CUTE_CHARM, MAGIC_GUARD     ; abilities
        db FRIEND_GUARD    ; hidden ability
        db GROWTH_FAST ; growth rate
        dn EGG_FAIRY ; egg groups
        
        ; tm/hm learnset
        tmhm                                            
        ; end