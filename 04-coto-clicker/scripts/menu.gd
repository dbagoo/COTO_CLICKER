extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_2_pressed() -> void:
	Global.coins=0
	Global.coins_per_click=1
	Global.auto_coin=false
	Global.purchased_upgrades=[]
	get_tree().change_scene_to_file('res://scenes/main.tscn')


func _on_button_pressed() -> void:
	Global.load_game()



func _on_button_out_pressed() -> void:
	get_tree().quit()


func _on_button_save_pressed() -> void:
	Global.save_game()
