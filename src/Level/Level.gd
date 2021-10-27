extends Node


export var hill_count = 1
export var slice_count = 7
export var hill_range = 75

var screensize
var level = Array()


func _ready():
	randomize()
	screensize = get_viewport().get_visible_rect().size
	level = Array()
	var hillStartY = screensize.y * 3/4 + (-hill_range + randi() % hill_range*2)
	level.append(Vector2(0, hillStartY))
	add_hills()
	
func _process(_delta):
	if level[-1].x < $Car.position.x + screensize.x / 2:
		add_hills()
	
func add_hills():
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
	var shape = CollisionPolygon2D.new()
	var ground = Polygon2D.new()
	$StaticBody2D.add_child(shape)
	form.append(Vector2(level[-1].x, screensize.y))
	form.append(Vector2(hillStart.x, screensize.y))
	shape.polygon = form
	ground.polygon = form
	add_child(ground)
