#region

var k_left = keyboard_check(ord("A"))
var k_right = keyboard_check(ord("D"))
var k_up = keyboard_check(ord("W"))

#endregion

var move = k_right - k_left

hspd = move * vel

vspd = vspd + grv

if (hspd != 0) image_xscale = sign(hspd)

if place_meeting(x+hspd, y, obj_wall) {
	while (!place_meeting(x+sign(hspd), y, obj_wall)) {
		x = x + sign(hspd)
	}
	hspd = 0
}
x = x + hspd

if place_meeting(x, y+vspd, obj_wall) {
	while (!place_meeting(x, y+sign(vspd), obj_wall)) {
		y = y + sign(vspd)
	}
	vspd = 0
}
y = y + vspd

if place_meeting(x, y+1, obj_wall) and k_up{
	vspd -= 8
}
