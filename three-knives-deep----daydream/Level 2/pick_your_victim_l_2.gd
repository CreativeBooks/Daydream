extends Node2D


func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://Level 3/main_menu1L3.tscn")


func _on_button_3_2_pressed():
	GameState.register_button("page2_btn1")
	
	get_tree().change_scene_to_file("res://Level 1/sacrificeL2.tscn")
