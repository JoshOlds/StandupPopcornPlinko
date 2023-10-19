extends CollisionShape2D
## Script to add drawing functionality to a CollisionShape2D with a 'circle' collision shape.

## The fill color of the peg
@export var color : Color = Color.BLUE

## The outline color of the peg
@export var outline_color : Color = Color.GRAY

## The width of the ouline of the peg
@export var outline_width : float = 10.0

## _draw() function is called once per draw update by the engine. This happens when the object moves, potentially per frame
func _draw():
	var boundary_rect = shape.get_rect()
	var radius = boundary_rect.size.x / 2.0
	draw_circle(Vector2(0,0), radius, outline_color)
	draw_circle(Vector2(0,0), radius - (outline_width / 2.0), color)
