class_name HUD
extends Control

onready var bar: ProgressBar = $VBoxContainer/PanelContainer/ProgressBar

var level_distance

func init_progress_bar(distance_from_goal: int) -> void:
	bar.max_value = distance_from_goal
	level_distance = distance_from_goal
	
func update_progress_bar(distance_from_goal: int) -> void:
	bar.value = level_distance - distance_from_goal
