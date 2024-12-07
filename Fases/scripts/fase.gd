extends Node2D
var categoria := 0
var player : Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player = $Corpo_2

func sistema_avaliacao_roupas():
	var pontuacao = 0
	# categorias:
		#0: simples
		#1: extravagante
		#2: casual
		#3: formal
	if (categoria == 0): #simples
		if ($Player.val_top == 0 || $Player.val_top == 1):
			pontuacao = pontuacao+1
		elif ($Player.val_bottom == 0 || $Player.val_bottom == 1):
			pontuacao = pontuacao+1
		elif ($Player.val_sapato == 0 || $Player.val_sapato == 1):
			pontuacao = pontuacao+1
			
	elif (categoria == 1): #extravagante
		if ($Player.val_top == 2 || $Player.val_top == 3):
			pontuacao = pontuacao+1
		elif ($Player.val_bottom == 2 || $Player.val_bottom == 3):
			pontuacao = pontuacao+1
		elif ($Player.val_sapato == 2 || $Player.val_sapato == 3):
			pontuacao = pontuacao+1
			
	elif (categoria == 2): #casual
		if ($Player.val_top == 1 || $Player.val_top == 3):
			pontuacao = pontuacao+1
		elif ($Player.val_bottom == 1 || $Player.val_bottom == 3):
			pontuacao = pontuacao+1
		elif ($Player.val_sapato == 1 || $Player.val_sapato == 3):
			pontuacao = pontuacao+1
			
	elif (categoria == 3): #formal
		if ($Player.val_top == 0 || $Player.val_top == 2):
			pontuacao = pontuacao+1
		elif ($Player.val_bottom == 0 || $Player.val_bottom == 2):
			pontuacao = pontuacao+1
		elif ($Player.val_sapato == 0 || $Player.val_sapato == 2):
			pontuacao = pontuacao+1

func _on_menu_roupas_valor_atualizado() -> void:
	player.set_cabelo($Menu_Roupas.val_cabelo)
	player.set_olho($Menu_Roupas.val_olho)
	player.set_top($Menu_Roupas.val_top)
	player.set_bottom($Menu_Roupas.val_bottom)
	player.set_sapato($Menu_Roupas.val_sapato)
