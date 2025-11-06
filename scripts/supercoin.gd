extends Area2D




func _on_body_entered(body):
	print("+5 coin")
	queue_free()
