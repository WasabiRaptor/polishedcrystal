EnvironmentColorsPointers:
	dw .OutdoorColors ; unused
	dw .OutdoorColors ; TOWN
	dw .OutdoorColors ; ROUTE
	dw .IndoorColors ; INDOOR
	dw .DungeonColors ; CAVE
	dw .Perm5Colors ; PERM_5
	dw .IndoorColors ; GATE
	dw .DungeonColors ; DUNGEON

; Valid indices: $00 - $29
.OutdoorColors:
.Perm5Colors:
	db $00, $01, $02, $03, $04, $05, $06, $07 ; morn
	db $08, $09, $0a, $0b, $0c, $0d, $0e, $0f ; day
	db $10, $11, $12, $13, $14, $15, $16, $17 ; evening
	db $18, $19, $1a, $1b, $1c, $1d, $1e, $1f ; nite
	db $20, $21, $22, $23, $24, $25, $26, $27 ; dark

.IndoorColors:
	db $28, $29, $2a, $2b, $2c, $2d, $2e, $2f ; morn
	db $28, $29, $2a, $2b, $2c, $2d, $2e, $2f ; day
	db $18, $19, $1a, $1b, $1c, $1d, $1e, $1f ; evening
	db $18, $19, $1a, $1b, $1c, $1d, $1e, $1f ; nite
	db $20, $21, $22, $23, $24, $25, $26, $27 ; dark

.DungeonColors:
	db $00, $01, $02, $03, $04, $05, $06, $07 ; morn
	db $08, $09, $0a, $0b, $0c, $0d, $0e, $0f ; day
	db $10, $11, $12, $13, $14, $15, $16, $17 ; evening
	db $18, $19, $1a, $1b, $1c, $1d, $1e, $1f ; nite
	db $20, $21, $22, $23, $24, $25, $26, $27 ; dark
