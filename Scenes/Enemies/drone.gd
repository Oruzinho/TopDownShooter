extends CharacterBody2D
#var pos: Vector2 = Vector2.ZERO
var speed: int = 1000

# Called when the node enters the scene tree for the first time.
func _ready():
#	pos = Vector2(-100, -235)
#	position = pos
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
#	if position.x > 1200:
#		pos.x = 0
#		position = pos
#	else:
#		pos.x += speed * delta
#		position = pos

	if position.x > 1200:
		position.x = 0
	else:
		var direction = Vector2.RIGHT
		velocity = direction * speed
		move_and_slide()
	
	
