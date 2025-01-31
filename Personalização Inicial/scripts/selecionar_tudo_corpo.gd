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

func _on_menu_roupas_valor_atualizado() -> void:
	player.set_cabelo(menu_roupas.val_cabelo)
	player.set_olho(menu_roupas.val_olho)
	player.set_top(menu_roupas.val_top)
	player.set_bottom(menu_roupas.val_bottom)
	player.set_sapato(menu_roupas.val_sapato)
	player.set_pele(menu_roupas.val_cor)


func _on_concluido_pressed() -> void:
	dataSave.set_cor(menu_roupas.val_cor)
