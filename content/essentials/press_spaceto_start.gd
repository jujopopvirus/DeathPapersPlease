extends Control

var pressed_space: bool = false

func _input(event: InputEvent) -> void:
	if event is InputEventKey and event.pressed and event.keycode == KEY_SPACE: 
		pressed_space = true
		%PressSpacetoStart.visible = false


func _on_start_pressed() -> void:
	%Ding.play()
	GlobalNode.change_scene(GlobalNode.Day_Levels[GlobalNode.CurrentDay])

func _on_exit_pressed() -> void:
	get_tree().quit()

func _on_settings_pressed() -> void:
	pass # Replace with function body.
