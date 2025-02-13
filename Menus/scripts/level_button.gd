extends Button


func ir_para_fase(n_fase : int):
	const scriptfase := preload("res://Fases/scripts/fase.gd")
	var nome_intro = "Intro_Fase_" + str(n_fase)
	var nome_fim = "Fim_Fase_" + str(n_fase)
	
	scriptfase.set_outro(nome_fim)
	Dialogic.start(nome_intro)
	get_tree().change_scene_to_file("res://Fases/cenas/fase.tscn")

func _on_button_down():
	self.set_button_icon(ResourceLoader.load("res://Artes/Botoes/Fase_Pressed.png"))

func _on_button_up(val: int):
	self.set_button_icon(ResourceLoader.load("res://Artes/Botoes/Fase.png"))
	ir_para_fase(val)
