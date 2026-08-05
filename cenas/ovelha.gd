extends CharacterBody2D

signal ovelha_eliminado
var velocidade = 50

func _process(delta):
	position.x -= velocidade * delta

func _on_animation_player_animation_finished(anim_name):
	if anim_name == "santo" :
		emit_signal("ovelha_eliminado")
		queue_free()
		
func explosion():
	$AnimationPlayer.play("santo")
	$AudioStreamPlayer.play()
