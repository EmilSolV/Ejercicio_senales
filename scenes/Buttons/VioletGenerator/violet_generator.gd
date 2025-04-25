extends TextureButton

@onready var BlockViolet = preload("res://scenes/Blocks/Violet/BlockViolet.tscn")

func _on_button_down():
	generate_block()

func generate_block():
	var new_block = BlockViolet.instantiate()
	get_tree().current_scene.add_child(new_block)
