class_name PauseMenu
extends Control

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("pause"):
		_handlePause()

func _handlePause() -> void:
	var new_pause_state = not get_tree().paused
	get_tree().paused = new_pause_state
	visible = new_pause_state


func _on_ResumeButton_pressed() -> void:
	get_tree().paused = false
	visible = false

func _on_ReturnHomeButton_pressed() -> void:
	get_tree().paused = false
	Globals.continuous = 0
	var _ignored := get_tree().change_scene("res:///UI/Start/Start.tscn")

	
