extends Node2D

@onready var player := $Corpo_1
@onready var dataSave = load("res://Save/player_data.gd")
@onready var menu_roupas = $Menu_Roupas

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if(dataSave.get_corpo()==1):
		player = $Corpo_1
		$Corpo_2.hide()
	else:
		player = $Corpo_2
		$Corpo_1.hide()
	
	var player_data = load("res://Save/player_data.gd")
	player.set_cabelo(player_data.get_cabelo())
	player.set_top(player_data.get_top())
	player.set_bottom(player_data.get_bottom())
	player.set_sapato(player_data.get_sapato()) 
	player.set_olho(player_data.get_olho()) 
	player.set_pele(player_data.get_cor()) 

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
			player.set_pele(menu_roupas.val_cor)

func _on_concluido_pressed() -> void:
	dataSave.set_cor(player.get_pele())
	dataSave.set_cabelo(player.get_cabelo())
	dataSave.set_olho(player.get_olho())
	dataSave.set_top(player.get_top())
	dataSave.set_bottom(player.get_bottom())
	dataSave.set_sapato(player.get_sapato())
	get_tree().change_scene_to_file('res://Menus/cenas/level_select_screen.tscn')
