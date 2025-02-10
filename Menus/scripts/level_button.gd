extends Button

func _on_button_down():
	self.set_button_icon(ResourceLoader.load("res://Artes/Botoes/Fase_Pressed.png"))

func _on_button_up():
	self.set_button_icon(ResourceLoader.load("res://Artes/Botoes/Fase.png"))
	ir_para_fase()

func ir_para_fase():
	pass
