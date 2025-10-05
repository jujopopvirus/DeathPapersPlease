extends Control
class_name Interviewee_Character

@export var Dialogue_Timeline : String = '' #<------------------ Name of the timeline to play

@export_category("Interviewee Character") 
@export var Texture_Arrays : Array[Texture2D] #<------------------ Textures are Arrays
@onready var Texture_Character : Sprite2D = %Texture_Body
@onready var LetterBoxAnim : AnimationPlayer = %Letterbox_Anim

func _on_character_button_pressed() -> void:
	if Dialogue_Timeline != null:
		Dialogic.timeline_ended.connect(close_letterbox)
		LetterBoxAnim.play_backwards("letterbox_comein")
		Dialogic.start(Dialogue_Timeline)

func close_letterbox() -> void:
	Dialogic.timeline_ended.disconnect(close_letterbox)
	LetterBoxAnim.play("letterbox_comein")

func _ready() -> void:
	Texture_Character.texture = Texture_Arrays[0]
