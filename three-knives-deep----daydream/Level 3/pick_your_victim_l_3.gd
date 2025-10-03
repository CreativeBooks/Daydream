extends Node2D


func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://Game Over/GameOver.tscn")


func _on_button_3_3_pressed():
	get_tree().change_scene_to_file("res://Level 3/sacrificeL3.tscn")
	GameState.register_wrong_choice()
