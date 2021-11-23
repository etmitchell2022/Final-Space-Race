class_name End
extends Control

func _ready():
	$VBoxContainer/Label.text = "Score: %d" % Globals._max_speed

func _on_ReturnButton_pressed() -> void:
	Globals.max_speed = 0
	var _ignored := get_tree().change_scene("res://Project/UI/Start/Start.tscn")


func _on_RestartButton_pressed() -> void:
	Globals._max_speed = 0
	var previous_scene = Globals.return_previous_scene()
	var _ignored := get_tree().change_scene(previous_scene)
