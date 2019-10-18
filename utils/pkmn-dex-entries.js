const fs = require('fs');
const {wrapString} = require("../tools/vw-text-wrap.js");

const entries = []
fs.readFileSync("../../pokedex/pokedex/data/csv/pokemon_species_flavor_text.csv", "utf8")
  .replace("species_id,version_id,language_id,flavor_text\n","").split("\"\n").forEach(entry => {
    let [id, game, lang] = entry.split(/,"?/,3);
    if (lang != 9 || (game != 26 && game != 29)) return;
    let desc = entry.split("\"")[1].replace(/\n/g," ");
    entries[id] = {desc};
});

// The line before pumpkaboo's entry is formatted weirdly, which messes up the parsing that should find this value.
// If pumpkaboo gets a new pokedex entry in a future game, this will probably have to be updated and/or removed.
entries[710] = {desc: "It is said to carry wandering spirits to the place where they belong so they can move on."};

fs.readFileSync("../../pokedex/pokedex/data/csv/pokemon_species_names.csv", "utf8")
  .replace("pokemon_species_id,local_language_id,name,genus\n","").split("\n").forEach(line => {
    let [id, lang, name, species] = line.split(",");
    if (lang != 9) return;
    if (entries[id]) {
        entries[id].name = name;
        entries[id].species = species.replace(" Pokémon","");
    } else {
        console.log(`Unique entry in pokemon_species_names.csv: ${id}\n\tName: ${name}\n\tSpecies: ${species}`);
    }
});

fs.readFileSync("../../pokedex/pokedex/data/csv/pokemon.csv", "utf8")
  .replace("id,identifier,species_id,height,weight,base_experience,order,is_default\n","").split("\n").forEach(line=>{
    let row = line.split(",");
    let id = row[0];
    let identifier = row[1];
    let height = row[3];
    let weight = row[4];
    if (entries[id]) {
        entries[id].height = height;
        entries[id].weight = weight;
        entries[id].identifier = identifier;
    } else {
        if (entries[row[2]]) { // copy data from base form
            entries[id] = {...entries[row[2]]}
            entries[id].height = height;
            entries[id].weight = weight;
            entries[id].identifier = identifier;
        } else if (id) {
            console.log(`Unique entry in pokemon.csv: ${id}\n\tIdentifier: ${identifier}\n\tHeight: ${height}\n\tWeight: ${weight}`);
        }
    }
    
});
entries.forEach(entry=>{
    if (!(entry.desc && entry.name && entry.species && entry.height && entry.weight && entry.identifier)) {
        console.log("Missing some data on this entry:", entry);
    }
    fs.writeFileSync(`../data/pokemon/dex_entries/${entry.identifier.replace(/-/g,"_")}.asm`,
`	db "${entry.species.toUpperCase()}@" ; species name
	dw ${entry.height}, ${entry.weight} ; height, weight

${wrapString("db", entry.desc, 18*8, "next", "\n\tpage", "\n\tpage", 3)}
`, "utf8");
});

/*
	db "PSI@" ; species name
	dw 211, 430 ; height, weight

	db   "It hypnotizes"
	next "itself so that it"
	next "can teleport away"

	page "when it senses"
	next "danger, even"
	next "if it is asleep.@"
*/