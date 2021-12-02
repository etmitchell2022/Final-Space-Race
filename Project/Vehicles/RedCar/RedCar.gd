extends "res://Project/Vehicles/Car.gd"

onready var deathTimer = $DeathTimer
onready var camera = $Camera2D

var crashes = 0
var shake := 8
	

func _on_CrashZone_body_entered(body) -> void:
	if crashes == 1:
		if body != RigidBody2D:
			._explosion()
#			._shake(camera)
			shake()
			deathTimer.start()
	crashes += 1

func shake() -> void:
	for x in range(50):
		var offset = Vector2(rand_range(-shake, shake), rand_range(-shake, shake))
		camera.offset = offset
		yield(get_tree().create_timer(.01), "timeout")
	

func _on_DeathTimer_timeout() -> void:
	Globals.determine_current_level(get_tree().current_scene.filename)
	var _ignored := get_tree().change_scene("res://Project/UI/End/End.tscn")
