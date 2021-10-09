extends Node

const Value = preload("res://addons/gdyarn/core/value.gd")
var variables : Dictionary = {}# String,Value

func set_value(name:String,value):
    if !(value is Value):
        variables[name] = Value.new(value)
    else:
        variables[name] = value

func get_value(name:String):
    return variables[name] if variables.has(name) else null

func clear_values():
    variables.clear()
