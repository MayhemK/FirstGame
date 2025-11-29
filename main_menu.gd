extends Control

var button_type = null

func _ready():
	%Play.pressed.connect(play)
	%Quit.pressed.connect(quit_game)

func play():
	$fade.show()
	$fade/fade_timer.start()
	$fade/AnimationPlayer.play("fade_in")
	get_tree().change_scene_to_file('res://Scenes/game.tscn')

func quit_game():
	get_tree().quit()
