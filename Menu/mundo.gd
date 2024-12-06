extends Node2D

func _ready():
    $AudioStreamPlayer2D.play()

func _on_BtnPlay_pressed():
    get_tree().change_scene("res://Menu/ChooseLvl.tscn")
    pass 

func _on_BtnQuit_pressed():
    get_tree().quit()
    pass 

func _on_BtnHowToPlay_pressed():
    get_tree().change_scene("res://Menu/HowToPlay.tscn")
    pass 
