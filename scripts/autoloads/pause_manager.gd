extends Node

var pause_condition: StringName

func pause() -> void:
	pause_condition = ""
	get_tree().call_group(&"PauseManager", &"update")
	get_tree().paused = true

func pause_with_condition(condition: StringName) -> void:
	pause_condition = condition
	get_tree().call_group(&"PauseManager", &"update")
	get_tree().paused = true

func unpause() -> void:
	get_tree().paused = false
	pause_condition = ""
	get_tree().call_group(&"PauseManager", &"update")
