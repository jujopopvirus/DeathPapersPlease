extends Node2D

@export var Interviewers_Array : Array[PackedScene]
@export var FinalScore_Scene : PackedScene

func _ready() -> void:
	Dialogic.signal_event.connect(_on_dialogic_signal)
	var new_waittime = randi_range(8, 15)
	%Timer.wait_time = new_waittime
	%Timer.start()
	randomize()
	

var current_interviewer : Interviewee_Character = null

func add_interviewer():
	if not Interviewers_Array.is_empty():
		current_interviewer = Interviewers_Array[0].instantiate()
		print(current_interviewer)
		Interviewers_Array.remove_at(0)
		
		add_child(current_interviewer)
	else:
		GlobalNode.change_scene(FinalScore_Scene)
		GlobalNode.CurrentDay += 1
		print("Day Finished!")

func _on_dialogic_signal(argument:String):
	match argument:
		"Finish_Interview":
			leave_interview_from_scene()

func leave_interview_from_scene():
	$WalkAnim.play_backwards("ExitAnimation")

func _on_timer_timeout() -> void:
	print("Interviewer Added")
	$WalkAnim.play("Walking Animation")
	add_interviewer()

func _on_walk_anim_animation_finished(anim_name: StringName) -> void:
	match anim_name:
		"ExitAnimation":
			current_interviewer.queue_free()
			current_interviewer = null
			%Timer.start()
