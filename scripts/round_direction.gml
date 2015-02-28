/// round_direction(angle)

var dir = argument0;

var a = abs(angle_difference(  0, dir));
var b = abs(angle_difference( 45, dir));
var c = abs(angle_difference( 90, dir));
var d = abs(angle_difference(135, dir));
var e = abs(angle_difference(180, dir));
var f = abs(angle_difference(225, dir));
var g = abs(angle_difference(270, dir));
var h = abs(angle_difference(315, dir));

var closest = a, dir = 0;

if (b <= closest) { closest = b; dir =  45; }
if (c <= closest) { closest = c; dir =  90; }
if (d <= closest) { closest = d; dir = 135; }
if (e <= closest) { closest = e; dir = 180; }
if (f <= closest) { closest = f; dir = 225; }
if (g <= closest) { closest = g; dir = 270; }
if (h <= closest) { closest = h; dir = 315; }

return dir;