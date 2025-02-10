extends Node2D

@export_file var retorno

static var nome_tl_inicio : String
static var nome_tl_fim : String

@onready var dataSave = load("res://Save/player_data.gd")
@onready var player := $Corpo_2

func _ready():
	Dialogic.start(nome_tl_inicio)
	if(dataSave.get_corpo()==1):
		player = $Corpo_1
		$Corpo_2.hide()
	else:
		player = $Corpo_2
		$Corpo_1.hide()
	
	player.set_pele(dataSave.get_cor())

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
		
	var categoria_se = Dialogic.VAR.categoria_se
	var categoria_fc = Dialogic.VAR.categoria_fc
	var pontuacao := 0
	
	if (categoria_se == 0): #simples
		if (player.get_top() == 0 || player.get_top() == 1):
			pontuacao = pontuacao+1
		if (player.get_bottom() == 0 || player.get_bottom() == 1):
			pontuacao = pontuacao+1
		if (player.get_sapato() == 0 || player.get_sapato() == 1):
			pontuacao = pontuacao+1
			
	elif (categoria_se == 1): #extravagante
		if (player.get_top() == 2 || player.get_top() == 3):
			pontuacao = pontuacao+1
		if (player.get_bottom() == 2 || player.get_bottom() == 3):
			pontuacao = pontuacao+1
		if (player.get_sapato() == 2 || player.get_sapato() == 3):
			pontuacao = pontuacao+1
			
	if (categoria_fc == 1): #casual
		if (player.get_top() == 1 || player.get_top() == 3):
			pontuacao = pontuacao+1
		if (player.get_bottom() == 1 || player.get_bottom() == 3):
			pontuacao = pontuacao+1
		if (player.get_sapato() == 1 || player.get_sapato() == 3):
			pontuacao = pontuacao+1
			
	elif (categoria_fc == 0): #formal
		if (player.get_top() == 0 || player.get_top() == 2):
			pontuacao = pontuacao+1
		if (player.get_bottom() == 0 || player.get_bottom() == 2):
			pontuacao = pontuacao+1
		if (player.get_sapato() == 0 || player.get_sapato() == 2):
			pontuacao = pontuacao+1
	
	Dialogic.VAR.pontuacao = pontuacao
	Dialogic.start(nome_tl_fim)
	
	if retorno == null:
		return
	get_tree().change_scene_to_file(retorno)

func _on_menu_roupas_valor_atualizado() -> void:
	var menu_roupas = $Menu_Roupas
	player.set_cabelo(menu_roupas.val_cabelo)
	player.set_olho(menu_roupas.val_olho)
	player.set_top(menu_roupas.val_top)
	player.set_bottom(menu_roupas.val_bottom)
	player.set_sapato(menu_roupas.val_sapato)

static func set_intro(nome : String):
	nome_tl_inicio = nome

static func set_outro(nome : String):
	nome_tl_fim = nome
