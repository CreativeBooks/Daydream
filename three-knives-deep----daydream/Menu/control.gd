extends Control



func _on_exit_3_pressed():
	get_tree().quit()



@onready var play_button = $PlayButton

# Preload your textures
var texture_normal = preload("res://Image/play_button-removebg-preview (1).png")
var texture_hover = preload("res://Image/play_button_2-removebg-preview.png")
var texture_pressed = preload("res://Image/play_button_2-removebg-preview.png")

var is_hovered = false

func _ready():
	play_button.texture = texture_normal
	play_button.expand = true
	play_button.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED

func _input(event):
	if play_button.get_rect().has_point(play_button.get_local_mouse_position()):
		if event is InputEventMouseMotion:
			_on_hover()
		elif event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
			_on_click()
	else:
		_on_unhover()

func _on_hover():
	if not is_hovered:
		is_hovered = true
		play_button.texture = texture_hover

func _on_unhover():
	if is_hovered:
		is_hovered = false
		play_button.texture = texture_normal

func _on_click():
	print("Custom play button clicked!")
	# Add your click behavior here
