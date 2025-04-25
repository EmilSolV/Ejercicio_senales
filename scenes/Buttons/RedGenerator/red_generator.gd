extends TextureButton

@onready var BlockRed = preload("res://scenes/Blocks/Red/BlockRed.tscn")

func _on_button_down():
	generate_block()

func generate_block():
	var new_block = BlockRed.instantiate()
	get_tree().current_scene.add_child(new_block)
