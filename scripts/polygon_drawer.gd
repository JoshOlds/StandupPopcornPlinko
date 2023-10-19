extends CollisionPolygon2D
## Script to add drawing functionality for a custom CollisionPolygon2D

## The polygon's fill color
@export var fill_color : Color = Color.DARK_RED

## The polygon's outline color
@export var line_color : Color = Color.WHITE

## The width of the outline
@export var line_width : float = 2.0


func _draw():
	var packed_points = polygon
	# Draw function needs the start point to repeat at the end of the PackedPoints array.
	packed_points.append(packed_points[0])
	draw_colored_polygon(packed_points, fill_color)
	draw_polyline(packed_points, line_color, line_width, true)
