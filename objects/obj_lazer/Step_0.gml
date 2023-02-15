if (global.state == States.LAZERS_ON) {
	var _distance = point_distance(x, y, 1000, 1000)
	var _number = _distance / 1

	for (var i = 4; i < _number; i++) {
		var _a = instance_create_layer(
			x + lengthdir_x(1 * i, image_angle + 90), 
			y + lengthdir_y(1 * i, image_angle + 90),
			"Instances",
			obj_lazer_beam
		)
		_a.image_angle = image_angle + 90
	}
}
else {
	instance_destroy(obj_lazer_beam)
}
