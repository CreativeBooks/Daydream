extends Node


@onready var button = $Area2D/Button2

func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://Level 1/pick_your_victim.tscn")


func _on_area_2dl13_body_entered(body: Node2D) -> void:
	if body.name == "Player": 
		button.visible = true
		
		
