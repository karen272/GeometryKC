extends Label
var personaje

func _process(delta):
    $".".text="Monedas: "+str(Global.moneda)
    

func _ready():
    # Encuentra al personaje en la escena principal
    personaje = get_tree().root.get_node("res://scripts/jugador.gd")  # Cambia el path según la estructura de tu escena

    
    # Asegúrate de que "personaje" es una referencia válida
    #if personaje:
        
        #global_position = personaje.global_position + Vector2(50, -50)  # Ajusta el offset según tu preferencia
