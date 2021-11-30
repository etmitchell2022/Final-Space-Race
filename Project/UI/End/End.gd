class_name End
extends Control


func _on_ReturnButton_pressed() -> void:
	var _ignored := get_tree().change_scene("res://Project/UI/Start/Start.tscn")


func _on_RestartButton_pressed() -> void:
	var previous_scene = Globals.return_previous_scene()
	var _ignored := get_tree().change_scene(previous_scene)
