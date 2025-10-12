extends Node2D


func _on_button_pressed():
	get_tree().change_scene_to_file("res://Level 3/3main_menuL3.tscn")


@onready var button = $Button

func _ready():
	button.visible = false
	await get_tree().create_timer(3.0).timeout
	button.visible = true
