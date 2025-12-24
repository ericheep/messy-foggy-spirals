const color = require("color.js")

let totalLeds = 90
let numLeds = 15
let numFixtures = 6

let fadeRate = 0.1
let globalFade = 0.0
let panAmplitude = 0.0
let panMaxAmplitude = 0.0

let fixtureOffset = 0
let leds = []
let sat = 1.0
let bri = 1.0;
let coolColor = {
    "r": 0,
    "g": 0,
    "b": 0
}

let brickSubtract = 99;

function setBrickSubtract(b) {
    brickSubtract = b
}

function setPanAmplitude(pa) {
    panAmplitude = pa
}

function setPan(pm) {
    panMaxAmplitude = pm * panAmplitude
}

function setFixtureOffset(o) {
    fixtureOffset = o
}

function setGlobalFade(f) {
    globalFade = f
}

function setFadeRate(f) {
    fadeRate = f
}

function allBright() {
    for (var i = 0; i < totalLeds; i++) {
        leds[i].v = 1.0;
    }
}

function setHotColor(r, g, b) {
    let hsv = color.RGBtoHSV(r, g, b)
    for (var i = 0; i < totalLeds; i++) {
        let led = {
                "index": i,
                "r": r,
                "g": g,
                "b": b,
                "h": hsv.h,
                "s": hsv.s,
                "v": hsv.v,
            }
    
        leds[i] = led;
    }
}

function setCoolColor(r, g, b) {
    coolColor = {
        "r": r,
        "g": g,
        "b": b
    }
}

function init() {
    totalLeds = numLeds * numFixtures
    
    leds = [];
    for (var i = 0; i < totalLeds; i++) {
        let rgb = color.HSVtoRGB(0, 0, 0)
    
        let led = {
                "index": i,
                "r": rgb.r,
                "g": rgb.g,
                "b": rgb.b,
                "h": 0.833,
                "s": 0.5,
                "v": 0.0,
            }
    
        leds.push(led);
    }
}

init();

function setNumLeds(n) {
    numLeds = n;
    init()
}

function setNumFixtures(n) {
    numFixtures = n;
    init()
}

function bang() {
    fade();
    output();
}

function trail(p) {
    let index = color.map(p, 0.0, 1.0, 0, totalLeds);
    index = Math.floor(index)

    leds[clamp(index, 0, totalLeds - 1)].v = 1.0
} 

function block(p, w) {
    let startIndex = color.map(p, 0.0, 1.0, 0, totalLeds);
    startIndex = Math.floor(startIndex)
    
    let endIndex = color.map(p + w, 0.0, 1.0, 0, totalLeds);
    endIndex = Math.floor(endIndex)

    if (startIndex < endIndex) {
        for (var i = startIndex; i < endIndex; i++) {
            leds[clamp(i, 0, totalLeds - 1)].v = 1.0
        }    
    } else {
        for (var i = 0; i < endIndex; i++) {
            leds[clamp(i, 0, totalLeds - 1)].v = 1.0
        } 
     }
}

function fade() {
    for (var i = 0; i < totalLeds; i++) {
        let led = leds[i]

        let v = clamp(led.v - fadeRate, 0.0, 1.0);
        led.v = v
    }
}

function setSaturation(s) {
    sat = s;
}

function setBrightness(b) {
    bri = b;
}


function output() {
    for (var i = 0; i < totalLeds; i++) {
        let led = leds[i]
        
        let s = led.s * sat
        let p = panMaxAmplitude
        let v = clamp((led.v + globalFade + p) * bri, 0.0, 1.0)
        
        let rgb = color.HSVtoRGB(led.h, s, v)
        let brickIndex = Math.floor(led.index / numLeds) 
        
        if (brickIndex >= brickSubtract) {
            brickIndex++;
        }
        
        
        outlet(0, [brickIndex + fixtureOffset, led.index % numLeds, rgb.r / 255, rgb.g / 255, rgb.b / 255])
    }
}

function clamp(num, lower, upper) {
    return Math.min(Math.max(num, lower), upper);
}
