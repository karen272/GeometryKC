extends Label
#var personaje

func _process(delta):
    $".".text="Hamburguesistas: "+str(Global.coleccionable)
    

#func _ready():
    # Encuentra al personaje en la escena principal
    #personaje = get_tree().root.get_node("res://scripts/Player/jugador.gd")  

   
