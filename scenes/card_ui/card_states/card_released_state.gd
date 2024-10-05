extends CardState


var played: bool


func enter() -> void:
	card_ui.color.color = Color.DARK_VIOLET
	card_ui.state.text = "RELEASED"
	
	played = false
	
	if not card_ui.targets.is_empty():
		played = true
		print("play card for targets: ", card_ui.targets)

#func exit() -> void:
	#pass


func on_input(event: InputEvent) -> void:
	if played:
		return
		
	transition_requested.emit(self, CardState.State.BASE)


#func on_gui_input(event: InputEvent) -> void:
	#pass
#
#
#func on_mouse_entered() -> void:
	#pass
#
#
#func on_mouse_exited() -> void:
	#pass

