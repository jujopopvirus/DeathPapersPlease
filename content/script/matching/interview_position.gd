extends Node2D

@export var Interviewers_Array : Array[PackedScene]

func _ready() -> void:
	Dialogic.signal_event.connect(_on_dialogic_signal)
	var new_waittime = randi_range(8, 15)
	randomize()
	%Timer.wait_time = new_waittime

func add_interviewer():
	var interviewer = Interviewers_Array.pick_random().instantiate()
	print(interviewer)
	add_child(interviewer)

func _on_dialogic_signal(argument:String):
	match argument:
		"Finish_Interview":
			leave_interview_from_scene()

func leave_interview_from_scene():
	$WalkAnim.play_backwards("Walking Animation")

func _on_timer_timeout() -> void:
	print("Interviewer Added")
	$WalkAnim.play("Walking Animation")
	add_interviewer()
