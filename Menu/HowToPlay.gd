extends Node2D

func _ready():
    $AudioStreamPlayer2D.play()

func _on_BtnBack_pressed():
    get_tree().change_scene("res://Menu/mundo.tscn")
    pass
