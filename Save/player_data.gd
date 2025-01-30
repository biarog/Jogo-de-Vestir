extends Resource
class_name PlayerData

static var corpo: int = 0 #contém valor 1 (magro) ou 2 (gordo) 
static var cor: int = 0 #contém o valor de 0 (mais claro) a 7 (mais escuro)

static func get_corpo() -> int:
	return corpo

static func get_cor() -> int:
	return cor

static func set_corpo(valor: int) -> void:
	corpo = valor
	
static func set_cor(valor: int) -> void:
	cor = valor
