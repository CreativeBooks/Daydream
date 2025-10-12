extends Node2D


func _on_button_pressed():
	get_tree().change_scene_to_file("res://Level 2/3main_menuL2.tscn")
	
@onready var button = $Button

func _ready():
	button.visible = false
	await get_tree().create_timer(3.0).timeout
	button.visible = true
