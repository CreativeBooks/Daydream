extends Node2D


func _on_button_2_pressed() -> void:
	get_tree().quit()


func _on_button_pressed() -> void:
	GameState.reset_game()
	get_tree().change_scene_to_file("res://Level 1/main_menu.tscn") 
	
	
