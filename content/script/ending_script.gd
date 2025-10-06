extends Node2D

@export var BAD_E : Texture2D 
@export var NORM_E : Texture2D 
@export var COOL_E : Texture2D 

@export var Main_Menu_Scene : PackedScene

@onready var Image_Texture : Sprite2D = %Ending

func _ready() -> void:
	if GlobalNode.Final_Score <= 100:
		Image_Texture.texture = BAD_E
		%Score.text = "Bad Ending"
		print("Bad Ending")
	elif GlobalNode.Final_Score <= 299 and GlobalNode.Final_Score > 100:
		Image_Texture.texture = NORM_E
		%Score.text = "Normal Ending"
		print("Normal Ending")
	elif GlobalNode.Final_Score == 300:
		Image_Texture.texture = COOL_E
		%Score.text = "Cool Ending"
		print("Cool Ending")

func _on_button_pressed() -> void:
	GlobalNode.change_scene(Main_Menu_Scene)
