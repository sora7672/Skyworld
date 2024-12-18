
# If trigger random_tp was used by a player they get random tped
execute as @a[scores={random_tp=1..}] at @s run function teleports:random_tp/rtp

# Reset the trigger
scoreboard players set @a[scores={random_tp=1..}] random_tp 0
scoreboard players enable @a random_tp