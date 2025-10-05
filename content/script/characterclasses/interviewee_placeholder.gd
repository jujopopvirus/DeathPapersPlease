extends Node2D
class_name Interviewee_Character

@export var Dialogue_Timeline : String = '' #<------------------ Name of the timeline to play

@export_category("Interviewee Character") 
@export var Texture_Arrays : Array[Texture2D] #<------------------ Textures are Arrays
@onready var Texture_Character : Sprite2D = %Texture_Body


func _on_character_button_pressed() -> void:
	if Dialogue_Timeline != null:
		Dialogic.start(Dialogue_Timeline)

func _ready() -> void:
	Texture_Character.texture = Texture_Arrays[0]
