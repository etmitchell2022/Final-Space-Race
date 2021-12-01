class_name HUD
extends Control

onready var bar: ProgressBar = $VBoxContainer/PanelContainer/ProgressBar
onready var coinLabel: Label = $CoinLabel

var level_distance

func _process(_delta) -> void:
	coinLabel.text = str(Globals.coin_score)

func init_progress_bar(distance_from_goal: int) -> void:
	bar.max_value = distance_from_goal
	level_distance = distance_from_goal
	
func update_progress_bar(distance_from_goal: int) -> void:
	bar.value = level_distance - distance_from_goal
