extends Control




func _on_start_pressed():
	get_tree().change_scene_to_file("res://Menu/control.tscn")


func _on_settings_pressed():
	print("Settings pressed")


func _on_exit_pressed():
	get_tree().quit()
	

func _on_level_1_pressed() -> void:
	get_tree().change_scene_to_file("res://Level 1/main_menu.tscn")


func _on_level_2_pressed() -> void:
	get_tree().change_scene_to_file("res://Level 2/main_menu1L2.tscn")


func _on_level_3_pressed() -> void:
	get_tree().change_scene_to_file("res://Level 3/main_menu1L3.tscn")
