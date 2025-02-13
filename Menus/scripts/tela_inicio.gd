extends Node2D

func _on_botao_inicio_pressed():
	get_tree().change_scene_to_file("res://Personalização Inicial/cenas/selecionar_tipo_corpo.tscn")
