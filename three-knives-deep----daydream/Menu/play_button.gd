extends Button


@export var normal_texture: Texture
@export var pressed_texture: Texture

@onready var img = $TextureRect

func _ready():
	img.texture = normal_texture


func _pressed():
	img.texture = pressed_texture

func _released():
	img.texture = normal_texture
	
   
