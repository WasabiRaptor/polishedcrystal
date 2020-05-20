const fs = require('fs')
const { createCanvas, loadImage } = require('canvas')
const inCanvas = createCanvas(32, 32)
const inctx = inCanvas.getContext('2d')
const bgCanvas = createCanvas(32, 32)
const bgctx = bgCanvas.getContext('2d', {pixelFormat: "A8"})
const fgCanvas = createCanvas(32, 32)
const fgctx = fgCanvas.getContext('2d', {pixelFormat: "A8"})

let filename = process.argv[2]
loadImage(filename).then(inImage => {
    inctx.drawImage(inImage, 0, 0)
    let inImageData = inctx.getImageData(0, 0, 32, 32)
    let inData = inImageData.data

    let bgImageData = bgctx.createImageData(32, 32)
    let bgData = bgImageData.data
    let fgImageData = fgctx.createImageData(32, 32)
    let fgData = fgImageData.data

    function getColor(data, i) {
        return [data[i+0], data[i+1], data[i+2], data[i+3]]
    }
    function setColor(data, i, color) {
        data[i+0] = color[0]
        data[i+1] = color[1]
        data[i+2] = color[2]
        data[i+3] = color[3]
    }
    function compareColor(c1, c2) {
        return c1[0] == c2[0] && c1[1] == c2[1] && c1[2] == c2[2] && c1[3] == c2[3]
    }

    const black = [0, 0, 0, 255]
    const white = [255, 255, 255, 255]
    const gradientColors = [
        [208, 255, 251, 255], [161, 245, 239, 255], // neutral
        [255, 243, 202, 255], [255, 228, 133, 255], // happy
        [177, 192, 233, 255], [121, 141, 189, 255], // sad
    ]
    let gradient = false
    for (let i = 0; i < inData.length; i += 4) {
        let color = getColor(inData, i)
        if (gradientColors.some(c => compareColor(color, c))) {
            gradient = true
            break
        }
    }
    let bg1, bg2
    let fg1, fg2, fg3
    // iterate through pixels
    for (let i = 0; i < inData.length/4; i += 1) {
        let color = getColor(inData, i*4)

        // decide if it's bg or fg
        let bg = true
        if (compareColor(color, black) || compareColor(color, white)) {
            //
        } else if (gradient && !gradientColors.some(c => compareColor(color, c))) {
            bg = false
            if (!fg1) fg1 = color
            else if (!compareColor(fg1, color)) {
                if (!fg2) fg2 = color
                else if (!compareColor(fg2, color)) {
                    if (!fg3) fg3 = color
                }
            }
        } else if (bg1) {
            if (compareColor(color, bg1)) {
                //
            } else if (bg2) {
                if (compareColor(color, bg2)) {
                    //
                } else {
                    bg = false
                    if (!fg1) fg1 = color
                    else if (!compareColor(fg1, color)) {
                        if (!fg2) fg2 = color
                        else if (!compareColor(fg2, color)) {
                            if (!fg3) fg3 = color
                        }
                    }
                }
            } else {
                bg2 = color
            }
        } else {
            bg1 = color
        }

        // put it in the right place
        if (bg) {
            let j = 2
            if (bg1 && compareColor(color, bg1)) j = 0
            if (bg2 && compareColor(color, bg2)) j = 1
            if (compareColor(color, black)) j = 3
            bgData[i] = j
            fgData[i] = 0
        } else {
            let j = 0
            if (fg1 && compareColor(color, fg1)) j = 1
            if (fg2 && compareColor(color, fg2)) j = 2
            if (fg3 && compareColor(color, fg3)) j = 3
            bgData[i] = 2
            fgData[i] = j
        }
    }

    // save images
    bgctx.putImageData(bgImageData, 0, 0)
    let bgWriter = fs.createWriteStream(filename.replace(".png", "BG.png"))
    let bgStream = bgCanvas.createPNGStream({palette: new Uint8ClampedArray(bg1.concat(bg2 || white).concat(white).concat(black))})
    bgStream.pipe(bgWriter)

    fgctx.putImageData(fgImageData, 0, 0)
    let fgWriter = fs.createWriteStream(filename.replace(".png", "OAM.png"))
    let fgStream = fgCanvas.createPNGStream({palette: new Uint8ClampedArray(white.concat(fg1).concat(fg2).concat(fg3))})
    fgStream.pipe(fgWriter)
})