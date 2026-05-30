extends Node2D

@export var master_slider: HSlider
@export var bgm_slider: HSlider
@export var sfx_slider: HSlider

func _ready() -> void:
	setup_slider(master_slider, "Master")
	setup_slider(bgm_slider, "BGM")
	setup_slider(sfx_slider, "SFX")


func setup_slider(slider: HSlider, bus_name: String) -> void:
	if not slider: 
		print("Warning: Slider for ", bus_name, " is not assigned in the Inspector!")
		return
	
	var bus_index = AudioServer.get_bus_index(bus_name)
	
	var current_db = AudioServer.get_bus_volume_db(bus_index)
	slider.value = db_to_linear(current_db)
	
	slider.value_changed.connect(func(new_value: float):
		var db_volume = linear_to_db(new_value)
		AudioServer.set_bus_volume_db(bus_index, db_volume)
		
		if new_value == 0:
			AudioServer.set_bus_mute(bus_index, true)
		else:
			AudioServer.set_bus_mute(bus_index, false)
	)


func return_main_menu():
	get_tree().change_scene_to_file('res://Scenes/main_menu.tscn')
