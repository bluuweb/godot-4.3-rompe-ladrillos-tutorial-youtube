@tool
extends Node2D
# Mostrar el dibujo mientras se edita:
# https://docs.godotengine.org/en/stable/tutorials/2d/custom_drawing_in_2d.html#show-the-drawing-while-editing

var circle_position = Vector2.ZERO
var circle_radius = 8
var circle_color := Color("#fff")

func _draw() -> void:
	# https://docs.godotengine.org/en/stable/tutorials/2d/custom_drawing_in_2d.html#drawing-circles
	# Para dibujar un círculo, 
	# lo colocas en función de su centro utilizando el método draw_circle . 
	# El primer parámetro es un Vector2 con las coordenadas de su centro, 
	# el segundo es su radio y el tercero es su color
	draw_circle(circle_position, circle_radius, circle_color)
