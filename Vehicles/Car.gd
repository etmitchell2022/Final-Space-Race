extends RigidBody2D

export var SPEED := 20000
export var MASS := 150
export var WEIGHT := 1470

onready var rightWheel: RigidBody2D = $RightWheel
onready var leftWheel: RigidBody2D = $LeftWheel
onready var car: RigidBody2D = get_node("../Car")

func _ready():
	car.set_mass(MASS)
	car.set_weight(WEIGHT)
	
func _process(_delta: float) -> void:
	if car.sleeping:
		var _ignored = get_tree().change_scene("res://UI/End/End.tscn")

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("forwards"):
		apply_torque_impulse(6000 * delta * 100)
		rightWheel.apply_torque_impulse(SPEED * delta * 60)
		leftWheel.apply_torque_impulse(SPEED * delta * 60)

	elif Input.is_action_pressed("backwards"):
		apply_torque_impulse(-6000 * delta * 100)
		rightWheel.apply_torque_impulse(-SPEED * delta * 60)
		leftWheel.apply_torque_impulse(-SPEED * delta * 60)
		
