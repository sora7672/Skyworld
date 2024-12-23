# execute in overworld always only if a home is set
# else inform user to set home before
# or wait for cooldown

# tp player home
execute as @s in minecraft:overworld if score @s home_cooldown matches 0 if score @s home_is_set matches 1 run function teleports:player_home/home_tp

# player has no sethome
execute as @s unless score @s home_is_set matches 1 run tellraw @s ["",{"text":"ERROR: ","color":"red"},{"text":"You have no home set. ","color":"white"}]
execute as @s unless score @s home_is_set matches 1 run tellraw @s ["",{"text":"Please run this before: ","color":"white"}, {"text":"/trigger sethome","color":"green"}]

# player has cooldown on tp
execute as @s unless score @s home_cooldown matches 0 run tellraw @s ["",{"text":"You have cooldown on home: ","color":"white"},  {"score":{"name": "*","objective":"home_cooldown"},"color":"red"},{"text":" ticks","color":"red"}, {"text":"(20 = 1 second)","color":"white"}]

### ADMIN Changeable setup the timer for home tps, 20 ticks = 1 seconss, so 1200 is 60 seconds or 1 minute ###
execute as @s if score @s home_cooldown matches 0 run scoreboard players set @s home_cooldown 1200