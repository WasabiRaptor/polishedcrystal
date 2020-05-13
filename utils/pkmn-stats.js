/*
Takes pokemon stat data from veekun's pokedex repo and puts it into data/pokemon/base_stats.
You must first clone https://github.com/veekun/pokedex into the same folder that this repository is in.
*/

/*
Output format:
    dw 00001 ;national dex no                       dex

    db 100, 100, 100, 100, 100, 100                 stats
    evs  0,   0,   0,   0,   0,   0                 evs
    ;   hp  atk  def  spd  sat  sdf

    db NORMAL, NORMAL ; type                        types[0,1]
    db 50 ; catch rate                              capture_rate
    db 200 ; base exp                               base_experience
    dw 0 ; field capabilities
    dn FEMALE_50, 3 ; gender, step cycles to hatch  gender_rate, hatch_counter
    INCBIN "gfx/pokemon/aa_dummy/front.dimensions"
    db 0, 0    ; abilities                          abilities[0,1]
    db 0    ; hidden ability                        abilities[2]
    db GROWTH_SLOW ; growth rate                    growth_rate_id
    dn NO_EGGS, NO_EGGS ; egg groups                egg_groups[0,1]

    ; tm/hm learnset
    tmhm
    ; end
*/

const fs = require("fs");
const inDir = "pokedex/pokedex/data/csv/";
const outDir = "data/pokemon/base_stats/";

const pkmndata = [];
const csv = {}

// pokemon list
// names, national dex, height, weight, base exp
console.log("Creating pokemon list...");
fs.readFileSync(inDir+"pokemon.csv").toString().split("\n").forEach((row, index)=>{
    if (index == 0) return;
        let data = row.split(",");
    let [id, identifier, species_id, height, weight, base_experience, order, is_default] = data;
    pkmndata[id] = {
        identifier, species_id, height, weight, base_experience,
    }
});

console.log("Collecting base stats...");
// base stats, evs
const stat_indices = [undefined, 1, 2, 3, 5, 6, 4]; //could be getting these from stats.csv but it's simple enough
fs.readFileSync(inDir+"pokemon_stats.csv").toString().split("\n").forEach((row, index)=>{
    if (index == 0) return;
    let data = row.split(",");
    let [pokemon_id, stat_id, base_stat, effort] = data;
    if (!("stats" in pkmndata[pokemon_id])) pkmndata[pokemon_id].stats = [];
    pkmndata[pokemon_id].stats[stat_indices[stat_id]-1] = base_stat;
    if (!("evs" in pkmndata[pokemon_id])) pkmndata[pokemon_id].evs = [];
    pkmndata[pokemon_id].evs[stat_indices[stat_id]-1] = effort;
});

console.log("Collecting types...");
// types
const types = []
fs.readFileSync(inDir+"types.csv").toString().split("\n").forEach((row, index)=>{
    if (index == 0) return;
    let data = row.split(",");
    let [id, identifier, generation_id, damage_class_id] = data;
    types[id] = identifier;
});
fs.readFileSync(inDir+"pokemon_types.csv").toString().split("\n").forEach((row, index)=>{
    if (index == 0) return;
    let data = row.split(",");
    let [pokemon_id, type_id, slot] = data;
    if (!("types" in pkmndata[pokemon_id])) pkmndata[pokemon_id].types = [];
    pkmndata[pokemon_id].types[slot-1] = types[type_id]
});

console.log("Collecting various information...");
// lots of stuff wow
const gender_rates = ["ALL_MALE", "FEMALE_12_5", "FEMALE_25", "FEMALE_37_5", "FEMALE_50", "FEMALE_62_5", "FEMALE_75", "FEMALE_87_5", "ALL_FEMALE"]
gender_rates[-1] = "GENDERLESS";
const growth_rates = [undefined, "GROWTH_SLOW", "GROWTH_MEDIUM_FAST", "GROWTH_FAST", "GROWTH_MEDIUM_SLOW", "GROWTH_ERRATIC", "GROWTH_FLUCTUATING"]
fs.readFileSync(inDir+"pokemon_species.csv").toString().split("\n").forEach((row, index)=>{
    if (index == 0) return;
    let data = row.split(",");
    let [id, identifier, generation_id, evolves_from_species_id,
        evolution_chain_id, color_id, shape_id, habitat_id, gender_rate,
        capture_rate, base_happiness, is_baby, hatch_counter,
        has_gender_differences, growth_rate_id, forms_switchable, order,
        conquest_order] = data;
    pkmndata[id] = {
        ...pkmndata[id], hatch_counter, has_gender_differences, capture_rate,
        gender_rate: gender_rates[gender_rate], growth_rate: growth_rates[growth_rate_id],
    }
});

