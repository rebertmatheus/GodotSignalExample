extends Button

#You can put your signal here.
signal button_pressed

func _ready():
	pass


func _on_signal_button_pressed():
	#Insert signal's name here.
	emit_signal("button_pressed")
