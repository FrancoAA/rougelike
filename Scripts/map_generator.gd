extends Node

@onready var room_scene: PackedScene = load("res://Scenes/Room/room.tscn")

var map_width: int = 7
var map_height: int = 7
var rooms_to_generate: int = 12
var rooms_count: int = 0
var rooms_instantiated: int
var first_room_pos: Vector2

var map: Array
var room_nodes: Array

@export var enemy_spawn_chance: float
@export var coin_spawn_chance: float
@export var heart_spawn_chance: float

@export var max_enemies_per_room: int
@export var max_heart_per_room: int
@export var max_coins_per_room: int
