extends Control

func _ready() -> void:
	%Play.call_deferred("grab_focus")

func play() -> void:
	%Audio.play()
	await %Audio.finished
	get_tree().change_scene_to_file("res://Gameplay/Gameplay.tscn")


func credits() -> void:
	%Back.call_deferred("grab_focus")
	
	%Audio.play()
	$Stack.current_tab = 1

func back() -> void:
	%Play.call_deferred("grab_focus")
	
	%Audio.play()
	$Stack.current_tab = 0


func settings() -> void:
	%"Settings Back".call_deferred("grab_focus")
	
	%Audio.play()
	$Stack.current_tab = 2
