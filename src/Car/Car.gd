extends RigidBody2D

export var SPEED = 60
export var MASS = 300
export var WEIGHT = 2940

onready var rightWheel = $RightWheel
onready var leftWheel = $LeftWheel
onready var car = get_node("../Car")

var rotate_angle = 0



func _ready() -> void:
	pass
	
func _process(_delta):
	pass

func _physics_process(_delta) -> void:
	if Input.is_action_pressed("forwards"):
		rightWheel.angular_velocity = SPEED
		leftWheel.angular_velocity = SPEED

	elif Input.is_action_pressed("backwards"):
		rightWheel.angular_velocity = -SPEED
		leftWheel.angular_velocity = -SPEED
	
	elif Input.is_action_pressed("rotate_left"):
		rotate_angle -= 1
		car.rotation_degrees = rotate_angle
		print(rotate_angle)
		
	elif Input.is_action_pressed("rotate_right"):
		rotate_angle += 1
		car.rotation_degrees = rotate_angle
		print(rotate_angle)
		

