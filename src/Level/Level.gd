class_name Level
extends Node

signal hill_passed(hills_passed)

export var hill_count := 1
export var slice_count := 7
export var hill_range := 75

onready var crash_sound: AudioStreamPlayer = $CarCrash
onready var car: RigidBody2D = $Car
onready var car_camera: Camera2D = $Car/Camera2D
onready var death_timer: Timer = $DeathTimer

var screensize
var level := Array()
var hills_passed := 0
var texture := ImageTexture.new()
var image := load("res://src/Level/assets/grass.png") as Image
var shake: float = 0

func _ready() -> void:
	randomize()
	texture.create_from_image(image)
	screensize = get_viewport().get_visible_rect().size
	level = Array()
	var hillStartY = screensize.y * 3/4 + (-hill_range + randi() % hill_range*2)
	level.append(Vector2(0, hillStartY))
	add_hills()
	
func _process(_delta: float):
	if level[-1].x < car.position.x + screensize.x / 2:
		add_hills()
	
func add_hills() -> void:
	var hill_width = screensize.x / hill_count
	var hill_slices = hill_width / slice_count
	var hillStart = level[-1]
	var form = PoolVector2Array()
	for i in range(hill_count):
		var height = randi() % hill_range
		hillStart.y -= height
		for j in range(0, hill_slices):
			var hillPoint = Vector2()
			hillPoint.x = hillStart.x + j * slice_count + hill_width * i
			hillPoint.y = hillStart.y + height * cos(2 * PI / hill_slices * j)
			level.append(hillPoint)
			form.append(hillPoint)
		hillStart.y += height
		hills_passed += 1
		emit_signal("hill_passed", hills_passed)
		if hills_passed >= Globals.hills:
			var _ignored = get_tree().change_scene("res://src/End/End.tscn")
	var shape = CollisionPolygon2D.new()
	var ground = Polygon2D.new()
	$StaticBody2D.add_child(shape)
	form.append(Vector2(level[-1].x, screensize.y))
	form.append(Vector2(hillStart.x, screensize.y))
	shape.polygon = form
	ground.polygon = form
	ground.texture = texture
	add_child(ground)


func _on_CrashZone_body_entered(body: StaticBody2D) -> void:
	var explosion = load("res://src/Explosion/Explosion.tscn").instance()
	explosion.one_shot = true
	if body == $StaticBody2D:
		crash_sound.play()
		shake = 20
		explosion.position = car.position
		add_child(explosion)
		car.visible = false
		car_camera.offset = Vector2(rand_range(-shake, shake), rand_range(-shake, shake))
		shake *= 4
		death_timer.start()

func _on_DeathTimer_timeout() -> void:
	var _ignored := get_tree().change_scene("res://src/End/End.tscn")
