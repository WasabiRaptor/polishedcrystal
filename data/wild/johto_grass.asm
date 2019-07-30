; Johto Pokémon in grass

wild_mon: macro
	db \1, \2, GROUP_\2
endm

	map_id OUEST_PATHWAY
	db 10 percent, 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/evening/nite
	; morn
	wild_mon 2, CYNDAQUIL
	wild_mon 2, MEOWTH
	wild_mon 3, CYNDAQUIL
	wild_mon 3, MEOWTH
	wild_mon 2, CYNDAQUIL
	wild_mon 3, MEOWTH
	wild_mon 3, CYNDAQUIL
	; day
	wild_mon 2, CYNDAQUIL
	wild_mon 2, MEOWTH
	wild_mon 3, CYNDAQUIL
	wild_mon 3, MEOWTH
	wild_mon 2, CYNDAQUIL
	wild_mon 3, MEOWTH
	wild_mon 3, CYNDAQUIL
	; evening
	wild_mon 2, MEOWTH
	wild_mon 2, CYNDAQUIL
	wild_mon 3, MEOWTH
	wild_mon 3, CYNDAQUIL
	wild_mon 2, MEOWTH
	wild_mon 3, CYNDAQUIL
	wild_mon 3, MEOWTH
	; nite
	wild_mon 2, MEOWTH
	wild_mon 2, CYNDAQUIL
	wild_mon 3, MEOWTH
	wild_mon 3, CYNDAQUIL
	wild_mon 2, MEOWTH
	wild_mon 3, CYNDAQUIL
	wild_mon 3, MEOWTH










	db -1 ; end
