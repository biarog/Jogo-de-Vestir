extends Node2D
@export var val_cabelo := 0
@export var val_olho := 0
@export var val_pele := 0
@export var val_top := 0
@export var val_bottom := 0
@export var val_sapato := 0

func set_cabelo():
	$Cabelo.frame = val_cabelo

func set_olho():
	$Olho.frame = val_olho

func set_pele():
	$Pele.frame = val_pele

func set_top():
	$Top.frame = val_top

func set_bottom():
	$Bottom.frame = val_bottom

func set_sapato():
	$Sapato.frame = val_sapato


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
