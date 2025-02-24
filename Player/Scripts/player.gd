extends Node2D

func hide_top():
	$Top.hide()

func hide_bottom():
	$Bottom.hide()

func hide_sapato():
	$Sapato.hide()

func show_top():
	$Top.show()

func show_bottom():
	$Bottom.show()

func show_sapato():
	$Sapato.show()

func set_cabelo(val_cabelo:int):
	$Cabelo.frame = val_cabelo

func set_olho(val_olho:int):
	$Olho.frame = val_olho

func set_pele(val_pele:int):
	$Pele.frame = val_pele

func set_top(val_top:int):
	$Top.frame = val_top

func set_bottom(val_bottom:int):
	$Bottom.frame = val_bottom

func set_sapato(val_sapato:int):
	$Sapato.frame = val_sapato

func get_cabelo() -> int:
	return $Cabelo.frame

func get_olho() -> int:
	return $Olho.frame

func get_pele() -> int:
	return $Pele.frame

func get_top() -> int:
	return $Top.frame

func get_bottom() -> int:
	return $Bottom.frame

func get_sapato() -> int:
	return $Sapato.frame
