/*
https://pastebin.com/mBKX1Byd
Input format:
======
001 - Bulbasaur (Stage: 1)                                  dex, name
======
Galar Dex: Foreign
Base Stats: 45.49.49.65.65.45 (BST: 318)                    stats
EV Yield: 0.0.0.1.0.0                                       evs
Abilities: Overgrow (1) | Overgrow (2) | Chlorophyll (H)    abilities[0,1,2]
Type: Grass / Poison                                        types[0,1]
Items: None                                                 items?
EXP Group: MediumSlow                                       growth_rate
Egg Group: Monster / Grass                                  egg_groups[0,1]
Hatch Cycles: 20                                            hatch_cycles
Height: 00.70 m, Weight: 006.9 kg, Color: Green
Evolves into Ivysaur-0 @ 16 (LevelUp) [0]

two linebreaks between entries
missing: base exp, catch rate, gender ratio
tmhm could be gotten too, from the other pages, but it would need to be tailored for our tms anyway so there's no point

Output format:
	dw 00001 ;national dex no                       dex

	db 100, 100, 100, 100, 100, 100                 stats
	evs  0,   0,   0,   0,   0,   0                 evs
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type                        types[0,1]
	db 50 ; catch rate
	db 200 ; base exp
	dw 0 ; field capabilities                     items?
	dn FEMALE_50, 3 ; gender, step cycles to hatch  hatch_cycles
	INCBIN "gfx/pokemon/aa_dummy/front.dimensions"  name
	db 0, 0    ; abilities                          abilities[0,1]
	db 0    ; hidden ability                        abilities[2]
	db GROWTH_SLOW ; growth rate                    growth_rate_id
	dn NO_EGGS, NO_EGGS ; egg groups                egg_groups[0,1]

	; tm/hm learnset
	tmhm
	; end

linebreak at end
*/
const raw = x=>x.raw[0];

const fs = require("fs");
const request = require("request");
const inURL = "https://pastebin.com/raw/mBKX1Byd";
const outDir = "data/pokemon/base_stats/";

const growth_rates = {
    MediumFast: "GROWTH_MEDIUM_FAST",
    //"GROWTH_SLIGHTLY_FAST", unused
    //"GROWTH_SLIGHTLY_SLOW", unused
    MediumSlow: "GROWTH_MEDIUM_SLOW",
    Fast: "GROWTH_FAST",
    Slow: "GROWTH_SLOW",
    Erratic: "GROWTH_ERRATIC",
    Fluctuating: "GROWTH_FLUCTUATING",
}
const egg_groups = {
    Monster: "EGG_MONSTER",
	Water1: "EGG_WATER_1",
	Bug: "EGG_BUG",
	Flying: "EGG_FLYING",
	Field: "EGG_FIELD",
	Fairy: "EGG_FAIRY",
	Grass: "EGG_GRASS",
	HumanLike: "EGG_HUMAN_LIKE",
	Water3: "EGG_WATER_3",
	Mineral: "EGG_MINERAL",
	Amorphous: "EGG_AMORPHOUS",
	Water2: "EGG_WATER_2",
	Ditto: "EGG_DITTO",
	Dragon: "EGG_DRAGON",
    Undiscovered: "EGG_NONE",
}
request(inURL, (err, resp, body)=>{
    let dump = body.replace(/\r\n/g,"\n").split("\n\n");
    dump.forEach((entry, index) => {
        let data = entry.match(RegExp(
raw`======
(\d+) - (.+) \(Stage: \d\)
======
Galar Dex: .*
Base Stats: (\d+)\.(\d+)\.(\d+)\.(\d+)\.(\d+)\.(\d+) \(BST: \d+\)
EV Yield: (\d)\.(\d)\.(\d)\.(\d)\.(\d)\.(\d)
Abilities: (.+) \(1\) \| (.+) \(2\) \| (.+) \(H\)
Type: (\w+) ?/? ?(\w*)(?:
Items: None|
Item 1 \(50%\): (.+)
Item 2 \(5%\): (.+)
Item 3 \(1%\): (.+))
EXP Group: (.+)
Egg Group: (\w+) ?/? ?(\w*)
Hatch Cycles: (\d+)`));
        data.shift(); // too lazy to increment all of the numbers *again*
        let curpkmn = {
            id: data[0],
            name: data[1].toLowerCase().replace(/[-. :’]/g,"_"),
            stats: [data[2], data[3], data[4], data[7], data[5], data[6]], // spe needs to be moved to before spa/spd
            evs: [data[8], data[9], data[10], data[13], data[11], data[12]],
            abilities: [data[14], data[15], data[16]],
            types: [data[17], data[18] || data[17]],
            items: [data[19] || "NO_ITEM", data[20] || "NO_ITEM", data[21]], // third item is unused (for now?)
            growth_rate: growth_rates[data[22]],
            egg_groups: [egg_groups[data[23]], egg_groups[data[24]] || egg_groups[data[23]]],
            hatch_counter: data[25],
            capture_rate: 50,
            base_experience: 200,
            gender_rate: "FEMALE_50",
        };
        let baseStatData =
`
	dw ${"00000".substring((""+curpkmn.id).length)+curpkmn.id} ;national dex no

	db ${curpkmn.stats.map(s=>"   ".substring((""+s).length)+s).join(", ")}
	evs  ${curpkmn.evs.join(",   ")}
	;   hp  atk  def  spd  sat  sdf

	db ${curpkmn.types[0].toUpperCase()}, ${curpkmn.types[1].toUpperCase()} ; type
	db ${curpkmn.capture_rate} ; catch rate
	db ${curpkmn.base_experience} ; base exp
	dw 0 ; field capabilities
	dn ${curpkmn.gender_rate}, ${curpkmn.hatch_counter/5} ; gender, step cycles to hatch
	INCBIN "gfx/pokemon/${curpkmn.name}/front.dimensions"
	db ${curpkmn.abilities[0].replace(/[- ]/g,"_").toUpperCase()}, ${((curpkmn.abilities[1] || curpkmn.abilities[0]).replace(/[- ]/g,"_")).toUpperCase()}     ; abilities
	db ${(curpkmn.abilities[2] || curpkmn.abilities[0]).replace(/[- ]/g,"_").toUpperCase()}    ; hidden ability
	db ${curpkmn.growth_rate} ; growth rate
	dn ${curpkmn.egg_groups.join(", ")} ; egg groups
	db 3 ; number of portrait emotes

	; tm/hm learnset
	tmhm
	; end
`;
        fs.writeFileSync(outDir + curpkmn.name+".asm", baseStatData);
        console.log("Wrote " + curpkmn.name+".asm");
    });
    console.log("Done!");
});
