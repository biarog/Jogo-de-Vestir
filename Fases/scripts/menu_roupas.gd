extends Node2D

@export var val_cabelo := 0
@export var val_olho := 0
@export var val_top := 0
@export var val_bottom := 0
@export var val_sapato := 0
@export var val_cor := 0

signal valor_atualizado()


func _ready():
	hide_all()

func hide_all():
	$Cabelos.hide()
	$Olhos.hide()
	$Tops.hide()
	$Bottoms.hide()
	$Sapatos.hide()
	
func escolha_menu(nome:String):
	hide_all()
	var nodulo := find_child(nome)
	nodulo.show()

func escolha_cabelo(val:int):
	self.val_cabelo = val
	valor_atualizado.emit()

func escolha_olho(val: int):
	self.val_olho = val
	valor_atualizado.emit()

func escolha_top(val: int):
	self.val_top = val
	valor_atualizado.emit()

func escolha_bottom(val: int):
	self.val_bottom = val
	valor_atualizado.emit()

func escolha_sapato(val: int):
	self.val_sapato = val
	valor_atualizado.emit()
