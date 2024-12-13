
execute run scoreboard objectives add world_avg_height dummy
execute run scoreboard players set dim_overworld world_avg_height 64
execute run scoreboard players set dim_nether world_avg_height 48
execute run scoreboard players set dim_end world_avg_height 112

execute run scoreboard objectives add world_min_height dummy
execute run scoreboard players set dim_overworld world_min_height 5
execute run scoreboard players set dim_nether world_min_height 5
execute run scoreboard players set dim_end world_min_height 5

scoreboard objectives add player_y dummy
execute as @a run scoreboard players set @s player_y 0

execute as @a run tellraw @s ["",{"text":"Teleportations DP loaded ","color":"white"}]



