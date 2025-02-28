extends Control

@onready var screen = $Camera
@onready var btn_right = $Camera/Control/GoRight
@onready var btn_left = $Camera/Control/GoLeft

var qnt_levels := 9
var tela_atual := 1

func left_btn_vis():
	if(tela_atual == 1 && btn_left.is_visible()):
		btn_left.hide()
	elif (tela_atual > 1 && !btn_left.is_visible()):
		btn_left.show()

func right_btn_vis():
	if(tela_atual == qnt_levels && btn_right.is_visible()):
		btn_right.hide()
	elif (tela_atual < qnt_levels && !btn_right.is_visible()):
		btn_right.show()

func _ready() -> void:
	left_btn_vis()
	right_btn_vis()
	hide_menu()

func move_screen(move_to: Vector2) -> void:
	var tween = create_tween()
	tween.tween_property(screen, "position", move_to, 0.7).set_trans(Tween.TRANS_BACK)

func _on_go_right_pressed() -> void:
	tela_atual += 1
	var movimento : Vector2 = screen.position
	movimento.x += 1109
	move_screen(movimento)
	left_btn_vis()
	right_btn_vis()

func _on_go_left_pressed()  -> void:
	tela_atual -= 1
	var movimento : Vector2 = screen.position
	movimento.x -= 1109
	move_screen(movimento)
	left_btn_vis()
	right_btn_vis()

func _on_menu_button_pressed():
	$Camera/Control/Menu.show()

func hide_menu():
	$Camera/Control/Menu.hide()
	$Camera/Control/Creditos.hide()

func _on_character_select_pressed():
	get_tree().change_scene_to_file("res://Menus/cenas/selecionar_tipo_corpo.tscn")

func _on_voltar_pressed():
	hide_menu()

func _on_save_pressed():
	var saveData = SaveData.new()
	saveData.save_data()

func _on_delete_pressed():
	var saveData = SaveData.new()
	saveData.delete_data()
	get_tree().change_scene_to_file("res://Menus/cenas/tela_inicio.tscn")

func _on_credits_pressed():
	$Camera/Control/Creditos.show()

func _on_sair_pressed():
	hide_menu()
