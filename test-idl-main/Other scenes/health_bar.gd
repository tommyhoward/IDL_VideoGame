extends Sprite3D

@onready var bar = $SubViewport/TextureProgressBar

func update_bar(current_health: float, max_health: float):
	if bar:
		bar.max_value = max_health
		bar.value = current_health
