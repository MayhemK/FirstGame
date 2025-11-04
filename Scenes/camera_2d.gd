extends Camera2D
 
func set_camera_limits(new_limit_left, new_limit_top, new_limit_right, new_limit_bottom):
	set_limit(SIDE_LEFT, 74)
	set_limit(SIDE_TOP, 0)
	set_limit(SIDE_RIGHT, 145)
	set_limit(SIDE_BOTTOM, 12)

	force_update_scroll()
