extends Node2D

var Document_Node : PackedScene = load("res://content/script/matching/document.tscn")

func _on_folder_button_pressed() -> void:
	add_child(Document_Node.instantiate())
