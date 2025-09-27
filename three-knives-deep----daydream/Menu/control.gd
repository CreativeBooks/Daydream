extends Control


func _on_start_2_pressed():
	get_tree().change_scene_to_file("res://main_menu.tscn")


func _on_exit_3_pressed():
	get_tree().quit()
