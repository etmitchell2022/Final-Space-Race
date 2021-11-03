extends Control



func _on_Node2D_hill_passed(hills_passed):
	$VBoxContainer/ProgressBar.value = hills_passed
	Globals.score += 100
	$VBoxContainer/PanelContainer/Label.text = "Score %d" % Globals.score
