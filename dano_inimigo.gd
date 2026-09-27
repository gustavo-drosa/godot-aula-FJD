extends Area2D

@onready var animacao: AnimatedSprite2D = owner.get_node("animacao")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		body.velocity.y = body.JUMP_VELOCITY
		animacao.play("morrer")
		await animacao.animation_finished
		owner.queue_free()
