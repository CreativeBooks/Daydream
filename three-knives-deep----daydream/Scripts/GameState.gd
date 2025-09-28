extends Node


var clicked_buttons: Array = []

func register_button(button_id: String) -> void:
	if button_id not in clicked_buttons:
		clicked_buttons.append(button_id)
	check_game_over()
	
func check_game_over() -> void:
	if "page1_btn1" in clicked_buttons and "page2_btn2" in clicked_buttons:
		get_tree().change_scene_to_file("res://Game Over/GameOver.tscn")
		call_deferred("_go_to_game_over")
	if ("page1_btn1" in clicked_buttons or "page2_btn1" in clicked_buttons) and "page3_btn1" in clicked_buttons:
		get_tree().change_scene_to_file("res://Game Over/GameOver.tscn")
		call_deferred("_go_to_game_over")
		
func _go_to_game_over() -> void:
	get_tree().change_scene("res://Game Over/GameOver.tscn")
