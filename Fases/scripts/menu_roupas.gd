extends Node2D

@export var flag := 0

@export var val_cabelo := 0
@export var val_olho := 0
@export var val_top := 0
@export var val_bottom := 0
@export var val_sapato := 0
@export var val_pele := 0

signal valor_atualizado(val:int) 


func _ready(): 
	if !flag:
		$Fundo/Selecoes/Botao_pele.hide()
	hide_all_selections()

func hide_all_selections():
	$Fundo/Cabelos.hide()
	$Fundo/Olhos.hide()
	$Fundo/Tops.hide()
	$Fundo/Bottoms.hide()
	$Fundo/Sapatos.hide()
	$Fundo/Peles.hide()
	
func escolha_menu(nome:String):
	hide_all_selections()
	var background = $Fundo
	var nodulo := background.find_child(nome)
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
	
func escolha_pele(val: int):
	self.val_pele = val
	valor_atualizado.emit(5)
