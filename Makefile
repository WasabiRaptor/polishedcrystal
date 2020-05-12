NAME := pokebrass
VERSION := pre-alpha-0.1

TITLE := PKMN_BRASS
MCODE := PKBR
ROMVERSION := 0x30

FILLER = 0x00

ifeq (,$(shell which sha1sum))
SHA1 := shasum
else
SHA1 := sha1sum
endif

RGBASM := rgbasm
RGBFIX := rgbfix
RGBGFX := rgbgfx
RGBLINK := rgblink

RGBASM_FLAGS =
RGBLINK_FLAGS = -n $(BUILD_DIR)$(ROM_NAME).sym -m $(BUILD_DIR)$(ROM_NAME).map -l contents/contents.link -p $(FILLER)
RGBFIX_FLAGS = -Cjv -t $(TITLE) -i $(MCODE) -n $(ROMVERSION) -p $(FILLER) -k 01 -l 0x33 -m 0x1B -r 4

PYTHON := python
pcm := $(PYTHON) utils/pcm.py pcm

BUILD_DIR := build/
DEBUG_BUILD_DIR := build-debug/

ifeq ($(filter debug,$(MAKECMDGOALS)),debug)
RGBASM_FLAGS += -DDEBUG
BUILD_DIR := $(DEBUG_BUILD_DIR)
endif

brass_obj := \
$(BUILD_DIR)main.o \
$(BUILD_DIR)home.o \
$(BUILD_DIR)ram.o \
$(BUILD_DIR)audio.o \
$(BUILD_DIR)audio/musicplayer.o \
$(BUILD_DIR)audio/ded_cries.o \
$(BUILD_DIR)data/pokemon/kanto_dex_entries.o \
$(BUILD_DIR)data/pokemon/johto_dex_entries.o \
$(BUILD_DIR)data/pokemon/hoenn_dex_entries.o \
$(BUILD_DIR)data/pokemon/sinnoh_dex_entries.o \
$(BUILD_DIR)data/pokemon/unova_dex_entries.o \
$(BUILD_DIR)data/pokemon/kalos_dex_entries.o \
$(BUILD_DIR)data/pokemon/alola_dex_entries.o \
$(BUILD_DIR)data/pokemon/galar_dex_entries.o \
$(BUILD_DIR)data/pokemon/kanto_dex_order.o \
$(BUILD_DIR)data/pokemon/johto_dex_order.o \
$(BUILD_DIR)data/pokemon/hoenn_dex_order.o \
$(BUILD_DIR)data/pokemon/sinnoh_dex_order.o \
$(BUILD_DIR)data/pokemon/unova_dex_order.o \
$(BUILD_DIR)data/pokemon/kalos_dex_order.o \
$(BUILD_DIR)data/pokemon/alola_dex_order.o \
$(BUILD_DIR)data/pokemon/galar_dex_order.o \
$(BUILD_DIR)data/pokemon/invar_dex_order.o \
$(BUILD_DIR)data/pokemon/dex_order_alpha.o \
$(BUILD_DIR)data/pokemon/kanto_evos_attacks.o \
$(BUILD_DIR)data/pokemon/kanto_egg_moves.o \
$(BUILD_DIR)data/pokemon/johto_evos_attacks.o \
$(BUILD_DIR)data/pokemon/johto_egg_moves.o \
$(BUILD_DIR)data/pokemon/hoenn_evos_attacks.o \
$(BUILD_DIR)data/pokemon/hoenn_egg_moves.o \
$(BUILD_DIR)data/pokemon/sinnoh_evos_attacks.o \
$(BUILD_DIR)data/pokemon/sinnoh_egg_moves.o \
$(BUILD_DIR)data/pokemon/unova_evos_attacks.o \
$(BUILD_DIR)data/pokemon/unova_egg_moves.o \
$(BUILD_DIR)data/pokemon/kalos_evos_attacks.o \
$(BUILD_DIR)data/pokemon/kalos_egg_moves.o \
$(BUILD_DIR)data/pokemon/alola_evos_attacks.o \
$(BUILD_DIR)data/pokemon/alola_egg_moves.o \
$(BUILD_DIR)data/pokemon/galar_evos_attacks.o \
$(BUILD_DIR)data/pokemon/galar_egg_moves.o \
$(BUILD_DIR)data/maps/map_data.o \
$(BUILD_DIR)data/text/common.o \
$(BUILD_DIR)data/tilesets.o \
$(BUILD_DIR)engine/credits.o \
$(BUILD_DIR)engine/events.o \
$(BUILD_DIR)gfx/pics.o \
$(BUILD_DIR)gfx/sprites.o \
$(BUILD_DIR)gfx/kanto_footprints.o\
$(BUILD_DIR)gfx/johto_footprints.o\
$(BUILD_DIR)gfx/hoenn_footprints.o\
$(BUILD_DIR)gfx/sinnoh_footprints.o\
$(BUILD_DIR)gfx/unova_footprints.o\
$(BUILD_DIR)gfx/kalos_footprints.o\
$(BUILD_DIR)gfx/alola_footprints.o\
$(BUILD_DIR)gfx/galar_footprints.o\

