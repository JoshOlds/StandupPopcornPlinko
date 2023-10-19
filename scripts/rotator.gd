extends CharacterBody2D
## Script that extends CharacterBody and rotates it every frame

## The rotation rate in radians/second
@export var rotate_rate_rads : float = 2


func _ready():
	## slightly randomize the rotation value
	rotate_rate_rads *= randf_range(0.8, 1.2)


func _process(delta):
	rotation += rotate_rate_rads * delta
