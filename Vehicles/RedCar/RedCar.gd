extends "res://Vehicles/Car.gd"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_CrashZone_body_entered(body):
	var explosion = load("res://Autoloads/Explosion.tscn").instance()
	explosion.one_shot = true
	print(explosion)
	explosion.position = car.position
	call_deferred("add_child", explosion)
	car.visible = false
