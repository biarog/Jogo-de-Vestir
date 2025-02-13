extends Resource
class_name SaveData

static var progresso_niveis := [false, false, false, false]
static var progresso_novels := [false, false, false, false, false, false]

static func unlock_lvl(idx:int):
	progresso_niveis[idx] = true

static func unlock_vn(idx:int):
	progresso_novels[idx] = true

static func block_all():
	progresso_niveis = [false, false, false, false]
	progresso_novels = [false, false, false, false, false, false]
