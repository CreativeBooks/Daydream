extends Node2D


func _on_button_2_pressed():
	GameState.register_sacrifice(self.name)
	get_tree().change_scene_to_file("res://Level 3/main_menu1L3.tscn")
	
func _on_button_3_pressed():
	GameState.register_sacrifice(self.name)
	get_tree().change_scene_to_file("res://Level 3/main_menu1L3.tscn")
