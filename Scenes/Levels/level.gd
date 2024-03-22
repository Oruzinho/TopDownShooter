extends Node2D
var laser_scene = preload("res://Scenes/Projectiles/laser.tscn")
var grenade_scene = preload("res://Scenes/Projectiles/grenade.tscn")

func _process(_delta):
	pass

func _on_gate_player_entered_gate(_body):
	print("The player has entered the gate")

func _on_player_shoot_laser(pos,dir):
	print("shoot laser")
	var laser = laser_scene.instantiate() as Area2D
	laser.position = pos
	laser.rotation_degrees = rad_to_deg(dir.angle()) + 90
	laser.direction = dir
	$Projectiles.add_child(laser)
	
func _on_player_shoot_grenade(pos, dir):
	print("shoot granade")
	var grenade = grenade_scene.instantiate() as RigidBody2D
	grenade.position = pos
	grenade.linear_velocity = dir * grenade.speed
	$Projectiles.add_child(grenade)
