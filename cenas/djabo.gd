extends CharacterBody2D

var fogo = preload("res://cenas/fogo.tscn")
@onready var time_movimento = $TimerMovimento
@onready var animation_player = $AnimationPlayer
@onready var spawn_point = $SpawnPoint

var origin = 0
var distancia = 30
var passo = 7
var direction = 1

signal Djabo_eliminado

func _ready():
	time_movimento.start()
	origin = self.position.x

func _on_timer_movimento_timeout():
	#print(self.position.x)
	self.position.x += direction * passo
	if self.position.x >= origin + distancia or self.position.x <= origin - distancia:
		direction *= -1
		
func explosion():
	animation_player.play("Destroy")
	$AudioStreamPlayer.play() 
	
func elimination():
	emit_signal("Djabo_eliminado", self)
	get_parent().remove_child(self)
	queue_free()
	

func disparar():
	var fogo = fogo.instantiate()
	fogo.global_position = spawn_point.global_position
	get_parent().add_child(fogo)
