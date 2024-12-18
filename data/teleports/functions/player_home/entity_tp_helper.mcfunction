
# Change the placeholder to the scoreboard values of the player
execute store result entity @s Pos[0] double 1 run scoreboard players get @a[tag=teleporting_home,limit=1] home_x
execute store result entity @s Pos[1] double 1 run scoreboard players get @a[tag=teleporting_home,limit=1] home_y
execute store result entity @s Pos[2] double 1 run scoreboard players get @a[tag=teleporting_home,limit=1] home_z

# Teleport the player to the entity
tp @a[tag=teleporting_home,limit=1] @s
# Remove the entity
kill @s