extends Node2D

func _ready() -> void:
	var new_waittime = randi_range(10, 30)
	%Timer.wait_time = new_waittime
	print(new_waittime)
