
# Stores for the executing player at the current position

execute store result score @s rescue_tp_x run data get entity @s Pos[0] 1
execute store result score @s rescue_tp_y run data get entity @s Pos[1] 1
execute store result score @s rescue_tp_z run data get entity @s Pos[2] 1
execute store result score @s rescue_tp_yaw run data get entity @s Rotation[0] 1

