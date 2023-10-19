extends CollisionShape2D
## Script that adds draw functionality to a CollisionShape2D with a Rectangle collision shape type

## Fill color of the rectangle
@export var inner_color : Color

## Outline color of the rectangle
@export var border_color : Color

## Width of the outline
@export var border_width : float


func _draw():
	var rectangle = shape.get_rect()
	draw_rect(rectangle, inner_color, true)
	draw_rect(rectangle, border_color, false, border_width)

