extends StaticBody2D

@export var speed = 250.0

func _process(delta: float) -> void:
	var dir: float = Input.get_axis("ui_up", "ui_down")
	var deadzone: float = 0.1
	
	if abs(dir) > deadzone:
		if Input.is_action_pressed("ui_up") and not $Rays/Top.is_colliding():
			position.y += dir * speed * delta
		if Input.is_action_pressed("ui_down") and not $Rays/Bottom.is_colliding():
			position.y += dir * speed * delta
