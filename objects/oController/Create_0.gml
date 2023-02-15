global.ENABLE_LAZERS_KEY = vk_enter
global.PLACE_GUY_KEY = ord("P")
global.MOVE_GUY_KEY = mb_left

enum States {
	NONE,
	PLACING_GUY,
	MOVING_GUY,
	LAZERS_ON
}
global.state = States.NONE

moving = noone