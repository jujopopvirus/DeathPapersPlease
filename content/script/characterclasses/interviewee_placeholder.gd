extends Node2D
class_name Interviewee_Character

@export_category("Interviewee Character") 
@onready var Character_Info : Character_Information_Resource  = %Character_Information_Resource
@export var Texture_Arrays : Array[Texture2D] #<------------------ Textures are Arrays
@onready var Texture_Character : Sprite2D = %Texture_Body


func _on_character_button_pressed() -> void:
	if Character_Info.Dialogue_Timeline != null:
		Dialogic.start(Character_Info.Dialogue_Timeline)

func _ready() -> void:
	Texture_Character.texture = Texture_Arrays[0]

func leave_interviewee() -> void:
	pass
