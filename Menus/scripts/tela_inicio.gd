extends Node2D

func _on_botao_inicio_pressed():
	var saveData = SaveData.new()
	saveData.load_data()
	var progData = preload("res://Save/progress_data.gd")
	
	if not progData.progresso_novels[0]:
		progData.unlock_vn(0)
		progData.unlock_vn(1)
		Dialogic.start("Intro_Passado")
	
	if not progData.player_modified:
		get_tree().change_scene_to_file("res://Menus/cenas/selecionar_tipo_corpo.tscn")
	else:
		get_tree().change_scene_to_file("res://Menus/cenas/level_select_screen.tscn")
