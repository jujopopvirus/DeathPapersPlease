extends Control

@onready var Current_Score : ProgressBar = $ColorRect/ProgressBar

func _ready() -> void:
	Current_Score.value = GlobalNode.Current_Score

func _on_button_pressed() -> void:
	GlobalNode.Current_Score += GlobalNode.Current_Score
	GlobalNode.Current_Score = 10
	GlobalNode.change_scene(GlobalNode.Day_Levels[GlobalNode.CurrentDay])
