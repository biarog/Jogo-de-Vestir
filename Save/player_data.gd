extends Resource
class_name PlayerData

static var corpo: int = 0 #contém valor 1 (magro) ou 2 (gordo) 
static var pele: int = 0 #contém o valor de 0 (mais claro) a 7 (mais escuro)
static var olho: int = 0
static var sapato: int = 0
static var top: int = 0
static var bottom: int = 0
static var cabelo: int = 0

static func get_corpo() -> int:
	return corpo

static func set_corpo(valor: int) -> void:
	corpo = valor


static func get_pele() -> int:
	return pele

static func set_pele(valor: int) -> void:
	pele = valor


static func get_cabelo() -> int:
	return cabelo

static func set_cabelo(valor: int) -> void:
	cabelo = valor


static func get_olho() -> int:
	return olho

static func set_olho(valor: int) -> void:
	olho = valor


static func get_sapato() -> int:
	return sapato

static func set_sapato(valor: int) -> void:
	sapato = valor


static func get_top() -> int:
	return top

static func set_top(valor: int) -> void:
	top = valor


static func get_bottom() -> int:
	return bottom

static func set_bottom(valor: int) -> void:
	bottom = valor
