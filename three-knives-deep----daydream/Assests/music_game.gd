extends Node2D

func _ready() -> void:
	Music.audio_stream_player_node.stream = load("res://Assests/Three Knives Deep Soundtrack.mp3")
	Music.audio_stream_player_node.stop()
	Music.audio_stream_player_node.volume_db = -1.5
	Music.audio_stream_player_node.pitch_scale = 1.22
