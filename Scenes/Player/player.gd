extends CharacterBody2D

var speed: int = 600
var can_laser: bool = true
var can_grenade: bool = true
signal shoot_laser
signal shoot_grenade

func _ready():
	pass 
	
func move_character():
#	Esse trecho do código controla a movimentação do personagem através da função get_vector, que recebe os inputs declarados no
#	mapa de Inputs, referentes às teclas de movimentação, respectivamente, esquerda, direita, cima e baixo.
#	position += direction * speed * delta # Fazemos desse jeito pra mover usando position quando não está usando a física
#	O código abaixo move o personagem utilizando a física do Body

	var direction = Input.get_vector("left", "right", "top", "down")
	velocity = direction * speed
	move_and_slide()
	
	#	As ações comentadas abaixo são as mesmas que as que estão acima, porém o código acima funciona de uma forma simplificada, utilizando
#	a função get_vector, que já foi construída com o intuito de tornar mais fácil programar a movimentação do jogador em jogs top-down.
#
#	if Input.is_action_pressed("left"):
#		position.x -= speed * delta
#
#	if Input.is_action_pressed("right"):
#		position.x += speed * delta
#
#	if Input.is_action_pressed("top"):
#		position.y -= speed * delta
#
#	if Input.is_action_pressed("down"):
#		position.y += speed * delta
	


func character_actions():
	if Input.is_action_pressed("primary action") and can_laser:
		shoot_laser.emit()
		can_laser = false
		$LaserReload.start()
#		Forma alternativa de criar um timer para o laser
#		await get_tree().create_timer(0.5).timeout
#		can_laser = true		
		
	elif Input.is_action_pressed("secondary action") and can_grenade:
		shoot_grenade.emit()
		can_grenade = false
		$GrenadeReload.start()
#		Forma alternativa de criar um timer para a granada
#		await get_tree().create_timer(2.0).timeout
#		can_grenade = true
		
	else:
		return
		
func _process(_delta):
	move_character()
	
	character_actions()
	
func _on_laser_reload_timeout():
#	Quando o timeout terminar, queremos que o Jogador possa atirar novamente. Esta condição garante que isto ocorra.
	can_laser = true
	
func _on_grenade_reload_timeout():
#	O mesmo que a função acima, mas para a granada
	can_grenade = true

