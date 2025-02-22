extends Node2D

func _on_botao_inicio_pressed():
	var saveData = preload("res://Save/save_data.gd")
	
	if not saveData.progresso_novels[0]:
		saveData.unlock_vn(0)
		saveData.unlock_lvl(0)
		Dialogic.start("Intro_Passado")
	
	get_tree().change_scene_to_file("res://Menus/cenas/selecionar_tipo_corpo.tscn")
