extends Label


func _ready():
	SignalBroker.player_entered.connect(_on_player_entered)
	

func _on_player_entered(body : Node2D):
	var player = body as Player
	var elapsed_time = Time.get_ticks_msec() / 1000
	text += player.player_name + " " + str(elapsed_time) + "s\n"
