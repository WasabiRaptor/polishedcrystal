const fs = require('fs')
const { createCanvas, loadImage } = require('canvas')

function getColor(data, i) {
    return [data[i+0], data[i+1], data[i+2], data[i+3]]
}
function setColor(data, i, color) {
    data[i+0] = color[0]
    data[i+1] = color[1]
    data[i+2] = color[2]
    data[i+3] = color[3]
}
function diffColors(c1, c2) {
    return Math.abs(c1[0] - c2[0]) + Math.abs(c1[1] - c2[1]) + Math.abs(c1[2] - c2[2]) + Math.abs(c1[3] - c2[3])
}
function brightness(color) { // favor greys
    return color[1] * color[2]
         + color[2] * color[3]
         + color[3] * color[1]
}

const black = [0, 0, 0, 255]
const white = [255, 255, 255, 255]

let colorCount = 4
if (process.argv[2][0] == "-") colorCount = process.argv.splice(2, 1)[0].substr(1) - 0

process.argv.slice(2).map(filename => loadImage(filename).then(image => {

    let canvas = createCanvas(image.width, image.height)
    let ctx = canvas.getContext('2d')
    ctx.drawImage(image, 0, 0)
    let imageData = ctx.getImageData(0, 0, image.width, image.height)
    let data = imageData.data

    let colorIndex = {}
    let colorMap = []
    for (let i = 0; i < data.length; i += 4) {
        let color = getColor(data, i)
        if (diffColors(color, black) < 10) color = black
        if (diffColors(color, white) < 10) color = white
        if (!colorIndex[color.toString()]) {
            colorIndex[color.toString()] = colorMap.length
            colorMap[colorIndex[color.toString()]] = {color: color, count: 0}
        }
        colorMap[colorIndex[color.toString()]].count++
    }
    let sorted = colorMap.sort((a, b) => a.count - b.count).reverse()
    let targetColors = sorted.map(t=>t.color).slice(0, colorCount).sort((a, b) => brightness(a) - brightness(b))
    // targetColors[0] = [0, 0, 0, 255]
    // targetColors[colorCount-1] = [255, 255, 255, 255]
    // console.log(targetColors)

    for (let i = 0; i < data.length; i += 4) {
        let color = getColor(data, i)
        let target = targetColors.map(x=>x).sort((a, b) => diffColors(a, color) - diffColors(b, color))[0]
        if (diffColors(target, targetColors[0]) == 0) target = black // darkest color is always black
        if (diffColors(target, targetColors[colorCount-1]) == 0) target = white // lightest color is always white
        setColor(data, i, target)
    }

    ctx.putImageData(imageData, 0, 0)
    let writer = fs.createWriteStream(filename)
    let stream = canvas.createPNGStream()
    stream.pipe(writer)
}))