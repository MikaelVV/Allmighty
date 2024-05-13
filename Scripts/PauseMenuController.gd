extends Node



func _on_return_to_main_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")


func _on_resume_game_pressed() -> void:
	pass 
