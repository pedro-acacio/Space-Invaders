extends CharacterBody2D

@export var cruz = preload("res://cenas/cruz.tscn")

@onready var mira_da_cruz = $MiraDaCruz
@onready var timer_disparo = $timerDisparo
@onready var animation_player = $AnimationPlayer

var direction = Vector2()
const SPEED = 100.0
var pode_disparar = true

func _physics_process(delta):
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction != 0:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		 
	if Input.is_action_just_pressed("shoot") and pode_disparar == true:
		var l = cruz.instantiate()
		l.global_position = mira_da_cruz.global_position
		get_parent().add_child(l)
		pode_disparar = false
		timer_disparo.start()
		$AudioStreamPlayer.play()
		
	move_and_slide()


func _on_timer_disparo_timeout():
	pode_disparar = true
	
func destruir():
	print("Livrou o pecado")
	
func eliminado():
	if !self.is_queued_for_deletion():
		get_tree().change_scene_to_file("res://cenas/game_over.tscn")
		#get_parent().remove.child(self)
		#queue_free()
	
