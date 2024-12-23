# This should setup all the initial scoreboards that are needed for the functions

## timer for all modules
scoreboard objectives add timer dummy

scoreboard players set tier_up timer 0

scoreboard objectives add mining_tier dummy
scoreboard objectives add mining_exp dummy

execute as @a unless score @s mining_tier matches 1.. run scoreboard players set @s mining_tier 1
execute as @a unless score @s mining_exp matches 1.. run scoreboard players set @s mining_exp 0


## All user info

execute as @a run tellraw @s ["",{"text":"Loaded looting module.","color":"white"}]



