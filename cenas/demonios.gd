extends Node

var Djabo = preload("res://cenas/djabo.tscn")
var Ovelha = preload("res://cenas/ovelha.tscn")

@onready var timer_disparar = $TimerDisparar

var lista_Djabos = []

func _ready():
	$TimerOvelha.wait_time = randf_range(3.0, 20.0)
	$TimerOvelha.start()
	for j in range(4):
		lista_Djabos.append([])
		for i in range(8):
			var Djabo = Djabo.instantiate()
			Djabo.global_position = Vector2(55+20*i, 40+20*j)
			self.add_child(Djabo)
			lista_Djabos[j].append(Djabo)
			Djabo.connect("Djabo_eliminado", Callable(self, "eliminar_Djabo"))
			Djabo.connect("Djabo_eliminado", Callable(get_parent(), "Somar_pontos_Djabo"))

			
func eliminar_Djabo():
	#print("Djabo eliminado")
	for fila in lista_Djabos:
		for i in range(len(fila)-1):
			
				fila.remove_at(i)


func _on_timer_descida_timeout():
	print("descendo")
	for fila in lista_Djabos:
		for a in fila:
			if is_instance_valid(a):
				a.position.y += 21


func _on_timer_disparar_timeout():
	var lista_Djabos_vivos = []
	for fila in lista_Djabos:
		for a in fila:
			if is_instance_valid(a) and !a.is_queued_for_deletion():
				lista_Djabos_vivos.append(a)
				
	if lista_Djabos_vivos:
		var indice = int(floor(randf_range(0, len(lista_Djabos_vivos)-1)))
		lista_Djabos_vivos[indice].disparar()
		timer_disparar.wait_time = randf_range(2, 5)
		


func _on_timer_ovelha_timeout():
	var ovelha = Ovelha.instantiate()
	self.add_child(ovelha)
	ovelha.connect("ovelha_eliminado", Callable(get_parent(), "somar_ovelha"))
