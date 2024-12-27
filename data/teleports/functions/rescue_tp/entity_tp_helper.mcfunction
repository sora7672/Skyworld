
# Change the placeholder to the scoreboard values of the player
execute store result entity @s Pos[0] double 1 run scoreboard players get @a[tag=teleporting_rescue,limit=1] rescue_tp_x
execute store result entity @s Pos[1] double 1 run scoreboard players get @a[tag=teleporting_rescue,limit=1] rescue_tp_y
execute store result entity @s Pos[2] double 1 run scoreboard players get @a[tag=teleporting_rescue,limit=1] rescue_tp_z
execute store result entity @s Rotation[0] float 1 run scoreboard players get @a[tag=teleporting_rescue,limit=1] rescue_tp_yaw


# Teleport the player to the entity
tp @a[tag=teleporting_rescue,limit=1] @s
# Remove the entity
kill @s