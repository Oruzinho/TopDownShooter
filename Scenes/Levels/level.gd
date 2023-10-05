extends Node2D
var rot: int = 300
var laser_scene = preload("res://Scenes/Projectiles/laser.tscn")
var grenade_scene = preload("res://Scenes/Projectiles/grenade.tscn")

func _process(_delta):
	pass
#	$Logo.rotation_degrees += rot * delta
#
##	if $Logo.rotation_degrees > 180:
##		$Logo.rotation_degrees = 0
#
#	if $Logo.position.x > 1000:
#		$Logo.pos.x = 0
		
#func test_function():
#	print("test")


func _on_gate_player_entered_gate(body):
	print("The player has entered the gate")

func _on_player_shoot_laser():
	print("shoot laser")
	var laser = laser_scene.instantiate()
	laser.position = $Player.position
	add_child(laser)
	
func _on_player_shoot_grenade():
	print("shoot granade")
	var grenade = grenade_scene.instantiate()
	grenade.position = $Player.position
	add_child(grenade)
