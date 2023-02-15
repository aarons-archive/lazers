if (global.state == States.PLACING_GUY) {
	draw_sprite_ext(
		obj_guy, 0,
		mouse_x, mouse_y,
		1, 1, 
		0,
		c_white, 1
	)
}

draw_text(10, 10, global.state)
