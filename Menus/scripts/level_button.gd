extends Button

@export var botao_fase : bool

func _ready():
	check_blocked()


func ir_para_fase(n_fase : int):
	const scriptfase := preload("res://Fases/scripts/fase.gd")
	var nome_intro = "Intro_Fase_" + str(n_fase)
	var nome_fim = "Fim_Fase_" + str(n_fase)
	
	scriptfase.set_outro(nome_fim)
	scriptfase.set_n_fase(n_fase)
	Dialogic.start(nome_intro)
	get_tree().change_scene_to_file("res://Fases/cenas/fase.tscn")

func ir_para_vn(n_vn : int):
	match n_vn:
		1:
			Dialogic.start("Intro_Passado")
		6:
			Dialogic.start("Epilogo")

func check_blocked():
	var num_but = self.get_name().to_int() - 1
	var saveData = preload("res://Save/save_data.gd")
	if botao_fase:
		self.set_disabled(not saveData.progresso_niveis[num_but])
	else:
		self.set_disabled(not saveData.progresso_novels[num_but])


func _on_button_down():
	if botao_fase:
		self.set_button_icon(ResourceLoader.load("res://Artes/Botoes/Fase_Pressed.png"))
		
	else:
		self.set_button_icon(ResourceLoader.load("res://Artes/Botoes/Novel_Pressed.png"))
		pass

func _on_button_up(val: int):
	if botao_fase:
		self.set_button_icon(ResourceLoader.load("res://Artes/Botoes/Fase.png"))
		ir_para_fase(val)
	else:
		self.set_button_icon(ResourceLoader.load("res://Artes/Botoes/Novel.png"))
		ir_para_vn(val)
