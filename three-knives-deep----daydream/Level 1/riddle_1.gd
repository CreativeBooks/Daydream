extends Node



func _on_button_pressed():
	get_tree().change_scene_to_file("res://Level 1/Riddle_1.tscn")
	
@onready var player = $Player
@onready var button = $ElevatorArea/ProximityButton
@onready var area = $ElevatorArea
@export var trigger_distance: float = 100.0  # Change as needed

func _process(_delta):
	if player and area and button:
		var distance = player.global_position.distance_to(button.global_position)
		button.visible = distance <= trigger_distance

	
