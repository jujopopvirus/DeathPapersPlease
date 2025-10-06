extends Node2D

@export var Interviewers_Array : Array[PackedScene]

func _ready() -> void:
	var new_waittime = randi_range(8, 15)
	randomize()
	%Timer.wait_time = new_waittime

func add_interviewer():
	var interviewer = Interviewers_Array.pick_random().instantiate()
	print(interviewer)
	add_child(interviewer)


func _on_timer_timeout() -> void:
	print("Interviewer Added")
	$WalkAnim.play("Walking Animation")
	add_interviewer()
