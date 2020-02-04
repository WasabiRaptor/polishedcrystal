; Johto Pokémon in grass

wild_mon: macro
	db \1, \2, GROUP_\2
endm

	map_id OUEST_PATHWAY
	db 10 percent, 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/evening/nite
	; morn
	wild_mon 2, TREECKO
	wild_mon 2, TURTWIG
	wild_mon 3, SNIVY
	wild_mon 3, BULBASAUR
	wild_mon 2, CHIKORITA
	wild_mon 3, SNIVY
	wild_mon 3, TREECKO
	; day
	wild_mon 2, MUDKIP
	wild_mon 2, PIPLUP
	wild_mon 3, OSHAWOTT
	wild_mon 3, SQUIRTLE
	wild_mon 2, TOTODILE
	wild_mon 3, PIPLUP
	wild_mon 3, OSHAWOTT
	; evening
	wild_mon 2, TORCHIC
	wild_mon 2, CHIMCHAR
	wild_mon 3, TEPIG
	wild_mon 3, CHARMANDER
	wild_mon 2, CYNDAQUIL
	wild_mon 3, TORCHIC
	wild_mon 3, CHIMCHAR
	; nite
	wild_mon 2, ZORUA
	wild_mon 2, EEVEE
	wild_mon 3, EEVEE
	wild_mon 3, ZORUA
	wild_mon 2, EEVEE
	wild_mon 3, EEVEE
	wild_mon 3, ZOROARK










	db -1 ; end
