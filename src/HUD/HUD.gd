extends Control

func _on_Node2D_hill_passed(hills_passed):
	$VBoxContainer/ProgressBar.value = hills_passed
	Globals.score += 100
	$VBoxContainer/PanelContainer/Score.text = "Score %d" % Globals.score
	$VBoxContainer/PanelContainer2/Hills_Remaining.text = "Hills Remaining: %d" % int(Globals.hills - hills_passed)
