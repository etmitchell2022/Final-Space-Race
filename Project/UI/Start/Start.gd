class_name Start
extends Control

onready var settingsMenu = $SettingsMenu
onready var transition = $TransitonColor
onready var vehicleMenu: PopupMenu = $VehicleMenu


func _ready() -> void:
	MusicController.play_music()

func _on_StartButton_pressed() -> void:
	transition.transition_to("res://Project/UI/LevelMenu/LevelMenu.tscn")

func _on_MusicVolume_value_changed(value) -> void:
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), value)

func _on_SoundEffects_value_changed(value) -> void:
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SoundEffects"), value)


func _on_SettingsButton_toggled(button_pressed: bool) -> void:
	if button_pressed:
		settingsMenu.show()
	else:
		settingsMenu.hide()

func _on_VehicleMenuOpen_pressed() -> void:
	vehicleMenu.show()

func _on_VehicleMenu_id_pressed(id) -> void:
	var vehicle_id_array = [0, 1, 2]
	vehicleMenu.set_item_checked(id, true)
	for item in vehicle_id_array:
		if id != item:
			vehicleMenu.set_item_checked(item, false)
	
	Globals.load_vehicle(id)

