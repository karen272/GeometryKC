extends KinematicBody2D

var SPEED = 40000
const JUMP_VELOCITY = -1000

var gravity = 4100
var velocity = Vector2()
var has_started = false
var jump_count = 0
var max_jumps = 2

func _ready():
    $SoundBackground.play()
    $Timer.wait_time = 1.0
    $Timer.one_shot = true
    $Timer.stop()

func _physics_process(delta):

    if not has_started:
        if Input.is_action_pressed("salto"):
            has_started = true
            $HUD.get_node("PressSpace").hide()
        return

    if not is_on_floor():
        velocity.y += gravity * delta
    else:
        jump_count = 0

    if Input.is_action_just_pressed("salto") and jump_count < max_jumps:
        velocity.y = JUMP_VELOCITY
        jump_count += 1

    velocity.x = SPEED * delta
    velocity = move_and_slide(velocity, Vector2.UP)

func death():
    SPEED = 0
    $Sprite.visible = false

    if $AudioStreamPlayer2D.playing:
        $AudioStreamPlayer2D.stop()

    $AudioStreamPlayer2D.play()
    $Timer.start()
    Global.coleccionable = 0

func add_coin():
    Global.refresh_coleccionable(1) 

func _on_Timer_timeout():
    get_tree().reload_current_scene()


func _on_portal_body_entered(body):
    get_tree().change_scene("res://Scenes/Menu/ChooseLvl.tscn")
    pass 


func _on_BtnBack_pressed():
    get_tree().change_scene("res://Scenes/Menu/ChooseLvl.tscn")
    pass # Replace with function body.

