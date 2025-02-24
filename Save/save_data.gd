class_name SaveData
extends Node

const SAVE_GAME_PATH := "user://save_data.json"

var progresso : Resource = preload("res://Save/progress_data.gd")
var player : Resource = preload("res://Save/player_data.gd")

func save_data() :
	
	var data := {
		"progresso" :
			{
				"progresso_niveis" : progresso.progresso_niveis,
				"progresso_novels" : progresso.progresso_novels,
				"player_modified" : progresso.player_modified
			},
		"player" :
			{
				"corpo" : player.get_corpo(),
				"pele" : player.get_pele(),
				"cabelo" : player.get_cabelo(),
				"olho" : player.get_olho(),
				"top" : player.get_top(),
				"bottom" : player.get_bottom(),
				"sapato" : player.get_sapato(),
				"escolha_1" : player.get_esc_1(),
				"escolha_2" : player.get_esc_2(),
				"escolha_3" : player.get_esc_3()
			}
	}
	
	var json_data := JSON.stringify(data)
	var json_file := FileAccess.open(SAVE_GAME_PATH, FileAccess.WRITE)
	
	json_file.store_line(json_data)
	json_file.close()

func load_data() :
	if FileAccess.file_exists(SAVE_GAME_PATH):
		var json_file := FileAccess.open(SAVE_GAME_PATH, FileAccess.READ)
		var json_data := json_file.get_as_text()
		
		json_file.close()
		
		var data = JSON.parse_string(json_data)
		
		progresso.progresso_niveis = data.progresso.progresso_niveis
		progresso.progresso_novels = data.progresso.progresso_novels
		progresso.player_modified = data.progresso.player_modified
		
		player.set_corpo(data.player.corpo)
		player.set_pele(data.player.pele)
		player.set_olho(data.player.olho)
		player.set_cabelo(data.player.cabelo)
		player.set_top(data.player.top)
		player.set_bottom(data.player.bottom)
		player.set_sapato(data.player.sapato)
		
		player.set_esc_1(data.player.escolha_1)
		player.set_esc_2(data.player.escolha_2)
		player.set_esc_3(data.player.escolha_3)
		
	else :
		progresso.progresso_niveis = [false, false, false, false]
		progresso.progresso_novels = [false, false, false, false, false]
		progresso.player_modified = false
		
		player.set_corpo(0)
		player.set_pele(0)
		player.set_olho(0)
		player.set_cabelo(0)
		player.set_top(0)
		player.set_bottom(0)
		player.set_sapato(0)
		
		player.set_esc_1(0)
		player.set_esc_2(0)
		player.set_esc_3(0)

func delete_data():
	DirAccess.remove_absolute(SAVE_GAME_PATH)
