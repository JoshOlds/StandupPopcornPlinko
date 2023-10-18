extends Node

@export var static_body_ref : CharacterBody2D

@export var move_distance : Vector2

@export var move_speed : float

var start_position : Vector2

func _ready():
	start_position = static_body_ref.position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if move_speed > 0:
		static_body_ref.position += Vector2(move_speed * delta, 0)
		if static_body_ref.position >= start_position + move_distance:
			move_speed = -move_speed
	elif move_speed < 0:
		static_body_ref.position += Vector2(move_speed * delta, 0)
		if static_body_ref.position <= start_position - move_distance:
			move_speed = -move_speed
	
