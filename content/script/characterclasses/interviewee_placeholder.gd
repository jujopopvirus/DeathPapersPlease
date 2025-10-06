extends Node2D
class_name Interviewee_Character

@export_category("Interviewee Character") 
@onready var Character_Info : Character_Information_Resource  = $Character_Information_Resource
@export var Texture_Arrays : Array[Texture2D] #<------------------ Textures are Arrays
@onready var Texture_Character : Sprite2D = %Texture_Body
@onready var ID_Sprite : Sprite2D = %ID_Texture


func _on_character_button_pressed() -> void:
	if Character_Info.Dialogue_Timeline != null:
		Dialogic.start(Character_Info.Dialogue_Timeline)

func _ready() -> void:
	ID_Sprite.hide()
	ID_Sprite.texture = Character_Info.character_id
	Dialogic.signal_event.connect(_on_dialogic_signal)
	
	GlobalNode.CheckingDocument_Done.connect(final_dialogue)
	
	GlobalNode.Current_Character = Character_Info
	Texture_Character.texture = Texture_Arrays[0]

func final_dialogue(FinalVerdict : String) -> void:
	if FinalVerdict == "Heaven":
		Dialogic.start(Character_Info.HeavenTimeline)
	else:
		Dialogic.start(Character_Info.HellTimeline)

func _on_dialogic_signal(argument:String):
	match argument:
		"ID_SHOW":
			ID_Sprite.show()
			%SlideID.play("ID_Slide")
		"ID_HIDE":
			ID_Sprite.hide()
		"emotion_01":
			Texture_Character.texture = Texture_Arrays[0]
		"emotion_02":
			Texture_Character.texture = Texture_Arrays[1]
		"emotion_03":
			Texture_Character.texture = Texture_Arrays[2]
