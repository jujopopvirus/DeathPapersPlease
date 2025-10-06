extends Node

var Final_Score : int = 10
var Current_Character : Character_Information_Resource

signal CheckingDocument_Done(FinalVerdict : String)

func Go_To_Score():
	print(Final_Score)

func Check_Document(Input_Occupation : String, Input_CoD : String, Input_FinalVerdict : String) -> void:
	if Input_Occupation == Current_Character.occupation:
		print("Right!")
		Final_Score += 10
	else:
		print("Wrong")
	
	if Input_CoD == Current_Character.cause_of_death:
		print("Right!")
		Final_Score += 10
	else:
		print("Wrong")
	
	if Input_FinalVerdict == Current_Character.final_verdict:
		print("Right!")
		Final_Score += 10
	else:
		print("Wrong")
	
	CheckingDocument_Done.emit(Input_FinalVerdict)
