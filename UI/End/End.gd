class_name End
extends Control

func _ready():
	$VBoxContainer/Label.text = "Score: %d" % Globals.score

func _on_ReturnButton_pressed() -> void:
	Globals.score = 0
	var _ignored := get_tree().change_scene("res://UI/Start/Start.tscn")

func _on_RestartButton_pressed() -> void:
	Globals.score = 0
	var _ignored := get_tree().change_scene("res://Levels/EarthLevel/Level.tscn")
