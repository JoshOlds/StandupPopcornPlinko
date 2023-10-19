extends Node
## Standalone Script for moving a CharacterBody2D continuously between two points.
## Intended to serve as a 'moving platform'

## Reference to the CharacterBody2D to move
@export var character_body_ref : CharacterBody2D

## Distance to move per cycle
@export var move_distance : Vector2

## Speed to move
@export var move_speed : float

## The starting position of the character_body_ref
var start_position : Vector2


func _ready():
	start_position = character_body_ref.position


func _process(delta):
	# If moving right (positive)
	if move_speed > 0:
		# Move the character by the speed adjusted for frame time
		character_body_ref.position += Vector2(move_speed * delta, 0)
		# Reverse speed if we are at the move limit
		if character_body_ref.position >= start_position + move_distance:
			move_speed = -move_speed
	# If moving left (negative)
	elif move_speed < 0:
		# Move the character by the speed adjusted for frame time
		character_body_ref.position += Vector2(move_speed * delta, 0)
		# Reverse speed if we are at the move limit
		if character_body_ref.position <= start_position - move_distance:
			move_speed = -move_speed
	
