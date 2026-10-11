extends CharacterBody2D

var speed = 400
var dir: Vector2

var points = 0

func _ready() -> void:
	var start_directions = [
		Vector2(1, -1.0),
		Vector2(1, -0.5),
		Vector2(1, 0.5 ),
		Vector2(1, 1.0 ),
	]
	
	dir = start_directions.pick_random()
	

func _process(delta: float) -> void:
	position += dir * speed * delta
	
	move_and_slide()
	
	if get_slide_collision_count() > 0:
		for i in range(get_slide_collision_count()):
			if not get_slide_collision(i).get_collider() == %"Death Area":
				$AudioStreamPlayer.play()
			
			var normal = get_slide_collision(i).get_normal()
			
			if get_slide_collision(i).get_collider() == %Player:
				points += 1
				speed += 20
				%Score.text = "Score: " + str(points)
			
			if normal.round().abs() == Vector2(0.0, 1.0):
				dir.y = normal.y
			if normal.round().abs() == Vector2(1.0, 0.0):
				dir.x = normal.x


func death(body: Node2D) -> void:
	if body == self:
		$"../Death Area/Sound".play()
		$"../UI Layer/TabContainer".current_tab = 1
		
		%Restart.grab_focus()
		
