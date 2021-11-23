extends "res://Vehicles/Car.gd"

var crashes = 0
onready var deathTimer = $DeathTimer


func _on_CrashZone_body_entered(body):
	if crashes == 1:
		if body != RigidBody2D:
			._explosion()
			deathTimer.start()
	crashes += 1

func _on_DeathTimer_timeout():
	Globals.determine_current_level(get_tree().current_scene.filename)
	var _ignored := get_tree().change_scene("res://UI/End/End.tscn")
