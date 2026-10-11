extends StaticBody2D

@onready var ball: CharacterBody2D = %Ball
@onready var speed: float = %"Player 1".speed

func find_ball_target():
	var ball_pos      = ball.position
	var ball_velocity = ball.velocity
	
