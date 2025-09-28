extends Node


var past_choices: Array = []

func record_choice(choice: String) -> void:
	past_choices.append(choice)

func reset_choices() -> void:
	past_choices.clear()
