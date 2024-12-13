execute store result score @p player_y run data get entity @p Pos[1] 1

execute as @a at @s if dimension overworld if score @s player_y < dim_overworld world_min_height run function teleports:rescue_tp/rescue
execute as @a at @s if dimension the_nether if score @s player_y < dim_nether world_min_height run function teleports:rescue_tp/rescue
execute as @a at @s if dimension the_end if score @s player_y < dim_end world_min_height run function teleports:rescue_tp/rescue
