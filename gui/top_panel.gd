extends Panel


func _ready():
	pass # Replace with function body.


func _process(_delta):
	$HBoxContainer/Coper.text = str(GlobalResource.Coper) 
	$HBoxContainer/Silver.text = str(GlobalResource.Silver)
	$HBoxContainer/Gold.text = str(GlobalResource.Gold)
