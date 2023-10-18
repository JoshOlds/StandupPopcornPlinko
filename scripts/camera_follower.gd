extends Camera2D

@export var tracked_nodes : Array[Node2D]

@export var camera_max_speed : float = 3.0

@export var camera_accel : float = 1.0

var camera_speed = 0

func _ready():
	SignalBroker.player_entered.connect(_on_player_victory)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var largest_y = 0
	for node in tracked_nodes:
		if node.position.y > largest_y:
			largest_y = node.position.y
		
	camera_speed = clamp((largest_y - position.y) / 100, -camera_max_speed, camera_max_speed)
	position.y += camera_speed
	
	if position.y > 3200:
		position.y = 3200
		
	if tracked_nodes.is_empty():
		position.y = 3200
		
		
			
	#if position.y < largest_y:
		#camera_speed += camera_accel * delta
	#elif position.y > largest_y:
		#camera_speed -= camera_accel * delta
	#camera_speed = clamp(camera_speed, -camera_max_speed, camera_max_speed)
	#
	#if(camera)
	#position.y += camera_speed
		

func _on_player_victory(body: Node2D):
	print("Erasing!")
	tracked_nodes.erase(body)
		
		
