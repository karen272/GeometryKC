extends Node

var moneda= 0 

signal moneda_chanchaged(moneda)

func refresh_moneda(var delta):
    moneda += delta
