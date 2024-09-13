extends StaticBody2D

var jugador

func _ready():
    jugador = get_node("../jugador")
    
func _process(delta):
    position.x = jugador.position.x
    $Sprite.region_rect.position.x += (jugador.SPEED /60) * delta
