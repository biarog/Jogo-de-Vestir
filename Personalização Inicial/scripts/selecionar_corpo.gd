extends Node2D

static var corpo: int = 0 #obs: resolvi que, pelo menos por hora, vai ficar aqui o dado do corpo escolhido

func _on_corpo_1_pressed() -> void:
	#deve mudar de cena
	#adicionar aos dados do jogador o corpo 1:
	var other_script = load("res://Save/player_data.gd")
	other_script.set_corpo(1)
	get_tree().change_scene_to_file("res://Personalização Inicial/cenas/selecionar_aparencia.tscn")
	


func _on_corpo_2_pressed() -> void:
	#adicionar aos dados do jogador o corpo 2
	var other_script = load("res://Save/player_data.gd")
	other_script.set_corpo(2)
	get_tree().change_scene_to_file("res://Personalização Inicial/cenas/selecionar_aparencia.tscn")

static func get_corpo() -> int:
	return corpo
