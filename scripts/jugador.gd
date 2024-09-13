extends KinematicBody2D

var SPEED = 40000
const JUMP_VELOCITY = -1000

var gravity = 4100
var velocity = Vector2()

var is_dead = false  # Variable para evitar que la muerte se ejecute más de una vez

func _ready():
    $Timer.wait_time = 1.0  # Establece el tiempo de espera del Timer a la duración del sonido
    $Timer.one_shot = true  # Asegúrate de que el Timer solo se ejecute una vez
    $Timer.stop()  # Asegúrate de que el Timer esté detenido al inicio

func _physics_process(delta):
    if is_dead:
        return  # Si está muerto, no hace nada más

    # Gravedad
    if not is_on_floor():
        velocity.y += gravity * delta
    else:
        # Salto
        if Input.is_action_pressed("salto"):
            velocity.y = JUMP_VELOCITY
    
    # Movimiento horizontal
    velocity.x = SPEED * delta
    
    velocity = move_and_slide(velocity, Vector2.UP)

func death():
    if not is_dead:
        is_dead = true
        SPEED = 0
        $Sprite.visible = false

        # Detener el sonido si está sonando
        if $AudioStreamPlayer2D.playing:
            $AudioStreamPlayer2D.stop()

        $AudioStreamPlayer2D.play()
        $Timer.start()  # Inicia el Timer para que se ejecute el reinicio de la escena después de la duración del sonido

func _on_Timer_timeout():
    get_tree().reload_current_scene()
