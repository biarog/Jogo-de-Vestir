extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var other_script = load("res://Personalização Inicial/scripts/selecionar_corpo.gd")
	if(other_script.get_corpo()==1):
		$Corpo_2.hide()
	else:
		$Corpo_1.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
