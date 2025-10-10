extends Node2D

var music_player: AudioStreamPlayer
var music_enabled := true

var audio_stream_player_node : AudioStreamPlayer = null

func _ready():
	load_settings()
	music_player = AudioStreamPlayer.new()
	add_child(music_player)
	music_player.stream = preload("res://Assests/Three Knives Deep Soundtrack.mp3")
	if "loop" in music_player.stream:
		music_player.stream.loop = true
	
	music_player.play()
	music_player.volume_db = 0 if music_enabled else -80
		
	
func toggle_music():
	music_enabled = !music_enabled
	music_player.volume_db = 0 if music_enabled else -80
	save_settings()
	
	
func save_settings():
	var config = ConfigFile.new()
	config.set_value("audio", "music_enabled", music_enabled)
	config.save("user://settings.cfg")
	
func load_settings():
	var config = ConfigFile.new()
	var err = config.load("user://settings.cfg")
	if err == OK:
		music_enabled = config.get_value("audio", "music_enabled", true)
		
