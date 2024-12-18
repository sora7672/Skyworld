

summon minecraft:falling_block ~ ~3 ~ {BlockState:{Name:"minecraft:anvil"},Time:1,NoGravity:1b,Invulnerable:1b,Tags:["random_tp"]}


execute at @s as @e[tag=random_tp,limit=1] run spreadplayers ~ ~ 10 500 false @s

execute as @e[tag=random_tp,limit=1] at @s run tellraw @a {"text":"Entity Position: ","color":"gold","extra":[{"text":"X: ","color":"aqua"},{"nbt":"Pos[0]","entity":"@s","color":"yellow"},{"text":" Y: ","color":"aqua"},{"nbt":"Pos[1]","entity":"@s","color":"yellow"},{"text":" Z: ","color":"aqua"},{"nbt":"Pos[2]","entity":"@s","color":"yellow"}]}



spreadplayers ~ ~ 100 1000 false @s




say test finished!