### Build targets

.SUFFIXES:
.PHONY: all brass clean debug compare tools
.SECONDEXPANSION:
.PRECIOUS:
.SECONDARY:

all: brass
brass: FILLER = 0x00
brass: ROM_NAME = $(NAME)-$(VERSION)
brass: $(NAME)-$(VERSION).gbc

clean:
	$(RM) $(brass_obj) $(wildcard $(BUILD_DIR)$(NAME)-*.gbc) $(wildcard $(BUILD_DIR)$(NAME)-*.map) $(wildcard $(BUILD_DIR)$(NAME)-*.sym) $(wildcard $(DEBUG_BUILD_DIR)$(NAME)-*.gbc) $(wildcard $(DEBUG_BUILD_DIR)$(NAME)-*.map) $(wildcard $(DEBUG_BUILD_DIR)$(NAME)-*.sym)
	rm -r $(BUILD_DIR)
	rm -r $(DEBUG_BUILD_DIR)
	$(MAKE) clean -C tools/

debug: brass

compare: brass
	@$(SHA1) -c roms.sha1

tools:
	$(MAKE) -C tools/

# The dep rules have to be explicit or else missing files won't be reported.
# As a side effect, they're evaluated immediately instead of when the rule is invoked.
# It doesn't look like $(shell) can be deferred so there might not be a better way.
define DEP
$1: $2 $$(shell tools/scan_includes $2)
	$$(RGBASM) $$(RGBASM_FLAGS) -o $$@ $$<
endef

# Build tools when building the rom.
# This has to happen before the rules are processed, since that's when scan_includes is run.
ifeq (,$(filter clean tools,$(MAKECMDGOALS)))

$(info $(shell $(MAKE) -C tools))

$(foreach obj, $(brass_obj), $(eval $(call DEP,$(obj),$(subst $(BUILD_DIR),,$(obj:.o=.asm)))))

endif


%.gbc: $(BUILD_DIR) $(brass_obj)
	$(RGBLINK) $(RGBLINK_FLAGS) -o $(BUILD_DIR)$@ $(brass_obj)
	$(RGBFIX) $(RGBFIX_FLAGS) $(BUILD_DIR)$@
	tools/sort_symfile.sh $(BUILD_DIR)$(ROM_NAME).sym


$(BUILD_DIR):
	@echo "Making build directories..."
	mkdir -p $(BUILD_DIR)
	mkdir -p $(BUILD_DIR)audio
	mkdir -p $(BUILD_DIR)data
	mkdir -p $(BUILD_DIR)data/pokemon
	mkdir -p $(BUILD_DIR)data/maps
	mkdir -p $(BUILD_DIR)data/text
	mkdir -p $(BUILD_DIR)engine
	mkdir -p $(BUILD_DIR)gfx



# For files that the compressor can't match, there will be a .lz file suffixed with the md5 hash of the correct uncompressed file.
# If the hash of the uncompressed file matches, use this .lz instead.
# This allows pngs to be used for compressed graphics and still match.

%.lz: hash = $(shell tools/md5 $(*D)/$(*F) | sed "s/\(.\{8\}\).*/\1/")
%.lz: %
	$(eval filename := $@.$(hash))
	$(if $(wildcard $(filename)),\
		cp $(filename) $@,\
		tools/lzcomp -- $< $@)


### Pokemon pic animation rules

gfx/pokemon/%/front.animated.2bpp: gfx/pokemon/%/front.2bpp gfx/pokemon/%/front.dimensions
	tools/pokemon_animation_graphics -o $@ $^
gfx/pokemon/%/front.animated.tilemap: gfx/pokemon/%/front.2bpp gfx/pokemon/%/front.dimensions
	tools/pokemon_animation_graphics -t $@ $^
gfx/pokemon/%/bitmask.asm: gfx/pokemon/%/front.animated.tilemap gfx/pokemon/%/front.dimensions
	tools/pokemon_animation -b $^ > $@
gfx/pokemon/%/frames.asm: gfx/pokemon/%/front.animated.tilemap gfx/pokemon/%/front.dimensions
	tools/pokemon_animation -f $^ > $@



### Misc file-specific graphics rules

gfx/pokemon/%/back.2bpp: rgbgfx += -h

gfx/trainers/%.2bpp: rgbgfx += -h

gfx/portraits/%.2bpp: rgbgfx += -h



gfx/new_game/shrink1.2bpp: rgbgfx += -h
gfx/new_game/shrink2.2bpp: rgbgfx += -h

