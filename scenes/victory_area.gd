extends Area2D

var finished_players : Array[Node]

@export var finish_particles : PackedScene

func _on_body_entered(body : Node2D):
	if body is Player:
		if body not in finished_players:
			print(body.player_name)
			SignalBroker.player_entered.emit(body)
			finished_players.append(body)
			var particles = finish_particles.instantiate() as GPUParticles2D
			particles.position = body.position
			particles.emitting = true
			particles.one_shot = true
			get_tree().root.add_child(particles)
			
