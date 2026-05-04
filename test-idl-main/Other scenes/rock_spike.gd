extends Area3D

func _ready():

	if not body_entered.is_connected(_on_body_entered):
		body_entered.connect(_on_body_entered)
	
	$AnimationPlayer.play("Rise")
	await $AnimationPlayer.animation_finished
	$AnimationPlayer.play("BackInGround")
	

	get_tree().create_timer(0.5).timeout.connect(_disable_collision)
	

	await $AnimationPlayer.animation_finished
	queue_free()

func _disable_collision():

	monitoring = false
	monitorable = false


func _on_body_entered(body):
	if body.has_method("take_damage"):

		body.take_damage(20.0) 
		print("Rock dealt damage to: ", body.name)
