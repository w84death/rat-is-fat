extends "res://scripts/map/rooms/abstract_room.gd"

func _init():
    self.room = [
        [ 4,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  6],
        [ 7,  1,  0,  0,  0,  8,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  9],
        [ 7,  2,  0,  0,  0,  1,  2,  0,  0,  0,  1,  0,  0,  0,  1,  0,  9],
        [ 7,  0,  1,  0,  0,  0,  1,  0,  0,  0,  0,  0,  0,  2,  0,  0,  9],
        [ 7,  0,  0,  2,  0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  2,  0,  9],
        [ 7,  0,  0,  0,  1,  0,  0,  0,  0,  1,  0,  0,  0,  0,  0,  0,  9],
        [ 7,  1,  0,  0,  0,  0,  1,  0,  0,  0,  0,  2,  0,  0,  0,  0,  9],
        [ 7,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  9],
        [ 7,  0,  0,  0,  0,  8,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  9],
        [ 7,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  9],
        [12, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11],
    ]