console.log("Collecting abilities...");
// abilities
const abilities = []
fs.readFileSync(inDir+"abilities.csv").toString().split("\n").forEach((row, index)=>{
    if (index == 0) return;
    let data = row.split(",");
    let [id, identifier, generation_id, is_main_series] = data;
    abilities[id] = identifier;
});
fs.readFileSync(inDir+"pokemon_abilities.csv").toString().split("\n").forEach((row, index)=>{
    if (index == 0) return;
    let data = row.split(",");
    let [pokemon_id, ability_id, is_hidden, slot] = data;
    if (!("abilities" in pkmndata[pokemon_id])) pkmndata[pokemon_id].abilities = [];
    pkmndata[pokemon_id].abilities[slot-1] = abilities[ability_id]
});

console.log("Collecting egg groups...");
// egg groups
const egg_groups = [undefined, "EGG_MONSTER", "EGG_WATER_1", "EGG_BUG", "EGG_FLYING", "EGG_FIELD", "EGG_FAIRY", "EGG_GRASS", "EGG_HUMAN_LIKE", "EGG_WATER_3", "EGG_MINERAL", "EGG_AMORPHOUS", "EGG_WATER_2", "EGG_DITTO", "EGG_DRAGON", "EGG_NONE"]
fs.readFileSync(inDir+"pokemon_egg_groups.csv").toString().split("\n").forEach((row, index)=>{
    if (index == 0) return;
    let data = row.split(",");
    let [pokemon_id, egg_group_id] = data;
    if (!("egg_groups" in pkmndata[pokemon_id])) pkmndata[pokemon_id].egg_groups = [];
    pkmndata[pokemon_id].egg_groups.push(egg_groups[egg_group_id]);
});

/*console.log("Collecting TM/HM moves...");
// tm/hm
const moves = []
fs.readFileSync(inDir+"moves.csv").toString().split("\n").forEach((row, index)=>{
    if (index == 0) return;
    let data = row.split(",");
    let [id, identifier, generation_id, type_id, power, pp, accuracy,
        priority, target_id, damage_class_id, effect_id, effect_chance,
        contest_type_id, contest_effect_id, super_contest_effect_id] = data;
    moves[id] = identifier;
});
fs.readFileSync(inDir+"pokemon_moves.csv").toString().split("\n").forEach((row, index)=>{
    if (index == 0) return;
    let data = row.split(",");
    let [pokemon_id, version_group_id, move_id, pokemon_move_method_id, level, order] = data;
    if (pokemon_move_method_id != 4) return;
    if (!("tmhm" in pkmndata[pokemon_id])) pkmndata[pokemon_id].tmhm = [];
    pkmndata[pokemon_id].tmhm.push(moves[move_id]);
});*/

console.log("Done!");
console.log("Writing " + pkmndata.length + " pokemon...");
// console.log(pkmndata[1]);
pkmndata.forEach((curpkmn, index) => {
    if (index > 10000) return; //forms are missing a bunch of stuff and I'm too lazy to figure out a good way to use the base things
    let baseStatData =
`
    dw ${"00000".substring((""+curpkmn.species_id).length)+curpkmn.species_id} ;national dex no

    db ${curpkmn.stats.map(s=>"   ".substring((""+s).length)+s).join(", ")}
    evs  ${curpkmn.evs.join(",   ")}
    ;   hp  atk  def  spd  sat  sdf

    db ${curpkmn.types[0].toUpperCase()}, ${curpkmn.types[curpkmn.types.length-1].toUpperCase()} ; type
    db ${curpkmn.capture_rate} ; catch rate
    db ${curpkmn.base_experience} ; base exp
	dw 0 ; field capabilities
    dn ${curpkmn.gender_rate}, ${curpkmn.hatch_counter/5} ; gender, step cycles to hatch
    INCBIN "gfx/pokemon/${curpkmn.identifier.replace(/-/g,"_")}/front.dimensions"
    db ${curpkmn.abilities[0].replace(/-/g,"_").toUpperCase()}, ${((curpkmn.abilities[1] || curpkmn.abilities[0]).replace(/-/g,"_")).toUpperCase()}     ; abilities
    db ${(curpkmn.abilities[2] || curpkmn.abilities[0]).replace(/-/g,"_").toUpperCase()}    ; hidden ability
    db ${curpkmn.growth_rate} ; growth rate
    dn ${curpkmn.egg_groups.join(", ")} ; egg groups

    ; tm/hm learnset
    tmhm
    ; end\n`;
    fs.writeFileSync(outDir+curpkmn.identifier.replace(/-/g,"_")+".asm", baseStatData);
    console.log("Wrote " + curpkmn.identifier.replace(/-/g,"_")+".asm");
});
console.log("Done!");
