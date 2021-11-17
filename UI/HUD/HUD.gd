class_name HUD
extends Control

onready var progressBar: ProgressBar = $VBoxContainer/ProgressBar
onready var scoreLabel: Label = $VBoxContainer/PanelContainer/max_speed
onready var hills_remaining: Label = $VBoxContainer/PanelContainer2/Hills_Remaining

func _on_Node2D_hill_passed(hills_passed: int) -> void:
	progressBar.value = hills_passed
	Globals.max_speed += 100
	scoreLabel.text = "Top Speed %d" % Globals.max_speed
	hills_remaining.text = "Hills Remaining: %d" % int(Globals.hills - hills_passed)
