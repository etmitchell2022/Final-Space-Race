class_name Start
extends Control

func _ready() -> void:
	MusicController.play_music()

func _on_StartButton_pressed() -> void:
	var _ignored = get_tree().change_scene("res://src/Level/Level.tscn")

func _on_MusicVolume_value_changed(value) -> void:
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), value)

func _on_SoundEffects_value_changed(value) -> void:
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SoundEffects"), value)
