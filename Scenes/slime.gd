extends Node2D

const SPEED = 10
var direction = 1
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var ray_right: RayCast2D = $RayCastRight
@onready var ray_left: RayCast2D = $RayCastLeft

func _process(delta):
	if ray_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if ray_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	position.x += direction * SPEED * delta
