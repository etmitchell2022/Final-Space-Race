extends RigidBody2D

export var SPEED = 10

func _physics_process(_delta):
	if Input.is_action_pressed("forwards"):
		$RightWheel.angular_velocity = SPEED
		$LeftWheel.angular_velocity = SPEED

	elif Input.is_action_pressed("backwards"):
		$RightWheel.angular_velocity = -SPEED
		$LeftWheel.angular_velocity = -SPEED
