const fs = require('fs');

const widths = {
    "a": 4 +1, "b": 4 +1, "c": 4 +1, "d": 4 +1, "e": 4 +1, "f": 4 +1, "g": 4 +1, "h": 4 +1,
	"i": 2 +1, "j": 2 +1, "k": 4 +1, "l": 2 +1, "m": 7 +1, "n": 4 +1, "o": 4 +1, "p": 4 +1,
	"q": 4 +1, "r": 4 +1, "s": 4 +1, "t": 3 +1, "u": 4 +1, "v": 5 +1, "w": 7 +1, "x": 4 +1,
	"y": 4 +1, "z": 4 +1, "A": 5 +1, "B": 5 +1, "C": 5 +1, "D": 5 +1, "E": 4 +1, "F": 4 +1,
	"G": 5 +1, "H": 5 +1, "I": 3 +1, "J": 5 +1, "K": 5 +1, "L": 4 +1, "M": 7 +1, "N": 5 +1,
	"O": 5 +1, "P": 5 +1, "Q": 5 +1, "R": 5 +1, "S": 5 +1, "T": 5 +1, "U": 5 +1, "V": 5 +1,
	"W": 7 +1, "X": 5 +1, "Y": 5 +1, "Z": 5 +1, "(": 3 +1, ")": 3 +1, ".": 1 +1, ",": 2 +1,
	"?": 5 +1, "!": 3 +1, "-": 4 +1, ":": 1 +1, "é": 5 +1, "♀": 5 +1, "♂": 7 +1, "“": 5 +1,
	"”": 5 +1, "'": 2 +1, "0": 5 +1, "1": 2 +1, "2": 5 +1, "3": 5 +1, "4": 5 +1, "5": 5 +1,
	"6": 5 +1, "7": 5 +1, "8": 5 +1, "9": 5 +1, "/": 4 +1, " ": 3
};

function wrapString(first, input, maxWidth = 18*8) {
    let lines = [];
    let lineWidth = 0;
    let currentLine = "";
    let wordWidth = 0;
    let currentWord = "";
    for (i in input) {
        let char = input[i];
        let charWidth = widths[char] || 8;
        if (char != " ") {
            wordWidth += charWidth;
            currentWord += char;
            if (lineWidth + wordWidth > maxWidth) {
                lines.push(currentLine);
                currentLine = "";
                lineWidth = 0;
            }
        } else {
            currentLine += " " + currentWord;
            lineWidth += wordWidth + widths[" "];
            currentWord = "";
            wordWidth = 0;
        }
    }
    currentLine += " " + currentWord;
    lines.push(currentLine);
    "\t"+first+" \""
    return lines.map((line, i)=>{
        let start;
        if (i == 0) start = first;
        else if (i % 2) start = "line";
        else if (i == lines.length - 1) start = "cont";
        else start = "para";
        return `\t${start} "${line.substr(1)}"`;
        }).join("\n");
}
fs.open(process.argv[2], "r+", (err, fd) => {
    if (err) {
        console.error(err);
        process.exit(1);
    }
    fs.readFile(fd, "utf8", (err, data) => {
        if (err) {
            console.error(err);
            process.exit(1);
        }
        let out = data.split("\n").map(line => {
            if (line.match(/^\s+(text|para) "/)) {
                let [match, first, str] = line.match(/^\s+(text|para) "(.*)"$/);
                let wrapped = wrapString(first, str);
                return wrapped;
            } else {
                return line;
            }
        }).join("\n");
        fs.writeFile(process.argv[2], out, "utf8", err => {
            if (err) {
                console.error(err);
                process.exit(1);
            }
        });
    });
});