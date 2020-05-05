const fs = require('fs');
const region_regex = /nat_dexmon_group \d, GROUP_GENERATION_\w+\n((?:\t;?nat_dexmon(?:_form)? \w+(?:\s*;.*)?\n)*)NUM_(\w+?)_POKEMON EQU const_value \+-1/g;

fs.readFile("constants/national_dex_pokemon_constants.asm", "utf8", (err, data) => {
    if (err) {
        console.error(err);
        process.exit(1);
    }

    data.replace(region_regex, (match, list, region) => { //using this as a foreach type thing, not actually using the output at all
        let lastSpecies;
        list = list.split("\n").slice(0,-1).map(poke=>{
            let match = poke.match(/^\tnat_dexmon(_form)? (\w+)/);
            let isForm = match[1];
            let name = match[2]
            if (isForm){
                lastSpecies.forms.push({
                    lower: lastSpecies.lower + "_" + name.toLowerCase(),
                    upper: lastSpecies.upper + "_" + name.toUpperCase(),
                    title: lastSpecies.title + titleCase(name)
                })
                return null
            }
            else{
                lastSpecies = {
                    lower: name.toLowerCase(),
                    upper: name.toUpperCase(),
                    title: titleCase(name),
                    forms: []
                }
                return lastSpecies
            }
        }).filter(x => x != null);
        region = {
            lower: region.toLowerCase(),
            upper: region.toUpperCase(),
            title: titleCase(region),
        };

        console.log(region.title);

        // base data
        fs.writeFileSync(`data/pokemon/${region.lower}/base_stat_pointer_table.asm`,
            `${region.title}BaseDataPointerTable::\n` +
            list.map(poke=>`\tadd_basedatatable ${poke.title}\n`).join(""),
        "utf8");

        fs.writeFileSync(`data/pokemon/${region.lower}/base_stat_pointers.asm`,
            `${region.title}BaseDataPointers::\n\n` +
            list.map(poke=>`${poke.title}BaseDataPointers::\n\tadd_basedata ${poke.title}\n` +
                poke.forms.map(form=>`\tadd_basedata ${poke.title}\n`).join("") +
            `\n`).join(""),
        "utf8");

        fs.writeFileSync(`data/pokemon/${region.lower}/base_stats.asm`,
            `${region.title}BaseData::\n` +
            list.map(poke=>`${poke.title}BaseData::\tINCLUDE "data/pokemon/base_stats/${poke.lower}.asm"\n`+
                //poke.forms.map(form=>`${form.title}BaseData::\tINCLUDE "data/pokemon/base_stats/${form.lower}.asm"\n`).join("") + //similar brainwave to below, most forms actually don't change base data, and are just visual, so for less headache, when it generates it'll just point to the normal one
            `\n`).join(""),
        "utf8");

        //dex entries
        fs.writeFileSync(`data/pokemon/${region.lower}/dex_entry_pointer_table.asm`,
            `${region.title}PokedexEntryPointerTable::\n` +
            list.map(poke=>`\tadd_pokedexentrytable ${poke.title}\n`).join(""),
        "utf8");

        fs.writeFileSync(`data/pokemon/${region.lower}/dex_entry_pointers.asm`,
            `${region.title}PokedexEntryPointers::\n` +
            list.map(poke=>`${poke.title}PokedexEntryPointers::\n\tadd_pokedexentry ${poke.title}\n`+
                poke.forms.map(form=>`\tadd_pokedexentry ${poke.title}\n`).join("") + //see below
        `\n`).join(""),
        "utf8");

        fs.writeFileSync(`data/pokemon/${region.lower}_dex_entries.asm`,
            `INCLUDE "constants.asm"\n` +
            list.map((poke,i)=>
                (i % 30 ? "" : `\nSECTION "${region.title} Pokedex Entries ${i/30+1}", ROMX\n\n`) +
                `${poke.title}PokedexEntry::\tINCLUDE "data/pokemon/dex_entries/${poke.lower}.asm"\n`+
                    //poke.forms.map((form,i)=>`${form.title}PokedexEntry::\tINCLUDE "data/pokemon/dex_entries/${form.lower}.asm"\n`).join("") + //not every form is going to have a seperate dex entry, and most do not
            `\n`).join(""),
        "utf8");

        // evos attacks
        fs.writeFileSync(`data/pokemon/${region.lower}/evos_attacks_pointer_table.asm`,
            `${region.title}EvosAttacksPointerTable::\n` +
            list.map(poke=>`\tadd_evosattackstable ${poke.title}\n`).join(""),
        "utf8");

        fs.writeFileSync(`data/pokemon/${region.lower}/evos_attacks_pointers.asm`,
            `${region.title}EvosAttacksPointers::\n` +
            list.map(poke=>`${poke.title}EvosAttacksPointers::\n\tadd_evosattacks ${poke.title}\n`+
                poke.forms.map(form=>`\tadd_evosattacks ${form.title}\n`).join("") +
            `\n`).join(""),
        "utf8");

        // menu icon
        fs.writeFileSync(`data/pokemon/${region.lower}/menu_icon_pointer_table.asm`,
            `${region.title}IconPointerTable::\n` +
            list.map(poke=>`\tadd_icontable ${poke.title}\n`).join(""),
        "utf8");

        fs.writeFileSync(`data/pokemon/${region.lower}/menu_icon_pointers.asm`,
            `${region.title}IconPointers::\n` +
            list.map(poke=>`${poke.title}IconPointers::\n\tadd_icon ${poke.title}\n`+
                poke.forms.map(form=>`\tadd_icon ${form.title}\n`).join("") +
            `\n`).join(""),
        "utf8");

        fs.writeFileSync(`data/pokemon/${region.lower}/menu_icons.asm`,
            list.map((poke,i)=>
                (i % 15 ? "" : `\nSECTION "${region.title} Icons ${i/15+1}", ROMX\n\n`) +
                    `${poke.title}Icon::\tINCBIN "gfx/icons/${poke.lower}.2bpp"\n`+
                    poke.forms.map((form,i)=>`${form.title}Icon::\tINCBIN "gfx/icons/${form.lower}.2bpp"\n`).join("") +
            `\n`).join(""),
        "utf8");


        // names
        fs.writeFileSync(`data/pokemon/${region.lower}/name_pointer_table.asm`,
            `${region.title}NamePointerTable::\n` +
            list.map(poke=>`\tadd_nametable ${poke.title}\n`).join(""),
        "utf8");

        fs.writeFileSync(`data/pokemon/${region.lower}/name_pointers.asm`,
            `${region.title}NamePointers::\n` +
            list.map(poke=>`${poke.title}Names::\n\tadd_name ${poke.title}\n`+
                poke.forms.map(form=>`\tadd_name ${poke.title}\n`).join("") + //forms that change a pokemon's name are the exception, not the rule, so those will be defined manually and the generated pointer will point to the normal name
            `\n`).join(""),
        "utf8");

        fs.writeFileSync(`data/pokemon/${region.lower}/names.asm`,
            `${region.title}Names::\n` +
            list.map(poke=>`${poke.title}Name::\tdb "${poke.title}@"\n`).join(""),
        "utf8");

        // palettes
        fs.writeFileSync(`data/pokemon/${region.lower}/palette_pointer_table.asm`,
            `${region.title}PalettePointerTable::\n` +
            list.map(poke=>`\tadd_palettetable ${poke.title}\n`).join(""),
        "utf8");

        fs.writeFileSync(`data/pokemon/${region.lower}/palette_pointers.asm`,
            `${region.title}PalettePointers::\n` +
            list.map(poke=>`${poke.title}PalettePointers::\n\tadd_palettes ${poke.title}\n`+
                poke.forms.map(form=>`\tadd_palettes ${form.title}\n`).join("") +
            `\n`).join(""),
        "utf8");

        fs.writeFileSync(`data/pokemon/${region.lower}/palettes.asm`,
            `${region.title}Palettes:\n` +
            list.map(poke=>`${poke.title}Palettes:\n`+
            `${poke.title}NormalPalette:\tINCBIN "gfx/pokemon/${poke.lower}/front.gbcpal", middle_colors\n`+
            `${poke.title}ShinyPalette:\tINCLUDE "gfx/pokemon/${poke.lower}/shiny.pal"\n`+
                poke.forms.map(form=>`${form.title}Palettes:\n`+
                `${form.title}NormalPalette:\tINCBIN "gfx/pokemon/${form.lower}/front.gbcpal", middle_colors\n`+
                `${form.title}ShinyPalette:\tINCLUDE "gfx/pokemon/${form.lower}/shiny.pal"\n`).join("") +
            `\n`).join(""),
        "utf8");

        // pics
        fs.writeFileSync(`data/pokemon/${region.lower}/pic_pointer_table.asm`,
            `${region.title}PicPointerTable::\n` +
            list.map(poke=>`\tadd_pictable ${poke.title}\n`).join(""),
        "utf8");

        fs.writeFileSync(`data/pokemon/${region.lower}/pic_pointers.asm`,
            `${region.title}PicPointers::\n` +
            list.map(poke=>`${poke.title}PicPointers::\n\tadd_pics ${poke.title}\n`+
                poke.forms.map(form=>`\tadd_pics ${form.title}\n`).join("") +
            `\n`).join(""),
        "utf8");

        fs.writeFileSync(`gfx/pokemon/${region.lower}_pics.asm`,
        list.map((poke,i)=>
            //(i % 10 ? "" : `\nSECTION "${region.title} Pokemon Pics ${i/10+1}", ROMX\n\n`) +
            `\nSECTION "${poke.title} Pics", ROMX\n\n`+
            `${poke.title}Frontpic::\tINCBIN "gfx/pokemon/${poke.lower}/front.animated.2bpp.lz"\n`+
            `${poke.title}Backpic::\tINCBIN "gfx/pokemon/${poke.lower}/back.2bpp.lz"\n`+
                poke.forms.map((form,i)=>`${form.title}Frontpic::\tINCBIN "gfx/pokemon/${form.lower}/front.animated.2bpp.lz"\n`+
                `${form.title}Backpic::\tINCBIN "gfx/pokemon/${form.lower}/back.2bpp.lz"\n`).join("") +
            `\n`).join(""),
        "utf8");

        // bitmasks
        fs.writeFileSync(`data/pokemon/${region.lower}/bitmask_pointer_table.asm`,
            `${region.title}BitmasksPointerTable::\n` +
            list.map(poke=>`\tadd_bitmaskstable ${poke.title}\n`).join(""),
        "utf8");

        fs.writeFileSync(`data/pokemon/${region.lower}/bitmask_pointers.asm`,
            `${region.title}BitmasksPointers::\n` +
            list.map(poke=>`${poke.title}BitmasksPointers::\n\tadd_bitmasks ${poke.title}\n`+
                poke.forms.map(form=>`\tadd_bitmasks ${form.title}\n`).join("") +
            `\n`).join(""),
        "utf8");

        fs.writeFileSync(`data/pokemon/${region.lower}/bitmasks.asm`,
            `${region.title}Bitmasks:\n` +
            list.map(poke=>`${poke.title}Bitmasks:\tINCLUDE "gfx/pokemon/${poke.lower}/bitmask.asm"\n`+
                poke.forms.map(form=>`${form.title}Bitmasks::\tINCLUDE "gfx/pokemon/${form.lower}/bitmask.asm"\n`).join("") +
            `\n`).join(""),
        "utf8");

        // frames
        fs.writeFileSync(`data/pokemon/${region.lower}/frame_pointer_table.asm`,
            `${region.title}FramesPointerTable::\n` +
            list.map(poke=>`\tadd_framestable ${poke.title}\n`).join(""),
        "utf8");

        fs.writeFileSync(`data/pokemon/${region.lower}/frame_pointers.asm`,
            `${region.title}FramesPointers::\n` +
            list.map(poke=>`${poke.title}FramesPointers::\n\tadd_frames ${poke.title}\n`+
                poke.forms.map(form=>`\tadd_frames ${form.title}\n`).join("") +
            `\n`).join(""),
        "utf8");

        fs.writeFileSync(`data/pokemon/${region.lower}/frames.asm`,
            `${region.title}Frames: ; used only for BANK(${region.title}Frames)\n` +
            list.map(poke=>`${poke.title}Frames:\tINCLUDE "gfx/pokemon/${poke.lower}/frames.asm"\n`+
                poke.forms.map(form=>`${form.title}Frames::\tINCLUDE "gfx/pokemon/${form.lower}/frames.asm"\n`).join("") +
            `\n`).join(""),
        "utf8");

        // anims
        fs.writeFileSync(`data/pokemon/${region.lower}/anim_pointers.asm`,
            `${region.title}AnimationPointers::\n` +
            list.map(poke=>`${poke.title}AnimationPointers::\n\tadd_anim ${poke.title}\n`+
                poke.forms.map(form=>`\tadd_anim ${form.title}\n`).join("") +
            `\n`).join(""),
        "utf8");

        fs.writeFileSync(`data/pokemon/${region.lower}/anims.asm`,
            `${region.title}Animations:\n` +
            list.map(poke=>`${poke.title}Animation:\tINCLUDE "gfx/pokemon/${poke.lower}/anim.asm"\n`+
                poke.forms.map(form=>`${form.title}Animation::\tINCLUDE "gfx/pokemon/${form.lower}/anim.asm"\n`).join("") +
            `\n`).join(""),
        "utf8");

        // idles
        fs.writeFileSync(`data/pokemon/${region.lower}/idle_pointers.asm`,
            `${region.title}AnimationIdlePointers::\n` +
            list.map(poke=>`${poke.title}AnimationIdlePointers::\n\tadd_idleanim ${poke.title}\n`+
                poke.forms.map(form=>`\tadd_idleanim ${form.title}\n`).join("") +
            `\n`).join(""),
        "utf8");

        fs.writeFileSync(`data/pokemon/${region.lower}/idles.asm`,
            `${region.title}AnimationsIdle:\n` +
            list.map(poke=>`${poke.title}AnimationIdle:\tINCLUDE "gfx/pokemon/${poke.lower}/anim_idle.asm"\n`+
                poke.forms.map(form=>`${form.title}AnimationIdle::\tINCLUDE "gfx/pokemon/${form.lower}/anim_idle.asm"\n`).join("") +
            `\n`).join(""),
        "utf8");

        //animdata
        fs.writeFileSync(`data/pokemon/${region.lower}/anim_data_table.asm`,
            `${region.title}AnimPointerTable::\n` +
            list.map(poke=>`\tvariant_animdata ${poke.title}\n`).join(""),
        "utf8");

        //Overworld palettes
        fs.writeFileSync(`data/pokemon/${region.lower}/overworld_palette_pointer_table.asm`,
            `${region.title}OverworldPalettePointerTable::\n` +
            list.map(poke=>`\tadd_overworldpalettetable ${poke.title}\n`).join(""),
        "utf8");

        fs.writeFileSync(`data/pokemon/${region.lower}/overworld_palette_pointers.asm`,
            `${region.title}OverworldPalettePointers::\n` +
            list.map(poke=>`${poke.title}OverworldPalettePointers::\n\tadd_overworldpalettes ${poke.title}\n`+
                poke.forms.map(form=>`\tadd_overworldpalettes ${form.title}\n`).join("") +
            `\n`).join(""),
        "utf8");

        fs.writeFileSync(`data/pokemon/${region.lower}/overworld_palettes.asm`,
            `${region.title}OverworldPalettes:\n` +
            list.map(poke=>`${poke.title}OverworldPalettes:\n` +
            `${poke.title}NormalOverworldPaletteDawn:\tINCBIN "gfx/pokemon/${poke.lower}/overworld.gbcpal", middle_colors\n`+
            `${poke.title}NormalOverworldPaletteDay:\tINCBIN "gfx/pokemon/${poke.lower}/overworld.gbcpal", middle_colors\n`+
            `${poke.title}NormalOverworldPaletteDusk:\tINCBIN "gfx/pokemon/${poke.lower}/overworld.gbcpal", middle_colors\n`+
            `${poke.title}NormalOverworldPaletteMidnight:\tINCBIN "gfx/pokemon/${poke.lower}/overworld.gbcpal", middle_colors\n`+
            `${poke.title}NormalOverworldPaletteDark:\tINCBIN "gfx/pokemon/${poke.lower}/overworld.gbcpal", middle_colors\n`+
            `${poke.title}ShinyOverworldPaletteDawn:\tINCLUDE "gfx/pokemon/${poke.lower}/shiny.pal"\n` +
            `${poke.title}ShinyOverworldPaletteDay:\tINCLUDE "gfx/pokemon/${poke.lower}/shiny.pal"\n` +
            `${poke.title}ShinyOverworldPaletteDusk:\tINCLUDE "gfx/pokemon/${poke.lower}/shiny.pal"\n` +
            `${poke.title}ShinyOverworldPaletteMidnight:\tINCLUDE "gfx/pokemon/${poke.lower}/shiny.pal"\n` +
            `${poke.title}ShinyOverworldPaletteDark:\tINCLUDE "gfx/pokemon/${poke.lower}/shiny.pal"\n`+
            poke.forms.map(form=>`${form.title}OverworldPalettes::\n`+
            `${form.title}NormalOverworldPaletteDawn:\tINCBIN "gfx/pokemon/${form.lower}/overworld.gbcpal", middle_colors\n`+
            `${form.title}NormalOverworldPaletteDay:\tINCBIN "gfx/pokemon/${form.lower}/overworld.gbcpal", middle_colors\n`+
            `${form.title}NormalOverworldPaletteDusk:\tINCBIN "gfx/pokemon/${form.lower}/overworld.gbcpal", middle_colors\n`+
            `${form.title}NormalOverworldPaletteMidnight:\tINCBIN "gfx/pokemon/${form.lower}/overworld.gbcpal", middle_colors\n`+
            `${form.title}NormalOverworldPaletteDark:\tINCBIN "gfx/pokemon/${form.lower}/overworld.gbcpal", middle_colors\n`+
            `${form.title}ShinyOverworldPaletteDawn:\tINCLUDE "gfx/pokemon/${form.lower}/shiny_overworld.pal"\n` +
            `${form.title}ShinyOverworldPaletteDay:\tINCLUDE "gfx/pokemon/${form.lower}/shiny_overworld.pal"\n` +
            `${form.title}ShinyOverworldPaletteDusk:\tINCLUDE "gfx/pokemon/${form.lower}/shiny_overworld.pal"\n` +
            `${form.title}ShinyOverworldPaletteMidnight:\tINCLUDE "gfx/pokemon/${form.lower}/shiny_overworld.pal"\n` +
            `${form.title}ShinyOverworldPaletteDark:\tINCLUDE "gfx/pokemon/${form.lower}/shiny_overworld.pal"\n`).join("") +
        `\n`).join(""),
        "utf8");

        //Overworld Sprites
        fs.writeFileSync(`data/pokemon/${region.lower}/overworld_sprite_pointer_table.asm`,
            `${region.title}OverworldSpritePointerTable::\n` +
            list.map(poke=>`\tadd_overworldspritetable ${poke.title}\n`).join(""),
        "utf8");

        fs.writeFileSync(`data/pokemon/${region.lower}/overworld_sprite_pointers.asm`,
            `${region.title}OverworldSpritePointers::\n` +
            list.map(poke=>`${poke.title}OverworldSpritePointers::\n\tadd_overworldsprite ${poke.title}\n`+
                poke.forms.map(form=>`\tadd_overworldsprite ${form.title}\n`).join("") +
            `\n`).join(""),
        "utf8");

        fs.writeFileSync(`data/pokemon/${region.lower}/overworld_sprites.asm`,
            list.map((poke,i)=>
                //(i % 30 ? "" : `\nSECTION "${region.title} Overworld Sprites ${i/30+1}", ROMX\n\n`) +
                `\nSECTION "${poke.title} Overworld Sprites", ROMX\n\n`+
                `${poke.title}OverworldSprite::\tINCBIN "gfx/pokemon/${poke.lower}/overworld.2bpp" ;0\n`+
                    poke.forms.map((form,i)=>`${form.title}OverworldSprite::\tINCBIN "gfx/pokemon/${form.lower}/overworld.2bpp" ;${i+1}\n`).join("") +
            `\n`).join(""),
        "utf8");

        // footprints
        fs.writeFileSync(`data/pokemon/${region.lower}/footprint_pointer_table.asm`,
            `${region.title}FootprintPointerTable::\n` +
            list.map(poke=>`\tadd_footrpinttable ${poke.title}\n`).join(""),
        "utf8");

        fs.writeFileSync(`data/pokemon/${region.lower}/footprint_pointers.asm`,
            `${region.title}FootprintPointers::\n` +
            list.map(poke=>`${poke.title}FootprintPointers::\n\tadd_footprint ${poke.title}\n`+
                poke.forms.map(form=>`\tadd_footprint ${form.title}\n`).join("") +
            `\n`).join(""),
        "utf8");

        fs.writeFileSync(`gfx/${region.lower}_footprints.asm`,
        `\nSECTION "${region.title} Footprints", ROMX\n\n` +
        `${region.title}Footprints::\n`+
        list.map((poke,i)=>
            //`\nSECTION "${poke.title} Footprints", ROMX\n\n`+
            `${poke.title}Footprint::\tINCBIN "gfx/pokemon/${poke.lower}/footprint.1bpp"\n`+
                //poke.forms.map((form,i)=>`${form.title}Footprint::\tINCBIN "gfx/pokemon/${form.lower}/footprint.1bpp"\n`+
            `\n`).join(""),
        "utf8");


        return match;
    });
});

