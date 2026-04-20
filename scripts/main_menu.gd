extends MarginContainer

func ToGame() -> void:
	get_tree().change_scene_to_file("res://scenes/game.tscn")

func ToOptionsMenu() -> void:
	get_tree().change_scene_to_file("res://scenes/game.tscn")

func QuitGame() -> void:
	get_tree().quit()
