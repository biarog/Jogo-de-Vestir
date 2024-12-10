extends Button

@export_file var scene_path

func _on_pressed():
	get_tree().paused = false
	if scene_path == null:
		return
	get_tree().change_scene_to_file(scene_path)
