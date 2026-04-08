extends Node2D


var button_type = null

func _ready():
	%Play.pressed.connect(play)
	%Options.pressed.connect(options)
	%Quit.pressed.connect(quit_game)

func play():
	get_tree().change_scene_to_file('res://Scenes/game.tscn')
func options():
	get_tree().change_scene_to_file("res://Scenes/options.tscn")
func quit_game():
	get_tree().quit()
