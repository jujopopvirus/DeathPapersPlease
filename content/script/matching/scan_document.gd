extends Node2D


@onready var FinalStamp = %FinalStamp
@onready var NameInput = %NameInput
@onready var FinalAnswerBackground = %FinalAnswerBackground

#region OCCUPATION PART
@onready var occ_item_list = %OCCUPATION_ItemList
@onready var occ_button = %OCCUPATION_ItemSelected
var occupation : String

func _on_occupation_item_selected_pressed() -> void:
	occ_item_list.show()

func _on_occupation_item_list_item_selected(index: int) -> void:
	occupation = occ_item_list.get_item_text(index)
	occ_button.text = occupation
	occ_item_list.hide()
#endregion

#region CAUSE OF DEATH PART
@onready var cod_item_list = %COD_ItemList
@onready var cod_button  = %COD_ItemSelected
var cod : String

func _on_cod_item_selected_pressed() -> void:
	cod_item_list.show()

func _on_cod_item_list_item_selected(index: int) -> void:
	cod = cod_item_list.get_item_text(index)
	cod_button.text = cod
	cod_item_list.hide()
#endregion

#region FINAL VERDICT PART
@export_category("Final Stamp")
@export var Heaven_Stamp : Texture2D
@export var Hell_Stamp : Texture2D

@onready var decision_control = %Decision
@onready var final_stamp = %FinalStamp
var finalstamp : String

func _on_decision_mouse_entered() -> void:
	decision_control.show()

func _on_decision_mouse_exited() -> void:
	decision_control.hide()

func _on_heaven_button_pressed() -> void:
	if occupation != "" and cod != "":
		finalstamp = "Heaven"
		final_stamp.texture = Heaven_Stamp
		%FinalizeButton.show()

func _on_hell_button_pressed() -> void:
	if occupation != "" and cod != "":
		finalstamp = "Hell"
		final_stamp.texture = Hell_Stamp
		%FinalizeButton.show()
#endregion

func _ready() -> void:
	occ_item_list.hide()
	cod_item_list.hide()
	%FinalizeButton.hide()
	FinalAnswerBackground.hide()

#region FinalAnswer

func _on_finalize_button_pressed() -> void:
	if finalstamp != "":
		FinalAnswerBackground.show()

func _on_close_button_pressed() -> void:
	self.queue_free()

func _on_yes_button_pressed() -> void:
	self.queue_free()

func _on_no_button_pressed() -> void:
	FinalAnswerBackground.hide()
#endregion
