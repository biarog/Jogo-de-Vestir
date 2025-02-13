extends Node2D

@export var flag := 0

@export var val_cabelo := 0
@export var val_olho := 0
@export var val_top := 0
@export var val_bottom := 0
@export var val_sapato := 0
@export var val_cor := 0

signal valor_atualizado(val:int) 


func _ready():	 
	if !flag:
		$Selecoes/Botao_cor.hide()
	hide_all()

func hide_all():
	$Cabelos.hide()
	$Olhos.hide()
	$Tops.hide()
	$Bottoms.hide()
	$Sapatos.hide()
	$Cores.hide()
	
func escolha_menu(nome:String):
	hide_all()
	var nodulo := find_child(nome)
	nodulo.show()

func escolha_cabelo(val:int):
	self.val_cabelo = val
	valor_atualizado.emit(0)

func escolha_olho(val: int):
	self.val_olho = val
	valor_atualizado.emit(1)

func escolha_top(val: int):
	self.val_top = val
	valor_atualizado.emit(2)

func escolha_bottom(val: int):
	self.val_bottom = val
	valor_atualizado.emit(3)

func escolha_sapato(val: int):
	self.val_sapato = val
	valor_atualizado.emit(4)
	
func escolha_cor(val: int):
	self.val_cor = val
	valor_atualizado.emit(5)
