extends Node2D





func _on_button_3_pressed():
	get_tree().change_scene_to_file("res://Level 2.tscn")


func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://Level 1/pick_your_sacrifice.tscn")

func _ready():

	%Button3.pressed.connect(func():
		make_choice("Choice A")
	)

	%Button2.pressed.connect(func():
		make_choice("Choice B")
	)
	
func make_choice(choice: String):
	DecisionTracker.record_choice(choice)
	get_tree().change_scene_to_file("res://Level 2.tscn")
