extends Area2D
@onready var player: CharacterBody2D = $"../../player"
@onready var camera_2d: Camera2D = $"../../player/Camera2D"
@onready var timer: Timer = $Timer
var level = 0
func _on_body_entered(body):
	if body == player:
		level += 1 
		if level == 0:
			camera_2d.set_camera_limits(0, 0, 1150, 208)
			player.global_position = Vector2(114, 139)
		if level == 1:
			camera_2d.set_camera_limits(1185, 0, 2335, 208)
			player.global_position = Vector2(1264, 139)
		if level == 2:
			camera_2d.set_camera_limits(2370, 0, 3520, 208)
			player.global_position = Vector2(2449, 139)
		if level == 3:
			camera_2d.set_camera_limits(3355, 0, 4705, 208)
			player.global_position = Vector2(3634, 139)
		Engine.time_scale = 0.5
		timer.start()


func _on_timer_timeout() -> void:
	Engine.time_scale = 1
