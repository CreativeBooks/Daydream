extends Node2D


func _on_button_2_pressed():
	GameState.register_sacrifice(self.name)
	get_tree().change_scene_to_file("res://Game Over/GameOver.tscn")
	
func _on_button_3_pressed():
	GameState.register_sacrifice(self.name)
	get_tree().change_scene_to_file("res://Game Over/GameOver.tscn")
