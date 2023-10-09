extends CharacterBody2D
#var pos: Vector2 = Vector2.ZERO
var speed: int = 1000

func _ready():
	pass

func _process(_delta):

	if position.x > 1200:
		position.x = 0
	else:
		var direction = Vector2.RIGHT
		velocity = direction * speed
		move_and_slide()
	
	
