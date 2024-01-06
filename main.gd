extends Node2D


func _ready():
	pass # Replace with function body.


func _on_timer_timeout():
	GlobalMainLoop.act()
