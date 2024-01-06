extends Node

var Coper = 100
var Silver = 2
var Gold = 1000

func _ready():
	pass # Replace with function body.


func consume_coper_coins(how_much):
	if how_much > Coper:
		var silver_value_to_consume = ceil(float( how_much)/10)
		if consume_silver_coin(silver_value_to_consume):
			Coper += silver_value_to_consume * 10 
	
	if how_much > Coper:
		return false
		
	Coper -= how_much
	return true
	

func consume_silver_coin(how_much):
	if how_much > Silver:
		var gold_value_to_consume = ceil(float(how_much)/10)
		if consume_gold_coin(gold_value_to_consume):
			Silver += gold_value_to_consume * 10
	
	if how_much > Silver:
		return false
		
	Silver -= how_much
	return true


func consume_gold_coin(how_much):
	if how_much > Gold:
		return false
		
	Gold -= how_much
	return true
