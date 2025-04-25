extends Node2D

const INSTANCES_TEXT = "Cantidad de instancias: "
# Variable para contar cantidad de instancias
var instancesCount = 0

func _ready():
	# Inicializa el texto de "CountLabel" usando el texto
	# Constante "INSTANCES_TEXT" más el valor de "instancesCount" como Texto
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
	pass

func _on_reset_button_down():
	for block in get_tree().get_nodes_in_group("blocks"):
		block.delete()
		
	instancesCount = 0
	$CountLabel.text = "Cantidad de instancias: " + str(instancesCount)
