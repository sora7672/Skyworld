# This should setup all the initial scoreboards that are needed for the functions

## timer for all modules
scoreboard objectives add timer dummy

## scoreboard for enabling modules
scoreboard objectives add enabled_modules dummy
################# Editable by the admin ################
# If the module name is set to 1
# If you set it to 0 here, the module wont be used.
execute unless score rescue_tp enabled_modules matches 0.. run scoreboard players set rescue_tp enabled_modules 1
execute unless score player_home enabled_modules matches 0.. run scoreboard players set player_home enabled_modules 1
execute unless score random_tp enabled_modules matches 0.. run scoreboard players set random_tp enabled_modules 1
execute unless score always_random_tp enabled_modules matches 0.. run scoreboard players set always_random_tp enabled_modules 0

################# End of editable by the admin ################

## rescue_tp scores
execute run scoreboard objectives add world_min_height dummy
# set the min height for the 3 standard dimensions to trigger the functions
################# Editable by the admin ################
execute unless score dim_overworld world_min_height = dim_overworld world_min_height run scoreboard players set dim_overworld world_min_height 5
execute unless score dim_nether world_min_height = dim_nether world_min_height run scoreboard players set dim_nether world_min_height 5
execute unless score dim_end world_min_height = dim_end world_min_height run scoreboard players set dim_end world_min_height 5

################# End of editable by the admin ################

# For height check
scoreboard objectives add player_y dummy
execute as @a run scoreboard players set @s player_y 64

scoreboard players set set_rescue_pos timer 0

scoreboard objectives add rescue_tp_x dummy
scoreboard objectives add rescue_tp_y dummy
scoreboard objectives add rescue_tp_z dummy
scoreboard objectives add rescue_tp_yaw dummy

## player_home scores
scoreboard objectives add home_x dummy
scoreboard objectives add home_y dummy
scoreboard objectives add home_z dummy
scoreboard objectives add home_yaw dummy

scoreboard objectives add home_is_set dummy
scoreboard objectives add home_check_timer dummy
execute as @a run scoreboard players set @s home_check_timer 0


scoreboard objectives add home trigger
scoreboard objectives add set_home trigger
scoreboard players enable @a home
scoreboard players enable @a set_home

scoreboard objectives add home_cooldown dummy
execute as @a run scoreboard players set @s home_cooldown 0

scoreboard players set player_home timer 0

# random teleport scores
scoreboard objectives add random_tp trigger
scoreboard players enable @a random_tp
scoreboard players set random_tp timer 0

scoreboard objectives add random_tp_cooldown dummy
execute as @a run scoreboard players set @s random_tp_cooldown 0

## All user info


execute as @a run tellraw @s [{"text":"Loaded teleports module.","color":"white"}]
execute as @a run tellraw @s [{"text":"In ","color":"white"},{"text":"Overworld","color":"green"},{"text":" min y is set to ","color":"white"},{"score":{"name":"dim_overworld","objective":"world_min_height"},"color":"yellow"}]
execute as @a run tellraw @s [{"text":"In ","color":"white"},{"text":"the Nether","color":"red"},{"text":" min y is set to ","color":"white"},{"score":{"name":"dim_nether","objective":"world_min_height"},"color":"yellow"}]
execute as @a run tellraw @s [{"text":"In ","color":"white"},{"text":"the End","color":"light_purple"},{"text":" min y is set to ","color":"white"},{"score":{"name":"dim_end","objective":"world_min_height"},"color":"yellow"}]
execute as @a run tellraw @s ["",{"text":"Please make sure the dimension height is set properly. ","color":"white"}]



