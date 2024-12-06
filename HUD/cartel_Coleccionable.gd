extends Label

func _ready():
    Global.connect("coleccionable_changed", self, "update_text")

func update_text(new_value):
    text = "= " + str(new_value)  

func _on_BtnBack_pressed():
    get_tree().change_scene("res://Menu/ChooseLvl.tscn")
