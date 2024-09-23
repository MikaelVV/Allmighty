extends Area3D

var intrigger = false

func entering_trigger(body):
	if body.name == "Player":
		intrigger = true
		
func exiting_trigger(body):
	if body.name == "Player":
		intrigger = false

func _process(delta: float) -> void:
	if intrigger && get_parent().current != true:
		get_parent().current = true
