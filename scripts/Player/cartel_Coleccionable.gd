extends Label
 
func _process(delta):
    $".".text="= "+str(Global.coleccionable)
    
func _on_BtnBack_pressed():
    get_tree().change_scene("res://Scenes/Menu/ChooseLvl.tscn")
