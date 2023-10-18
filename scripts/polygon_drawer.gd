extends CollisionPolygon2D

@export var fill_color : Color = Color.DARK_RED

@export var line_color : Color = Color.WHITE

@export var line_width : float = 2.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _draw():
	var packed_points = polygon
	packed_points.append(packed_points[0])
	draw_colored_polygon(packed_points, fill_color)
	draw_polyline(packed_points, line_color, line_width, true)
