extends Node2D


func _ready():
    $AudioStreamPlayer2D.play()

func _on_BtnLvl1_pressed():
    get_tree().change_scene("res://Scenes/Lavels/Lvl1.tscn")
    pass 

func _on_BtnLvl2_pressed():
    get_tree().change_scene("res://Scenes/Lavels/Lvl2.tscn")
    pass 


func _on_BtnBack_pressed():
    get_tree().change_scene("res://Scenes/Menu/mundo.tscn")
    pass # Replace with function body.