gfx/mail/dragonite.1bpp: tools/gfx += --remove-whitespace
gfx/mail/large_note.1bpp: tools/gfx += --remove-whitespace
gfx/mail/surf_mail_border.1bpp: tools/gfx += --remove-whitespace
gfx/mail/flower_mail_border.1bpp: tools/gfx += --remove-whitespace
gfx/mail/litebluemail_border.1bpp: tools/gfx += --remove-whitespace

gfx/pokedex/pokedex.2bpp: tools/gfx += --trim-whitespace
gfx/pokedex/sgb.2bpp: tools/gfx += --trim-whitespace
gfx/pokedex/slowpoke.2bpp: tools/gfx += --trim-whitespace

gfx/pokegear/pokegear.2bpp: rgbgfx += -x2
gfx/pokegear/pokegear_sprites.2bpp: tools/gfx += --trim-whitespace

gfx/mystery_gift/mystery_gift.2bpp: tools/gfx += --trim-whitespace

gfx/title/crystal.2bpp: tools/gfx += --interleave --png=$<
gfx/title/old_fg.2bpp: tools/gfx += --interleave --png=$<
gfx/title/logo.2bpp: rgbgfx += -x 4

gfx/trade/ball.2bpp: tools/gfx += --remove-whitespace
gfx/trade/game_boy_n64.2bpp: tools/gfx += --trim-whitespace

gfx/slots/slots_2.2bpp: tools/gfx += --interleave --png=$<
gfx/slots/slots_3.2bpp: tools/gfx += --interleave --png=$< --remove-duplicates --keep-whitespace --remove-xflip

gfx/card_flip/card_flip_2.2bpp: tools/gfx += --remove-whitespace

gfx/battle_anims/angels.2bpp: tools/gfx += --trim-whitespace
gfx/battle_anims/beam.2bpp: tools/gfx += --remove-xflip --remove-yflip --remove-whitespace
gfx/battle_anims/bubble.2bpp: tools/gfx += --trim-whitespace
gfx/battle_anims/charge.2bpp: tools/gfx += --trim-whitespace
gfx/battle_anims/egg.2bpp: tools/gfx += --remove-whitespace
gfx/battle_anims/explosion.2bpp: tools/gfx += --remove-whitespace
gfx/battle_anims/hit.2bpp: tools/gfx += --remove-whitespace
gfx/battle_anims/horn.2bpp: tools/gfx += --remove-whitespace
gfx/battle_anims/lightning.2bpp: tools/gfx += --remove-whitespace
gfx/battle_anims/misc.2bpp: tools/gfx += --remove-duplicates --remove-xflip
gfx/battle_anims/noise.2bpp: tools/gfx += --remove-whitespace
gfx/battle_anims/objects.2bpp: tools/gfx += --remove-whitespace --remove-xflip
gfx/battle_anims/pokeball.2bpp: tools/gfx += --remove-xflip --keep-whitespace
gfx/battle_anims/reflect.2bpp: tools/gfx += --remove-whitespace
gfx/battle_anims/rocks.2bpp: tools/gfx += --remove-whitespace
gfx/battle_anims/skyattack.2bpp: tools/gfx += --remove-whitespace
gfx/battle_anims/status.2bpp: tools/gfx += --remove-whitespace

gfx/player/chris.2bpp: rgbgfx += -h
gfx/player/chris_back.2bpp: rgbgfx += -h
gfx/player/kris.2bpp: rgbgfx += -h
gfx/player/kris_back.2bpp: rgbgfx += -h

gfx/trainer_card/chris_card.2bpp: rgbgfx += -h
gfx/trainer_card/kris_card.2bpp: rgbgfx += -h
gfx/trainer_card/leaders.2bpp: tools/gfx += --trim-whitespace

gfx/overworld/chris_fish.2bpp: tools/gfx += --trim-whitespace
gfx/overworld/kris_fish.2bpp: tools/gfx += --trim-whitespace

gfx/battle/dude.2bpp: rgbgfx += -h

gfx/font/unused_bold_font.1bpp: tools/gfx += --trim-whitespace

gfx/sgb/sgb_border.2bpp: tools/gfx += --trim-whitespace

gfx/unknown/unknown_egg.2bpp: rgbgfx += -h


### Catch-all graphics rules

%.2bpp: %.png
	$(RGBGFX) $(rgbgfx) -o $@ $<
	$(if $(tools/gfx),\
		tools/gfx $(tools/gfx) -o $@ $@)

%.1bpp: %.png
	$(RGBGFX) $(rgbgfx) -d1 -o $@ $<
	$(if $(tools/gfx),\
		tools/gfx $(tools/gfx) -d1 -o $@ $@)

%.gbcpal: %.png
	$(RGBGFX) -p $@ $<

%.dimensions: %.png
	tools/png_dimensions $< $@

%.wav: ;

#%.ded: %.wav dedenc.py
#	$(PYTHON) dedenc.py $< $@
