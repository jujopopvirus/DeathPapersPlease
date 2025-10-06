extends Node

var Final_Score : int = 0
#Bad Ending > 100
#Normal Ending > 100 <= 299
#Cool Ending == 300

var Current_Score : int = 10
var Current_Character : Character_Information_Resource = null

@export var Day_Levels : Array[PackedScene]
var CurrentDay : int = 0

signal CheckingDocument_Done(FinalVerdict : String)

func change_scene(PackScene_To : PackedScene):
	%ColorFade.play("Fade")
	await %ColorFade.animation_finished
	get_tree().change_scene_to_packed(PackScene_To)
	%ColorFade.play_backwards("Fade")

func Go_To_Score():
	print(Current_Score)
	Final_Score += Current_Score

func Check_Document(Input_Occupation : String, Input_CoD : String, Input_FinalVerdict : String) -> void:
	if Input_Occupation == Current_Character.occupation:
		print("Right!")
		Current_Score += 10
	else:
		print("Wrong")
	
	if Input_CoD == Current_Character.cause_of_death:
		print("Right!")
		Current_Score += 10
	else:
		print("Wrong")
	
	if Input_FinalVerdict == Current_Character.final_verdict:
		print("Right!")
		Current_Score += 10
	else:
		print("Wrong")
	
	CheckingDocument_Done.emit(Input_FinalVerdict)
	Current_Character = null
