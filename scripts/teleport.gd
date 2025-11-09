extends Area2D
@onready var player: CharacterBody2D = $"../../player"
@onready var camera_2d: Camera2D = $"../../player/Camera2D"


func _on_body_entered(body):
	if body == player:
		print("you have finished the level")
		camera_2d.set_camera_limits(1185, 0, 145, 206)
