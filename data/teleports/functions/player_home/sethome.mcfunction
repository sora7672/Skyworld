
# Only works in overworld, sets coords and give info on the set position
execute as @s if dimension overworld run function teleports:player_home/set_coords
execute as @s if dimension overworld run tellraw @s ["",{"text":"Successfully set your home to (","color":"white"},{"text":"x","color":"red"},{"text":", ","color":"white"},{"text":"y","color":"green"},{"text":", ","color":"white"},{"text":"z","color":"blue"},{"text":"): ","color":"white"},{"score":{"name":"*","objective":"home_x"},"color":"red"},{"text":" ","color":"white"},{"score":{"name":"*","objective":"home_y"},"color":"green"},{"text":" ","color":"white"},{"score":{"name":"*","objective":"home_z"},"color":"blue"}]

# if a sethome is used outside overworld, warn
execute as @s unless dimension overworld run tellraw @s ["",{"text":"ERROR: ","color":"red"},{"text":"Can't set home in this dimension!","color":"white"}]