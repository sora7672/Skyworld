
# If trigger home was used by a player
execute as @a[scores={home=1..}] at @s run function teleports:player_home/home

# If trigger set_home was used by a player
execute as @a[scores={set_home=1..}] at @s run function teleports:player_home/set_home

# Reset all triggers
scoreboard players set @a[scores={set_home=1..}] set_home 0
scoreboard players set @a[scores={home=1..}] home 0
scoreboard players enable @a set_home
scoreboard players enable @a home

