extends Control


var previous_scene = Globals.return_previous_scene()
var next_scene = Globals.return_next_scene()


func _ready() -> void:
	if previous_scene == "res://Levels/MarsLevel/Mars.tscn":
		$VBoxContainer/NextButton.disabled = true
	if previous_scene == "res://Levels/BlackHoleLevel/BlackHole.tscn":
		$VBoxContainer/NextButton.disabled = true
	if Globals.secretUnlock == 1:
		$VBoxContainer/SecretMessage.visible = true
	else:
		$VBoxContainer/SecretMessage.visible = false

func _on_ReturnButton_pressed() -> void:
	Globals.continuous = 0
	var _ignored := get_tree().change_scene("res://UI/Start/Start.tscn")


func _on_RestartButton_pressed() -> void:
	var _ignored := get_tree().change_scene(previous_scene)


func _on_NextButton_pressed() -> void:
	var _ignored := get_tree().change_scene(next_scene)
