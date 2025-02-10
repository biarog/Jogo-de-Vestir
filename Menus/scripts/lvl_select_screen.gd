extends Control

@onready var screen = $Camera
@onready var btn_right = $Camera/Control/GoRight
@onready var btn_left = $Camera/Control/GoLeft

var qnt_levels := 4
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

func move_screen(move_to: Vector2) -> void:
	var tween = create_tween()
	tween.tween_property(screen, "position", move_to, 0.7).set_trans(Tween.TRANS_BACK)

func _on_go_right_pressed() -> void:
	tela_atual += 1
	var movimento : Vector2 = screen.position
	movimento.x += 1108
	move_screen(movimento)
	left_btn_vis()
	right_btn_vis()

func _on_go_left_pressed()  -> void:
	tela_atual -= 1
	var movimento : Vector2 = screen.position
	movimento.x -= 1108
	move_screen(movimento)
	left_btn_vis()
	right_btn_vis()
