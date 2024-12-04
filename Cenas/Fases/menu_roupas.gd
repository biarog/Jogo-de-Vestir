extends Node2D

@export var val_cabelo := 0
@export var val_olho := 0
@export var val_pele := 0
@export var val_top := 0
@export var val_bottom := 0
@export var val_sapato := 0

func _ready():
	pass

func hide_all():
	$Cabelos.hide()
	$Olhos.hide()
	$Peles.hide()
	$Tops.hide()
	$Bottoms.hide()
	$Sapatos.hide()

func escolha_menu(nome:String):
	hide_all()
	var nodulo := find_child(nome)
	nodulo.show()

func escolha_cabelo(val:int):
	pass
