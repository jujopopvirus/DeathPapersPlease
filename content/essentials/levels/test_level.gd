extends Node2D
class_name Interviewee_Character

@export var Dialogue_Timeline : String = '' #<------------------ Name of the timeline to play

func _ready() -> void:
	if Dialogue_Timeline != null:
		Dialogic.start(Dialogue_Timeline)
