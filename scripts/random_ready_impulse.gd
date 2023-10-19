extends Node
## Standalone script component to add a random impulse to a RigidBody2D at _ready()

## The RigidBody2D to apply impulse to
@export var rigid_body : RigidBody2D

## The minimum impulse to apply
@export var impulse_min : Vector2 = Vector2(-250, 0)

## the maximum impulse to apply
@export var impulse_max : Vector2 = Vector2(250, 0)


func _ready():
	# Generate random value between the min and max range for both X and Y values
	var x = randf_range(impulse_min.x, impulse_max.x)
	var y = randf_range(impulse_min.y, impulse_max.y)
	# Apply impulse to rigidbody
	rigid_body.apply_central_impulse(Vector2(x, y))
