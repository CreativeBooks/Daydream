extends Label

@export var text_to_show: String = "
                                                                A low groan echoed through the shaft.
							
                                              The lights flickered once—Then the elevator dropped.
					
                    	    Screams were cut short by the sound of metal folding in on itself. 
					
                                                                             Silence followed. Cold. Final.
								"
@export var speed: float = 0.025 

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
