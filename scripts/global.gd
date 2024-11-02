extends Node

var coleccionable = 0  # Contador de coleccionables

# Señal para notificar cambios en el valor de coleccionables
signal coleccionable_changed(new_value)

# Método para actualizar el valor de coleccionables
func refresh_coleccionable(delta):
    coleccionable += delta
    emit_signal("coleccionable_changed", coleccionable)  # Emite la señal cada vez que se actualiza
