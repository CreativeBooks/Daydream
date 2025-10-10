extends Label


@export var text_to_show: String = "You are the owner of a hotel. Suddenly, you are given a notice to shut down the hotel OR murder three specific people to keep your hotel open.  Solve the riddles given to you in each level to figure out who your targeted victim is. Keep the doors open. Kill three. The right ones. 
                                    Let the hunt begin......"
@export var speed: float = 0.05 

@onready var continue_button = get_parent().get_node("Button") 

func _ready():
	text = ""
	continue_button.visible = false  
	start_typing()
	
func start_typing():
	var i = 0
	while i < text_to_show.length():
		text += text_to_show[i]
		i += 1
		await get_tree().create_timer(speed).timeout
	
	continue_button.visible = true
		
