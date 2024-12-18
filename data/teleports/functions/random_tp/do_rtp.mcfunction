
# Teleports the executing player between 100 and 1000 blocks away to a safe position
execute as @s run spreadplayers ~ ~ 100 1000 false @s
scoreboard players set @s random_tp_cooldown 1200