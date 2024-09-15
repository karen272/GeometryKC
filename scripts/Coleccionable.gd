extends Area2D





func _on_Coleccionable_body_entered(body):
    queue_free()
    Global.refresh_Coleccionable(1)
