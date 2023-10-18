extends CollisionShape2D

@export var inner_color : Color

@export var border_color : Color

@export var border_width : float

func _draw():
	var rectangle = shape.get_rect()
	draw_rect(rectangle, inner_color, true)
	draw_rect(rectangle, border_color, false, border_width)

