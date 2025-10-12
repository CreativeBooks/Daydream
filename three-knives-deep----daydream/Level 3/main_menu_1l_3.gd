extends Node

@onready var button = $Area2D/Button

func _on_button_pressed():
	get_tree().change_scene_to_file("res://Level 3/Riddle_1L3.tscn")


func _on_area_2dl31_body_entered(body: Node2D):
	if body.name == "Player": 
		button.visible = true
