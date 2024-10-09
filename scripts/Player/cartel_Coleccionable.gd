extends Label
#var personaje

func _process(delta):
    $".".text="= "+str(Global.coleccionable)
    

#func _ready():
    # Encuentra al personaje en la escena principal
    #personaje = get_tree().root.get_node("res://scripts/Player/jugador.gd")  

   


func _on_BtnBack_pressed():
    get_tree().change_scene("res://Scenes/Menu/ChooseLvl.tscn")
    pass # Replace with function body.
