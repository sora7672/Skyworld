

tellraw @s ["",{"text":"Here you have your ","color":"white"}, {"text":"starter items!","color":"yellow"}]
tellraw @s ["",{"text":"Remember: If lava runs onto water you get ","color":"white"},{"text":"'smooth' stone","color":"green"},{"text":" and if water runs onto lava you get ","color":"white"},{"text":"cobble stone","color":"purple"}]



give @s minecraft:lava_bucket
give @s minecraft:water_bucket
give @s minecraft:chest
give @s minecraft:hopper
give @s minecraft:torch 32

give @s minecraft:stone_pickaxe{Enchantments:[{id:"minecraft:unbreaking",lvl:1},{id:"minecraft:fortune",lvl:1}],display:{Name:'{"text":"Fortune Smooth Stone Miner","color":"purple","italic":false}',Lore:['{"text":"This special pick is intended for","color":"gray","italic":false}','{"text":"getting the metals you need faster!","color":"gray","italic":false}']}}

give @s minecraft:stone_axe{Enchantments:[{id:"minecraft:unbreaking",lvl:2}]}

give @s minecraft:apple{display:{Name:'{"text":"Sky Apples","color":"yellow"}'}} 10

execute if score global random_sapling matches 1 run give @s minecraft:oak_sapling
execute if score global random_sapling matches 2 run give @s minecraft:spruce_sapling
execute if score global random_sapling matches 3 run give @s minecraft:birch_sapling
execute if score global random_sapling matches 4 run give @s minecraft:jungle_sapling
execute if score global random_sapling matches 5 run give @s minecraft:dark_oak_sapling 4

execute if score global random_sapling matches 5 run scoreboard players set global random_sapling 0
scoreboard players add global random_sapling 1