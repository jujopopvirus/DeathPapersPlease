extends Node

var Final_Score : int = 0
var Current_Character : Character_Information_Resource

signal CheckingDocument_Done(FinalVerdict : String)

func Check_Document(Input_Occupation : String, Input_CoD : String, Input_FinalVerdict : String) -> void:
	if Input_Occupation == Current_Character.occupation:
		print("Right!")
	else:
		print("Wrong")
	
	if Input_CoD == Current_Character.cause_of_death:
		print("Right!")
	else:
		print("Wrong")
	
	if Input_FinalVerdict == Current_Character.final_verdict:
		print("Right!")
	else:
		print("Wrong")
	
	CheckingDocument_Done.emit(Input_FinalVerdict)
