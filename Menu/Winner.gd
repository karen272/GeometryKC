extends Button


func _ready():
    pass 



func _on_BtnBackToMenu_pressed():
    get_tree().change_scene("res://Menu/ChooseLvl.tscn")
