extends RigidBody2D

export var SPEED = 60000
export var MASS = 300
export var WEIGHT = 2940

onready var rightWheel = $RightWheel
onready var leftWheel = $LeftWheel
onready var car = get_node("../Car")

func _ready() -> void:
	pass
	
func _process(_delta):
	pass

func _physics_process(delta) -> void:
	if Input.is_action_pressed("forwards"):
		apply_torque_impulse(-6000 * delta * 60)
		rightWheel.apply_torque_impulse(SPEED * delta * 60)
		leftWheel.apply_torque_impulse(SPEED * delta * 60)

	elif Input.is_action_pressed("backwards"):
		apply_torque_impulse(2000 * delta * 60)
		rightWheel.apply_torque_impulse(-SPEED * delta * 60)
		leftWheel.apply_torque_impulse(-SPEED * delta * 60)
		

