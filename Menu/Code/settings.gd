extends Control

func _ready() -> void:
	%Volume.value = db_to_linear(audioVolume.volume_db)

func volume_updated(value: float) -> void:
	%Audio.play()
	
	audioVolume.volume_db = linear_to_db(%Volume.value)
