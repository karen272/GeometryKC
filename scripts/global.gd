extends Node

var coleccionable= 0 

signal Coleccionable_chanchaged(coleccionable)

func refresh_Coleccionable(var delta):
    coleccionable += delta
