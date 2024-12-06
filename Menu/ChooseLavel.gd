extends Node2D


func _ready():
    $AudioStreamPlayer2D.play()

func _on_BtnLvl1_pressed():
    get_tree().change_scene("res://Levels/Lvl1.tscn")
    pass 

func _on_BtnLvl2_pressed():
    get_tree().change_scene("res://Levels/Lvl2.tscn")
    pass 


func _on_BtnBack_pressed():
    get_tree().change_scene("res://Menu/mundo.tscn")
    pass 


func _on_BtnLvl3_pressed():
    get_tree().change_scene("res://Levels/Lvl3.tscn")
    pass 


func _on_BtnLvl4_pressed():
    get_tree().change_scene("res://Levels/Lvl4.tscn")
    pass 
