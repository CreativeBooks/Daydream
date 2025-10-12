extends Control




func _on_start_pressed():
	get_tree().change_scene_to_file("res://Menu/control.tscn")



func _on_exit_pressed():
	get_tree().quit()
	


func _on_level_3_pressed() -> void:
	get_tree().change_scene_to_file("res://Level 2/main_menu1L2.tscn")


func _on_options_pressed() -> void:
	get_tree().change_scene_to_file("res://Menu/options.tscn")


func _on_how_to_play_pressed() -> void:
	get_tree().change_scene_to_file("res://Menu/how_to_play.tscn")


func _on_button_4_pressed() -> void:
	get_tree().change_scene_to_file("res://Game Over/surprise.tscn")
