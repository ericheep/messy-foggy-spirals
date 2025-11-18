inlets = 1
outlets = 1

var numberLeds = 27

var black = { "r": 0, "b": 0, "g": 0 }
var primaryColor = { "r": 0, "b": 0, "g": 0 }
var secondaryColor = { "r": 0, "b": 0, "g": 0 }
var targetPrimaryColor = { "r": 0, "b": 0,	"g": 0 }
var targetSecondaryColor = { "r": 0, "b": 0,	"g": 0 }

// setters
function setPrimaryHue() {
	var c = arrayfromargs(arguments);
	var h = c[0]
	var s = c[1]
	var v = c[2]
	
	var rgb = HSVtoRGB(c);
	targetPrimaryColor.r = rgb[0]; 
	targetPrimaryColor.g = rgb[1];
	targetPrimaryColor.b = rgb[2];
}
	
function setSecondaryHue() {
		
}

function setPrimaryColor() {
	var c = arrayfromargs(arguments);
	targetPrimaryColor.r = c[0]
	targetPrimaryColor.g = c[1]
	targetPrimaryColor.b = c[2]
}

function setSecondaryColor() {
	var c = arrayfromargs(arguments);
	targetSecondaryColor.r = c[0]
	targetSecondaryColor.g = c[1]
	targetSecondaryColor.b = c[2]
}

function HSVtoRGB(h, s, v) {
    var r, g, b, i, f, p, q, t;
    if (arguments.length === 1) {
        s = h.s, v = h.v, h = h.h;
    }
    i = Math.floor(h * 6);
    f = h * 6 - i;
    p = v * (1 - s);
    q = v * (1 - f * s);
    t = v * (1 - (1 - f) * s);
    switch (i % 6) {
        case 0: r = v, g = t, b = p; break;
        case 1: r = q, g = v, b = p; break;
        case 2: r = p, g = v, b = t; break;
        case 3: r = p, g = q, b = v; break;
        case 4: r = t, g = p, b = v; break;
        case 5: r = v, g = p, b = q; break;
    }
    return {
        r: Math.round(r * 255),
        g: Math.round(g * 255),
        b: Math.round(b * 255)
    };
}

function RGBtoHSV(r, g, b) {
    if (arguments.length === 1) {
        g = r.g, b = r.b, r = r.r;
    }
    var max = Math.max(r, g, b), min = Math.min(r, g, b),
        d = max - min,
        h,
        s = (max === 0 ? 0 : d / max),
        v = max / 255;

    switch (max) {
        case min: h = 0; break;
        case r: h = (g - b) + d * (g < b ? 6: 0); h /= 6 * d; break;
        case g: h = (b - r) + d * 2; h /= 6 * d; break;
        case b: h = (r - g) + d * 4; h /= 6 * d; break;
    }

    return {
        h: h,
        s: s,
        v: v
    };
}
	
function map(value, low1, high1, low2, high2) {
    return low2 + (high2 - low2) * (value - low1) / (high1 - low1);
}

// blend colors
function blendColorValue(a, b, t) {
	return Math.sqrt((1 - t) * (a * a) + t * (b * b))
}

function blendColors(colA, colB, t) {
	var r = blendColorValue(colA.r, colB.r, t)
	var g = blendColorValue(colA.g, colB.g, t)
	var b = blendColorValue(colA.b, colB.b, t)
	
	return { "r": r, "g": g, "b": b }
}

function tanh(x) {
    if( x < -3 ) return -1
    else if( x > 3 ) return 1
    else return x * ( 27 + x * x ) / ( 27 + 9 * x * x )
}

function interpolateColors(original, target, amount) {
	var invAmount = 1.0 - amount
	var r = invAmount * original.r + amount * target.r
	var g = invAmount * original.g + amount * target.g
	var b = invAmount * original.b + amount * target.b
	
	return { "r": r, "g": g, "b": b }
}

function update() {
	primaryColor = interpolateColors(primaryColor, targetPrimaryColor, 0.9)
	secondaryColor = interpolateColors(secondaryColor, targetSecondaryColor, 0.9)
	
	updateLeds()
}

function updateLeds() {
	for (var i = 0; i < numberLeds; i++) {
		leds[i] = interpolateColors(leds[i], targetLeds[i], 0.4)
		outlet(0, i, leds[i].r, leds[i].g, leds[i].b)
	}
}