extends Node2D
@export var categoria_se := 0
@export var categoria_fc := 0
@export var pontuacao = 0
@onready var player : Node2D

func sistema_avaliacao_roupas():
	# categorias:
		#categoria_se = 0: simples
		#categoria_se = 1: extravagante
		#categoria_fc = 0: formal
		#categoria_fc = 1: casual
	#Pontuacoes:
		# 0 =< pont < 3 = ruim
		# 3 =< pont < 6 = ok
		# pont == 6     = pfto

	if (categoria_se == 0): #simples
		if ($Player.val_top == 0 || $Player.val_top == 1):
			pontuacao = pontuacao+1
		if ($Player.val_bottom == 0 || $Player.val_bottom == 1):
			pontuacao = pontuacao+1
		if ($Player.val_sapato == 0 || $Player.val_sapato == 1):
			pontuacao = pontuacao+1
			
	elif (categoria_se == 1): #extravagante
		if ($Player.val_top == 2 || $Player.val_top == 3):
			pontuacao = pontuacao+1
		if ($Player.val_bottom == 2 || $Player.val_bottom == 3):
			pontuacao = pontuacao+1
		if ($Player.val_sapato == 2 || $Player.val_sapato == 3):
			pontuacao = pontuacao+1
			
	if (categoria_fc == 0): #casual
		if ($Player.val_top == 1 || $Player.val_top == 3):
			pontuacao = pontuacao+1
		if ($Player.val_bottom == 1 || $Player.val_bottom == 3):
			pontuacao = pontuacao+1
		if ($Player.val_sapato == 1 || $Player.val_sapato == 3):
			pontuacao = pontuacao+1
			
	elif (categoria_fc == 1): #formal
		if ($Player.val_top == 0 || $Player.val_top == 2):
			pontuacao = pontuacao+1
		if ($Player.val_bottom == 0 || $Player.val_bottom == 2):
			pontuacao = pontuacao+1
		if ($Player.val_sapato == 0 || $Player.val_sapato == 2):
			pontuacao = pontuacao+1


func _on_menu_roupas_valor_atualizado() -> void:
	player.set_cabelo($Menu_Roupas.val_cabelo)
	player.set_olho($Menu_Roupas.val_olho)
	player.set_top($Menu_Roupas.val_top)
	player.set_bottom($Menu_Roupas.val_bottom)
	player.set_sapato($Menu_Roupas.val_sapato)
