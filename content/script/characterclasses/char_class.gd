extends Node
class_name Character_Information #library 


enum COD_ENUM { #Enumerator 
	HOUSEHOLDHAZARD,
	VEHICLE,
	STUNTS,
	SELFHARM,
	CANNIBALISM,
	MURDER,
	POISON,
	DISEASE,
	WILDANMLS,
	DISASTER
}

@export var char_name : String
@export var COD : COD_ENUM

@export var texture_id : Texture2D

func _ready():
	$TextureRect.texture = texture_id

	

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		$TextureRect/AnimationPlayer.play_backwards("Show ID")
