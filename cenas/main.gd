extends Node

var pontos = 0
@onready var label_pontos = $VBoxContainer/LabelPontos 

func Somar_pontos_Djabo(a):
	print("pontos")
	pontos += 100
	label_pontos.text = str(pontos)

func somar_ovelha():
	print("pontos")
	pontos += 500
	label_pontos.text = str(pontos)
