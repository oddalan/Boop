extends Control

func restart() -> void:
	get_tree().reload_current_scene()

func menu() -> void:
	get_tree().change_scene_to_file("res://Menu/Menu.tscn")

func just_show() -> void:
	if visible:
		%"End Score".text = "Your Score: " + str(%Ball.points)
