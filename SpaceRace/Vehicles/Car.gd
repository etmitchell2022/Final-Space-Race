class_name Car
extends RigidBody2D

export var SPEED := 20000
export var MASS := 150
export var WEIGHT := 1470

onready var right_wheel: RigidBody2D = $RightWheel
onready var left_wheel: RigidBody2D = $LeftWheel
onready var car_sprite: Sprite = $Sprite
onready var car: RigidBody2D = get_node("../Car")
onready var crash_zone = $CrashZone
onready var crash_sound = $CrashSound

func _ready() -> void:
	car.set_mass(MASS)
	car.set_weight(WEIGHT)
	set_process(true)

func _shake(camera: Camera2D):
	var shake = 3
	var offset = Vector2(rand_range(-shake, shake), rand_range(-shake, shake))
	print("shake: " + str(shake))
	print(str(offset))
	camera.offset = offset
	shake *= 2
	
	
func _process(_delta: float) -> void:
	if car.sleeping:
		var _ignored = get_tree().change_scene("res:///UI/End/End.tscn")

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("forwards"):
		apply_torque_impulse(6000 * delta * 100)
		right_wheel.apply_torque_impulse(SPEED * delta * 60)
		left_wheel.apply_torque_impulse(SPEED * delta * 60)

	elif Input.is_action_pressed("backwards"):
		apply_torque_impulse(-6000 * delta * 100)
		right_wheel.apply_torque_impulse(-SPEED * delta * 60)
		left_wheel.apply_torque_impulse(-SPEED * delta * 60)
		
func _explosion() -> void:
	car_sprite.visible = false
	left_wheel.visible = false
	right_wheel.visible = false
	var explosion : CPUParticles2D = load("res:///Common/Explosion.tscn").instance()
	explosion.one_shot = true
	explosion.position = crash_zone.position
	if Globals.car_id == 1:
		explosion.modulate = Color(255, 220, 0)
	if Globals.car_id == 2:
		explosion.modulate = Color(15, 98, 5)
	call_deferred("add_child", explosion)
	crash_sound.play()
		
