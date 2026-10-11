extends Node

@export var volume_db = -6.02059991327962:
	set(value):
		var index = AudioServer.get_bus_index("Master")
		AudioServer.set_bus_volume_db(index, value)
		
		volume_db = value
