extends Area2D





func _on_moneda_body_entered(body):
    queue_free()
    Global.refresh_moneda(1)
