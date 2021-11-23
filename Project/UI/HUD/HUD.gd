class_name HUD
extends Control

onready var scoreLabel: Label = $VBoxContainer/PanelContainer/max_speed

func update_speed(score: int) -> void:
	scoreLabel.text = 'Top Speed: %d' % score
