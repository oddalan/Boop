extends Control

func restart() -> void:
	get_tree().reload_current_scene()


func menu() -> void:
	get_tree().change_scene_to_file("res://Menu/Menu.tscn")
