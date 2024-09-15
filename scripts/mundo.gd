extends Node2D


func _on_BtnPlay_pressed():
    get_tree().change_scene("res://Scenes/Level1.tscn")
    pass # Replace with function body.


func _on_BtnQuit_pressed():
    get_tree().quit()
    pass # Replace with function body.
