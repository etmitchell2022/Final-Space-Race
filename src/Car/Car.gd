extends RigidBody2D

export var SPEED = 30
export var MASS = 300
export var WEIGHT = 2940

onready var rightWheel = $RightWheel
onready var leftWheel = $LeftWheel
onready var car = get_node("../Car")

func _ready() -> void:
	print(car)
	
func _process(delta):
	pass

func _physics_process(_delta) -> void:
	if Input.is_action_pressed("forwards"):
		rightWheel.angular_velocity = SPEED
		leftWheel.angular_velocity = SPEED

	elif Input.is_action_pressed("backwards"):
		rightWheel.angular_velocity = -SPEED
		leftWheel.angular_velocity = -SPEED
