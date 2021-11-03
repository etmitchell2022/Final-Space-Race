extends RigidBody2D

export var SPEED = 40000
export var MASS = 150
export var WEIGHT = 1470

onready var rightWheel = $RightWheel
onready var leftWheel = $LeftWheel
onready var car = get_node("../Car")

func _ready() -> void:
	pass
	
func _process(_delta):
	if car.sleeping:
		var _ignored = get_tree().change_scene("res://src/End/End.tscn")

func _physics_process(delta) -> void:
	if Input.is_action_pressed("forwards"):
		apply_torque_impulse(6000 * delta * 100)
		rightWheel.apply_torque_impulse(SPEED * delta * 60)
		leftWheel.apply_torque_impulse(SPEED * delta * 60)

	elif Input.is_action_pressed("backwards"):
		apply_torque_impulse(-6000 * delta * 100)
		rightWheel.apply_torque_impulse(-SPEED * delta * 60)
		leftWheel.apply_torque_impulse(-SPEED * delta * 60)
		
