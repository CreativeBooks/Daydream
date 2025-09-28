extends Node2D


func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://Game Over/stats.tscn")


func _on_button_3_pressed():
	GameState.register_button("page3_btn1")
	
	get_tree().change_scene_to_file("res://Level 3/sacrificeL3.tscn")
