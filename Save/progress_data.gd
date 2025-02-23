extends Resource
class_name ProgressData

static var saveData = SaveData.new()
static var progresso_niveis := [false, false, false, false]
static var progresso_novels := [false, false, false, false, false, false]
static var player_modified := false

static func player_foi_customizado():
	player_modified = true
	saveData.save_data()

static func unlock_lvl(idx:int):
	progresso_niveis[idx] = true
	saveData.save_data()

static func unlock_vn(idx:int):
	progresso_novels[idx] = true
	saveData.save_data()

static func block_all():
	progresso_niveis = [false, false, false, false]
	progresso_novels = [false, false, false, false, false, false]
	saveData.save_data()
