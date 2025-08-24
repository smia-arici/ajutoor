
var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _up = keyboard_check(vk_up) or keyboard_check(ord("S"));
var _down = keyboard_check(vk_down) or keyboard_check(ord("W"));

var _xinput = _right - _left;
var _yinput =_down - _up;

move_and_collide(_xinput * my_speed, _yinput * my_speed);

if ( keyboard_check(vk_left) or keyboard_check(ord("A")))
{image_xscale = -10;
}
if ( keyboard_check(vk_right) or keyboard_check(ord("D")))
{image_xscale = 10;
}

//pentru textbox 

if(mouse_check_button_pressed(mb_left)) {
	instance_create_layer(mouse_x, mouse_y, "text", Obj_textbox);
}