function titleCase(str) {
    return str.substr(0,1).toUpperCase() + str.substr(1).toLowerCase();
}

/* list of files to fill: (kanto/bulbasaur as example)

    data/pokemon/kanto_base_stats.asm - DONE
KantoBaseData::
INCLUDE "data/pokemon/base_stats/bulbasaur.asm"

    data/pokemon/kanto_dex_entries.asm - DONE
INCLUDE "constants.asm"

SECTION "Kanto Pokedex Entries 1", ROMX

BulbasaurPokedexEntry::  INCLUDE "data/pokemon/dex_entries/bulbasaur.asm"
30 per section

    data/pokemon/kanto_dex_entry_pointers.asm - DONE
KantoPokedexEntryPointers::
    add_pokedexentry Bulbasaur

    data/pokemon/kanto/evos_attacks_pointers.asm - DONE
KantoEvosAttacksPointers::
    add_evosattacks Bulbasaur

    data/pokemon/kanto_menu_icon_pointers.asm - DONE
KantoIconPointers::
    add_icon Bulbasaur

    data/pokemon/kanto_names.asm - DONE
KantoNames::
	db "Bulbasaur@"

    data/pokemon/kanto_palettes.asm - DONE
KantoPalettes:
INCBIN "gfx/pokemon/bulbasaur/front.gbcpal", middle_colors
INCLUDE "gfx/pokemon/bulbasaur/shiny.pal"

    data/pokemon/kanto_pic_pointers.asm - DONE
KantoPicPointers::
    add_pics Bulbasaur

    gfx/pokemon/kanto_anim_pointers.asm - DONE
KantoAnimationPointers::
    add_anim Bulbasaur

    gfx/pokemon/kanto_anims.asm - DONE
KantoAnimations:
BulbasaurAnimation:  INCLUDE "gfx/pokemon/bulbasaur/anim.asm"

    gfx/pokemon/kanto_bitmask_pointers.asm - DONE
KantoBitmasksPointers::
    add_bitmasks Bulbasaur

    gfx/pokemon/kanto_bitmasks.asm - DONE
KantoBitmasks:
BulbasaurBitmasks:  INCLUDE "gfx/pokemon/bulbasaur/bitmask.asm"

    gfx/pokemon/kanto_frame_pointers.asm - DONE
KantoFramesPointers::
    add_frames Bulbasaur

    gfx/pokemon/kanto_frames.asm - DONE
KantoFrames: ; used only for BANK(KantoFrames)
BulbasaurFrames:  INCLUDE "gfx/pokemon/bulbasaur/frames.asm"

    gfx/pokemon/kanto_idle_pointers.asm - DONE
KantoAnimationIdlePointers::
    add_idleanim Bulbasaur

    gfx/pokemon/kanto_idles.asm - DONE
KantoAnimationIdle:
BulbasaurAnimationIdle:  INCLUDE "gfx/pokemon/bulbasaur/anim_idle.asm"
*/