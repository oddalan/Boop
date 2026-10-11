extends Node

func load_scene(path):
	get_tree().current_scene.free()
	
	var new_scene = load(path).instantiate()
	
	get_tree().root.add_child(new_scene)
