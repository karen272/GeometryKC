extends Area2D

func _on_externo_area_entered(area):
    if area.is_in_group("kill"):
        $"..".death()
        self.queue_free()
