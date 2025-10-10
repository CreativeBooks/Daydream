extends Control

func _ready():
	update_button_text()

func _on_Musicbutton_pressed():
	GlobalMusic.toggle_music()
	update_button_text()
	
func update_button_text():
	if GlobalMusic.music_enabled:
		$MusicButton.text = "Turn Music Off"
	else:
		$MusicButton.text = "Turn Music On"

		


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Menu/menu.tscn")
