class_name End
extends Control

func _on_ReturnButton_pressed() -> void:
	Globals.score = 0
	var _ignored := get_tree().change_scene("res://src/Start/Start.tscn")

func _on_RestartButton_pressed() -> void:
	Globals.score = 0
	var _ignored := get_tree().change_scene("res://src/Level/Level.tscn")
