extends CollisionShape2D

@export var color : Color = Color.BLUE
@export var outline_color : Color = Color.GRAY
@export var outline_width : float = 10.0

func _draw():
	var boundary_rect = shape.get_rect()
	var radius = boundary_rect.size.x / 2.0
	draw_circle(Vector2(0,0), radius, outline_color)
	draw_circle(Vector2(0,0), radius - (outline_width / 2.0), color)
