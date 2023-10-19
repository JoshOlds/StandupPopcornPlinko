extends Node2D
## Generates <amount_to_generate> pegs with <seperation> distance between them, starting at the root position of this node

## Distance (pixels) in X axis between center of each Peg
@export var x_seperation : int 

## Distance (pixels) in Y axis between center of each Peg
@export var y_seperation : int 

## Amount of Pegs to generate
@export var amount_to_generate : int

## The scene to instantiate
@export var peg_scene : PackedScene = preload("res://scenes/obstacles/peg.tscn")


func _ready():
	# Loop for <amount_to_generate>
	for i : int in range(amount_to_generate):
		# Offset new spawn position by the X and Y seperation from origin
		var spawn_position = Vector2(i * x_seperation, i * y_seperation)
		# Instantiate Peg, set position, add as a child (to the scene) of this node
		var peg = peg_scene.instantiate() as StaticBody2D
		add_child(peg)
		peg.position = spawn_position
