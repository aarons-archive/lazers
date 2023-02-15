
if (
	global.state == States.NONE 
	and 
	keyboard_check_pressed(global.PLACE_GUY_KEY)
) {
	global.state = States.PLACING_GUY
}
else if (
	global.state == States.NONE 
	and 
	collision_point(mouse_x, mouse_y, obj_guy, true, true) 
	and 
	mouse_check_button_pressed(global.MOVE_GUY_KEY)
) {
	global.state = States.MOVING_GUY
	moving = collision_point(mouse_x, mouse_y, obj_guy, true, true)
}


if (global.state == States.MOVING_GUY) {
	moving.x = mouse_x
	moving.y = mouse_y
	if (mouse_check_button_pressed(global.MOVE_GUY_KEY)) {
		global.state = States.NONE
		moving = noone
	}
}
else if (global.state == States.PLACING_GUY) {
	if (mouse_check_button_pressed(mb_left)) {
		global.state = States.NONE
		instance_create_layer(mouse_x, mouse_y, "Instances", obj_guy)
	}
}
