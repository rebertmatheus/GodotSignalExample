extends Label

# Variable for increase the counter.
var count = 0

#this variable receive the signal's emmiter node.
var button

#This label only for show the counter's variable.
var label

func _ready():
	#Fill the variables with each node.
	button = get_parent().get_node("signal_button")
	label = get_parent().get_node("number_label")
	
	#The connect function is responsible for call the function to be executed when the signal is trigged.
	button.connect("button_pressed", self, "add_count")

func add_count():
	print("signal received")
	count += 1
	label.set_text(str(count))
