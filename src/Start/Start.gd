extends Control

func _ready() -> void:
	MusicController.play_music()

func _on_StartButton_pressed() -> void:
	var _ignored = get_tree().change_scene("res://src/Level/Level.tscn")
