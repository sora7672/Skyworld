
# saves pos to scores
execute store result score @s home_x run data get entity @s Pos[0] 1
execute store result score @s home_y run data get entity @s Pos[1] 1
execute store result score @s home_z run data get entity @s Pos[2] 1
execute store result score @s home_yaw run data get entity @s Rotation[0] 1

spawnpoint @s


execute unless score @s home_is_set matches 1 run function skyworld:start_items
execute unless score @s home_is_set matches 1 run scoreboard players set @s home_is_set 1
