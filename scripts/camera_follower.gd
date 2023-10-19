extends Camera2D
## Script for moving camera to follow players in Popcorn Pinko!

## The player nodes to track with this camera
@export var tracked_nodes : Array[Node2D]

## The max speed the camera is allowed to move
@export var camera_max_speed : float = 3.0

## The maximum acceleration of the camera
@export var camera_accel : float = 1.0

## The current camera speed
var camera_speed = 0


func _ready():
	SignalBroker.player_entered.connect(_on_player_victory)


func _physics_process(delta):
	# Iterate through nodes and find the one with the largest Y value (the lowest on the game board)
	var largest_y = 0
	for node in tracked_nodes:
		if node.position.y > largest_y:
			largest_y = node.position.y
		
	# Clamp camera speed to a fraction of the delta between camera position and player position
	camera_speed = clamp((largest_y - position.y) / 100, -camera_max_speed, camera_max_speed)
	position.y += camera_speed
	
	# Don't let the camera exceed the bottom of the board
	if position.y > 3200:
		position.y = 3200
		
	# Lock the camera when all players finish
	if tracked_nodes.is_empty():
		position.y = 3200
		

## Callback for player entering victory zone. Stop tracking that player
func _on_player_victory(body: Node2D):
	tracked_nodes.erase(body)
		
		
