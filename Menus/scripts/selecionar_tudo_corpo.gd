extends Node2D

@onready var player := $Corpo_1
@onready var playerData = load("res://Save/player_data.gd")
@onready var menu_roupas = $Menu_Roupas

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if(playerData.get_corpo()==1):
		player = $Corpo_1
		$Corpo_2.hide()
	else:
		player = $Corpo_2
		$Corpo_1.hide()
	
	player.set_cabelo(playerData.get_cabelo())
	player.set_top(playerData.get_top())
	player.set_bottom(playerData.get_bottom())
	player.set_sapato(playerData.get_sapato()) 
	player.set_olho(playerData.get_olho()) 
	player.set_pele(playerData.get_pele()) 

func _on_menu_roupas_valor_atualizado(val:int) -> void:
	match(val):
		0:
			player.set_cabelo(menu_roupas.val_cabelo)
		1:
			player.set_olho(menu_roupas.val_olho)
		2:
			player.set_top(menu_roupas.val_top)
		3:
			player.set_bottom(menu_roupas.val_bottom)
		4:
			player.set_sapato(menu_roupas.val_sapato)
		5:
			player.set_pele(menu_roupas.val_pele)

func _on_concluido_pressed() -> void:
	playerData.set_pele(player.get_pele())
	playerData.set_cabelo(player.get_cabelo())
	playerData.set_olho(player.get_olho())
	playerData.set_top(player.get_top())
	playerData.set_bottom(player.get_bottom())
	playerData.set_sapato(player.get_sapato())
	
	var progData = load("res://Save/progress_data.gd")
	progData.player_foi_customizado()
	
	get_tree().change_scene_to_file('res://Menus/cenas/level_select_screen.tscn')
