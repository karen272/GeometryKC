extends Area2D

func _on_Coleccionable_body_entered(body):
    if body is KinematicBody2D:  
        Global.refresh_coleccionable(1)  
        queue_free()  
