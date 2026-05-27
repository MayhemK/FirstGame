extends HSlider

# Name of the audio bus you want to control (e.g., "Master" or "Music")
@export var bus_name: String = "Master"

var bus_index: int

func _ready() -> void:
	# Get the index of the audio bus
	bus_index = AudioServer.get_bus_index(bus_name)
	
	# Optional: Sync the slider's starting value with the current bus volume
	var current_db = AudioServer.get_bus_volume_db(bus_index)
	value = db_to_linear(current_db)


func _on_value_changed(new_value: float) -> void:
	# Convert the 0.0 - 1.0 slider value to Decibels
	var db_volume = linear_to_db(new_value)
	
	# Apply it to the audio server
	AudioServer.set_bus_volume_db(bus_index, db_volume)
	
	# If the slider is at 0, completely mute the bus to save processing and avoid faint static
	if new_value == 0:
		AudioServer.set_bus_mute(bus_index, true)
	else:
		AudioServer.set_bus_mute(bus_index, false)
func return_main_menu():
	get_tree().change_scene_to_file('res://Scenes/main_menu.tscn')
