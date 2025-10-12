extends Node

@onready var button = $Area2D/Button

func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://Level 3/pick_your_victimL3.tscn")


func _on_area_2dl33_body_entered(body: Node2D):
	if body.name == "Player": 
		button.visible = true
