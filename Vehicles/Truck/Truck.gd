extends "res://Vehicles/Car.gd"


var crashes = 0
onready var deathTimer = $DeathTimer


func _on_CrashZone_body_entered(body):
	if crashes == 1:
		if body != RigidBody2D:
			$Sprite.visible = false
			$LeftWheel.visible = false
			$RightWheel.visible = false
			var explosion : CPUParticles2D = load("res://Autoloads/Explosion.tscn").instance()
			explosion.one_shot = true
			explosion.position = $CrashZone.position
			explosion.modulate = Color(48, 125, 15)
			print(explosion)
			call_deferred("add_child", explosion)
			$CrashSound.play()
			deathTimer.start()
	crashes += 1


func _on_DeathTimer_timeout():
	var _ignored = get_tree().change_scene("res://UI/End/End.tscn")
