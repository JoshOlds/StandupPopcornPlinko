extends Node

@export var rigid_body : RigidBody2D

@export var impulse_min : Vector2 = Vector2(-250, 0)

@export var impulse_max : Vector2 = Vector2(250, 0)

# Called when the node enters the scene tree for the first time.
func _ready():
	var x = randf_range(impulse_min.x, impulse_max.x)
	var y = randf_range(impulse_min.y, impulse_max.y)
	rigid_body.apply_central_impulse(Vector2(x, y))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
