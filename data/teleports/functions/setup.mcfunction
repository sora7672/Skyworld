# This should setup all the initial scoreboards that are needed for the functions

## timer for all modules
scoreboard objectives add timer dummy

## scoreboard for enabling modules
scoreboard objectives add enabled_modules dummy
################# Editable by the admin ################
# If the module name is set to 1
# If you set it to 0 here, the module wont be used.
scoreboard players set rescue_tp enabled_modules 1
scoreboard players set player_home enabled_modules 1
scoreboard players set random_tp enabled_modules 1
scoreboard players set always_random_tp enabled_modules 1
################# End of editable by the admin ################

## rescue_tp scores
execute run scoreboard objectives add world_min_height dummy
# set the min height for the 3 standard dimensions to trigger the functions
################# Editable by the admin ################
execute run scoreboard players set dim_overworld world_min_height 5
execute run scoreboard players set dim_nether world_min_height 5
execute run scoreboard players set dim_end world_min_height 5
################# End of editable by the admin ################

# For height check
scoreboard objectives add player_y dummy
execute as @a run scoreboard players set @s player_y 64

scoreboard players set set_rescue_pos timer 0

scoreboard objectives add rescue_tp_x dummy
scoreboard objectives add rescue_tp_y dummy
scoreboard objectives add rescue_tp_z dummy

## player_home scores
scoreboard objectives add home_x dummy
scoreboard objectives add home_y dummy
scoreboard objectives add home_z dummy

scoreboard objectives add home trigger
scoreboard objectives add sethome trigger
scoreboard players enable @a home
scoreboard players enable @a sethome

scoreboard objectives add home_cooldown dummy
scoreboard players set @a home_cooldown 0

scoreboard players set player_home timer 0

# random teleport scores
scoreboard objectives add random_tp trigger
scoreboard players enable @a random_tp
scoreboard players set random_tp timer 0

scoreboard objectives add random_tp_cooldown dummy
scoreboard players set @a random_tp_cooldown 0

## All user info
execute as @a run tellraw @s ["",{"text":"--------------------------------------","color":"white"}]
execute as @a run tellraw @s ["",{"text":"The ","color":"white"},{"text":"Safe Void ","color":"aqua","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/sora7672/safe_void"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Visit Projects GitHub","color":"yellow"}]}}},{"text":"datapack has reloaded!","color":"white"},"\n",{"text":"Created by ","color":"white"},{"text":"[Sora_7672]","color":"dark_purple","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/sora7672"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Visit Sora_7672's GitHub","color":"yellow"}]}}}]
execute as @a run tellraw @s [{"text":"In ","color":"white"},{"text":"Overworld","color":"green"},{"text":" min y is set to ","color":"white"},{"score":{"name":"dim_overworld","objective":"world_min_height"},"color":"yellow"}]
execute as @a run tellraw @s [{"text":"In ","color":"white"},{"text":"the Nether","color":"red"},{"text":" min y is set to ","color":"white"},{"score":{"name":"dim_nether","objective":"world_min_height"},"color":"yellow"}]
execute as @a run tellraw @s [{"text":"In ","color":"white"},{"text":"the End","color":"light_purple"},{"text":" min y is set to ","color":"white"},{"score":{"name":"dim_end","objective":"world_min_height"},"color":"yellow"}]
execute as @a run tellraw @s ["",{"text":"Please make sure the dimension height is set properly. ","color":"white"}]
execute as @a run tellraw @s ["",{"text":"--------------------------------------","color":"white"}]


