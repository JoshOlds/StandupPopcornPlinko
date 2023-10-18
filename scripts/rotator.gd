extends CharacterBody2D

@export var rotate_rate_rads : float = 2


# Called when the node enters the scene tree for the first time.
func _ready():
	rotate_rate_rads *= randf_range(0.8, 1.2)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotation += rotate_rate_rads * delta

