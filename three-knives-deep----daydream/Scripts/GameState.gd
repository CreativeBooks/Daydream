extends Node


var wrong_choices := 0
const GAME_OVER_SCENE := "res://Game Over/GameOver.tscn"

func register_wrong_choice():
	wrong_choices += 1
	print("Wrong choices: ", wrong_choices)
	if wrong_choices >= 2:
		go_to_game_over()

func reset_game():
	wrong_choices = 0

func go_to_game_over():
	get_tree().change_scene_to_file(GAME_OVER_SCENE)
