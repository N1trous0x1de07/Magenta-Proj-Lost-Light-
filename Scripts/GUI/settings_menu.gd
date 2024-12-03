extends HSlider 

func _on_hslider_value_changed(value: float) -> void:
	# Set the master bus volume in decibels
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), value)
