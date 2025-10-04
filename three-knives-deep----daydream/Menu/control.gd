extends Control



func _on_button_3_pressed():
	get_tree().quit()

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Level 1/main_menu.tscn")
