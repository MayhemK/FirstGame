extends Area2D
@onready var player: CharacterBody2D = $"../../player"
@onready var camera_2d: Camera2D = $"../../player/Camera2D"
@onready var timer: Timer = $Timer
var level = 0
var xl = 0
var yt = 0
var xr = 1150
var yb = 208

func _on_body_entered(body):
	if body == player:
		level += 1
		xl += 1185
		xr += 1150
		
		camera_2d.set_camera_limits(xl, 0, xr, 208)
		player.global_position = Vector2((xl + 114), 139)
		Engine.time_scale = 0.5
		timer.start()


func _on_timer_timeout() -> void:
	Engine.time_scale = 1
