const fs = require('fs')
const { createCanvas, loadImage } = require('canvas')
const inCanvas = createCanvas(32, 32)
const inctx = inCanvas.getContext('2d')
const bgCanvas = createCanvas(32, 32)
const bgctx = bgCanvas.getContext('2d')
const fgCanvas = createCanvas(32, 32)
const fgctx = fgCanvas.getContext('2d')

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
    let bg1, bg2
    // iterate through pixels
    for (let i = 0; i < inData.length; i += 4) {
        let color = getColor(inData, i)

        // decide if it's bg or fg
        let bg = true
        if (compareColor(color, black) || compareColor(color, white)) {
            //
        } else if (bg1) {
            if (compareColor(color, bg1)) {
                //
            } else if (bg2) {
                if (compareColor(color, bg2)) {
                    //
                } else {
                    bg = false
                }
            } else {
                bg2 = color
            }
        } else {
            bg1 = color
        }

        // put it in the right place
        if (bg) {
            setColor(bgData, i, color)
            setColor(fgData, i, white)
        } else {
            setColor(bgData, i, white)
            setColor(fgData, i, color)
        }
    }

    // save images
    bgctx.putImageData(bgImageData, 0, 0)
    let bgWriter = fs.createWriteStream(filename.replace(".png", "BG.png"))
    let bgStream = bgCanvas.createPNGStream()
    bgStream.pipe(bgWriter)

    fgctx.putImageData(fgImageData, 0, 0)
    let fgWriter = fs.createWriteStream(filename.replace(".png", "OAM.png"))
    let fgStream = fgCanvas.createPNGStream()
    fgStream.pipe(fgWriter)
})