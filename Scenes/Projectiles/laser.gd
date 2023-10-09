extends Area2D

var speed = 1000
var direction = Vector2.UP

func _ready():
	pass
	
func _process(delta):
	position += direction * speed * delta
