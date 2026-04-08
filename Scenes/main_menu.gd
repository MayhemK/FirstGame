extends Node2D


var button_type = null

func _ready():
	%Play.pressed.connect(play)
	
	%Quit.pressed.connect(quit_game)

func play():
	print("Play button pressed")

	get_tree().change_scene_to_file('res://Scenes/game.tscn')

func quit_game():
	print("Quit Button Pressed")
	get_tree().quit()
