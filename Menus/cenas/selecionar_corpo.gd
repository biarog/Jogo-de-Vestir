extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_corpo_1_pressed() -> void:
	#deve mudar de cena
	#adicionar aos dados do jogador o corpo 1
	get_tree().change_scene_to_file("res://Menus/cenas/selecionar_cor_corpo.tscn")


func _on_corpo_2_pressed() -> void:
	#adicionar aos dados do jogador o corpo 2
	get_tree().change_scene_to_file("res://Menus/cenas/selecionar_tudo_corpo.tscn")
