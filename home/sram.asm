GetSRAMBank:: ; 2fcb
; load sram bank a
; if invalid bank, sram is disabled
	cp NUM_SRAM_BANKS
	jr c, OpenSRAM
	jr CloseSRAM
; 2fd1

OpenSRAM:: ; 2fd1
; switch to sram bank a
	push af
; enable sram/clock write
	ld a, SRAM_ENABLE
	ld [MBC5SRamEnable], a
; select sram bank
	pop af
	ld [MBC5SRamBank], a
	ret
; 2fe1

CloseSRAM:: ; 2fe1
	push af
	ld a, SRAM_DISABLE
; disable sram/clock write
	ld [MBC5SRamEnable], a
	pop af
	ret
; 2fec
