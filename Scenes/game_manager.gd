extends Node

var score = 0
@onready var label_2: Label = $"../Labels/Label2"

func add_point(add):
	score += add
	label_2.text = "You collected " + str(score) + "/20 coins"
	print(score)
