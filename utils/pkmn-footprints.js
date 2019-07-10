/*
Takes pokemon footprints from a google spreadsheet and puts them into gfx/footprints.
Manual downloading of the spreadsheet is not required, this script does it itself.
*/

const sourceurl = "https://docs.google.com/spreadsheets/d/e/2PACX-1vSSkHs302JAnpCrI9L470p-dXclBaZgjNvB4DTimi7hdEEq2caJYMPih5cly8eyQ6rU4k4zzLKRjJ2Z/pubhtml"
const rowPattern = '<tr style=\'height:20px;\'><th id="\\w*?" style="height: 20px;" class="row-headers-background row-header-shim"><div class="row-header-wrapper" style="line-height: 20px;">\\w*?</div></th><td class="s0">(\\w*?)</td><td class="s1">(?:<div style="width:21px;height:20px;"><img src="(https://cdn.bulbagarden.net/upload/./../F....png)" style="width:inherit;height:inherit;object-fit:none;object-position:left bottom;"/></div>)?</td><td class="s2">(\\w*?)</td><td class="s2"(?: dir="ltr")?></td></tr>'
const outDir = "../gfx/footprints/"

const fs = require('fs');
const request = require('request-promise');

async function run() {
    let body = await request(sourceurl);
    let match;
    let i = 0;
    while (match = body.match(new RegExp(rowPattern))) {
        // console.log("found %d (%s): %s", i, match[3], match[1])
        if (match[2] == undefined);
        // console.log(body.substring(0, body.indexOf(match[0])));
        // console.log("%s\n%s\n%s", match[0], match[1], match[2]);
        // console.log(match[1], match[2]);
        body = body.substring(body.indexOf(match[0])+match[0].length);
        // if (i >= 150) console.log(body);
        // if (i++ < 152) continue;
        if (match[2] == undefined) continue;
        console.log("sending " + match[1]);
        let curMatch = match;
        let image = await request({url: match[2], encoding: 'binary'})
        console.log("gotten " + curMatch[1]);
        fs.writeFileSync(
            outDir+curMatch[1].toLowerCase().replace("&#39;","_").replace(" ♀","_f").replace(" ♂","_m")
            +".png", image, 'binary');
        console.log("saved " + curMatch[1]);
        // if (i++ > 5) return;
    }
}
run().then(()=>console.log("Done!")).catch(err=>console.error(err));

/*request(sourceurl, (error, response, body)=>{
    if (error) {
        console.error(error);
        return;
    }
    let match;
    let i = 0;
    while (match = body.match(new RegExp(rowPattern))) {
        // console.log(match[1], match[2]);
        body = body.substring(body.indexOf(match[0])+match[0].length);
        if (match[2] == undefined) continue;
        console.log("sending " + match[1]);
        let curMatch = match;
        request({url: match[2], encoding: 'binary'}, (error, response, body)=>{
            if (error) {
                console.error(error);
                return;
            }
            console.log(curMatch[1] + " gotten");
            fs.writeFile(outDir+curMatch[1].toLowerCase()+".png", body, 'binary', err=>{
                if (error) {
                    console.error(error);
                    return;
                }
                console.log(curMatch[1] + " saved");
            });
        });
        // if (i++ > 5) return;
    }
    console.log("Done!");
});*/