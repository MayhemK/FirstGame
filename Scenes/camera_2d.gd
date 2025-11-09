extends Camera2D
 
func set_camera_limits(new_limit_left: int, new_limit_top: int, new_limit_right: int, new_limit_bottom: int):
	limit_left = new_limit_left
	limit_top = new_limit_top
	limit_right = new_limit_right
	limit_bottom = new_limit_bottom
	global_position = global_position 
	
