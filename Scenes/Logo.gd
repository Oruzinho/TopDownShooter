extends Sprite2D

var pos: Vector2 = Vector2.ZERO
const speed: int = 400
var scl: float = 1

func _ready():
	pos = Vector2(0,350)
	scl = 2

func _process(delta):
	pass
#	pos.x += speed * delta
#	position = pos
	
#	var rot = 45
#	rotation += rot
	
#	scl += 0.1
#	scale = Vector2(scl, scl)

 
