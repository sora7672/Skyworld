
# If trigger home was used by a player
execute as @a[scores={home=1..}] at @s run function teleports:player_home/home

# If trigger sethome was used by a player
execute as @a[scores={sethome=1..}] at @s run function teleports:player_home/sethome

# Reset all triggers
scoreboard players set @a[scores={sethome=1..}] sethome 0
scoreboard players set @a[scores={home=1..}] home 0
scoreboard players enable @a sethome
scoreboard players enable @a home

