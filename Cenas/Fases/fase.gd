extends Node2D

var categoria = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
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
		if ($Player.val_bottom == 0 || $Player.val_bottom == 1):
			pontuacao = pontuacao+1
		if ($Player.val_sapato == 0 || $Player.val_sapato == 1):
			pontuacao = pontuacao+1
			
	if (categoria == 1): #extravagante
		if ($Player.val_top == 2 || $Player.val_top == 3):
			pontuacao = pontuacao+1
		if ($Player.val_bottom == 2 || $Player.val_bottom == 3):
			pontuacao = pontuacao+1
		if ($Player.val_sapato == 2 || $Player.val_sapato == 3):
			pontuacao = pontuacao+1
			
	if (categoria == 2): #casual
		if ($Player.val_top == 1 || $Player.val_top == 3):
			pontuacao = pontuacao+1
		if ($Player.val_bottom == 1 || $Player.val_bottom == 3):
			pontuacao = pontuacao+1
		if ($Player.val_sapato == 1 || $Player.val_sapato == 3):
			pontuacao = pontuacao+1
			
	if (categoria == 3): #formal
		if ($Player.val_top == 0 || $Player.val_top == 2):
			pontuacao = pontuacao+1
		if ($Player.val_bottom == 0 || $Player.val_bottom == 2):
			pontuacao = pontuacao+1
		if ($Player.val_sapato == 0 || $Player.val_sapato == 2):
			pontuacao = pontuacao+1
	



func _on_menu_roupas_valor_atualizado() -> void:
	$Player.val_cabelo = $Menu_Roupas.val_cabelo
	$Player.val_olho = $Menu_Roupas.val_olho
	print($Player.val_olho)
	$Player.val_pele = $Menu_Roupas.val_pele
	$Player.val_top = $Menu_Roupas.val_top
	$Player.val_bottom = $Menu_Roupas.val_bottom
	$Player.val_sapato = $Menu_Roupas.val_sapato
