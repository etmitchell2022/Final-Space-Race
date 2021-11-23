extends "res://Vehicles/Car.gd"


var crashes = 0


func _on_CrashZone_body_entered(body):
	if crashes > 0:
		if body != RigidBody2D:
			$Sprite.visible = false
			$LeftWheel.visible = false
			$RightWheel.visible = false
			var explosion : CPUParticles2D = load("res://Autoloads/Explosion.tscn").instance()
			explosion.one_shot = true
			print(explosion)
			explosion.position = $CrashZone.position
			explosion.visible = true
			call_deferred("add_child", explosion)
	crashes += 1
