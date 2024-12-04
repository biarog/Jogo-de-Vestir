extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_menu_roupas_valor_atualizado() -> void:
	$Player.val_cabelo = $Menu_Roupas.val_cabelo
	$Player.val_olho = $Menu_Roupas.val_olho
	print($Player.val_olho)
	$Player.val_pele = $Menu_Roupas.val_pele
	$Player.val_top = $Menu_Roupas.val_top
	$Player.val_bottom = $Menu_Roupas.val_bottom
	$Player.val_sapato = $Menu_Roupas.val_sapato
