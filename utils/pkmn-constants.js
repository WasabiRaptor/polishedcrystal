const fs = require('fs');
const region_regex = /nat_dexmon_group \d, GROUP_GENERATION_\w+\n((?:\t;?nat_dexmon \w+(?:\s*;.*)?\n)*)NUM_(\w+?)_POKEMON EQU const_value \+-1/g;

fs.readFile("constants/national_dex_pokemon_constants.asm", "utf8", (err, data) => {
    if (err) {
        console.error(err);
        process.exit(1);
    }
    data.replace(region_regex, (match, list, region) => { //using this as a foreach type thing, not actually using the output at all
        list = list.split("\n").slice(0,-1).map(poke=>{
            let name = poke.match(/^\tnat_dexmon (\w+)/)[1];
            return {
                lower: name.toLowerCase(),
                upper: name.toUpperCase(),
                title: titleCase(name),
            }
        });
        region = {
            lower: region.toLowerCase(),
            upper: region.toUpperCase(),
            title: titleCase(region),
        };
        
        console.log(region.title);
        
        fs.writeFileSync(`data/pokemon/${region.lower}_base_stats.asm`,
            `${region.title}BaseData::\n` +
            list.map(poke=>`INCLUDE "data/pokemon/base_stats/${poke.lower}.asm"\n`).join(""),
        "utf8");
        fs.writeFileSync(`data/pokemon/${region.lower}_dex_entries.asm`,
            `INCLUDE "constants.asm"\n` +
            list.map((poke,i)=>
                (i % 30 ? "" : `\nSECTION "${region.title} Pokedex Entries ${i/30+1}", ROMX\n\n`) +
                `${poke.title}PokedexEntry::  INCLUDE "data/pokemon/dex_entries/${poke.lower}.asm"\n`
            ).join(""),
        "utf8");
        fs.writeFileSync(`data/pokemon/${region.lower}_dex_entry_pointers.asm`,
            `${region.title}PokedexEntryPointers::\n` +
            list.map(poke=>`\tadd_pokedexentry ${poke.title}\n`).join(""),
        "utf8");
        fs.writeFileSync(`data/pokemon/${region.lower}_evos_attacks_pointers.asm`,
            `${region.title}EvosAttacksPointers::\n` +
            list.map(poke=>`\tadd_evosattacks ${poke.title}\n`).join(""),
        "utf8");
        fs.writeFileSync(`data/pokemon/${region.lower}_menu_icon_pointers.asm`,
            `${region.title}IconPointers::\n` +
            list.map(poke=>`\tadd_icon ${poke.title}\n`).join(""),
        "utf8");
        fs.writeFileSync(`data/pokemon/${region.lower}_names.asm`,
            `${region.title}Names::\n` +
            list.map(poke=>`\tdb "${poke.title}@"\n`).join(""),
        "utf8");
        fs.writeFileSync(`data/pokemon/${region.lower}_palettes.asm`,
            `${region.title}Palettes:\n` +
            list.map(poke=>`INCBIN "gfx/pokemon/${poke.lower}/front.gbcpal", middle_colors\n`+
            `INCLUDE "gfx/pokemon/${poke.lower}/shiny.pal"\n`).join(""),
        "utf8");
        fs.writeFileSync(`data/pokemon/${region.lower}_pic_pointers.asm`,
            `${region.title}PicPointers::\n` +
            list.map(poke=>`\tadd_pic ${poke.title}\n`).join(""),
        "utf8");
        fs.writeFileSync(`gfx/pokemon/${region.lower}_anim_pointers.asm`,
            `${region.title}AnimationPointers::\n` +
            list.map(poke=>`\tadd_anim ${poke.title}\n`).join(""),
        "utf8");
        fs.writeFileSync(`gfx/pokemon/${region.lower}_anims.asm`,
            `${region.title}Animations:\n` +
            list.map(poke=>`${poke.title}Animation:  INCLUDE "gfx/pokemon/${poke.lower}/anim.asm"\n`).join(""),
        "utf8");
        fs.writeFileSync(`gfx/pokemon/${region.lower}_bitmask_pointers.asm`,
            `${region.title}BitmasksPointers::\n` +
            list.map(poke=>`\tadd_bitmasks ${poke.title}\n`).join(""),
        "utf8");
        fs.writeFileSync(`gfx/pokemon/${region.lower}_bitmasks.asm`,
            `${region.title}Bitmasks:\n` +
            list.map(poke=>`${poke.title}Bitmasks:  INCLUDE "gfx/pokemon/${poke.lower}/bitmask.asm"\n`).join(""),
        "utf8");
        fs.writeFileSync(`gfx/pokemon/${region.lower}_frame_pointers.asm`,
            `${region.title}FramesPointers::\n` +
            list.map(poke=>`\tadd_frames ${poke.title}\n`).join(""),
        "utf8");
        fs.writeFileSync(`gfx/pokemon/${region.lower}_frames.asm`,
            `${region.title}Frames: ; used only for BANK(${region.title}Frames)\n` +
            list.map(poke=>`${poke.title}Frames:  INCLUDE "gfx/pokemon/${poke.lower}/frames.asm"\n`).join(""),
        "utf8");
        fs.writeFileSync(`gfx/pokemon/${region.lower}_idle_pointers.asm`,
            `${region.title}AnimationIdlePointers::\n` +
            list.map(poke=>`\tadd_idleanim ${poke.title}\n`).join(""),
        "utf8");
        fs.writeFileSync(`gfx/pokemon/${region.lower}_idles.asm`,
            `${region.title}AnimationIdle:\n` +
            list.map(poke=>`${poke.title}AnimationIdle:  INCLUDE "gfx/pokemon/${poke.lower}/anim_idle.asm"\n`).join(""),
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

    data/pokemon/kanto_evos_attacks_pointers.asm - DONE
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