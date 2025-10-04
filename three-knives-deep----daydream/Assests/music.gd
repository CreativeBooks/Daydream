extends Node2D

var audio_stream_player_node : AudioStreamPlayer = null

func _ready() -> void:
	var new_audio_stream_player := AudioStreamPlayer.new()
	new_audio_stream_player.stream = load("res://Assests/Three Knives Deep Soundtrack.mp3")
	new_audio_stream_player.autoplay = true
	audio_stream_player_node = new_audio_stream_player
	add_child(new_audio_stream_player)
	
func _process(_delta: float) -> void:
	if audio_stream_player_node:
		if !audio_stream_player_node.playing:
			audio_stream_player_node.play()
 
