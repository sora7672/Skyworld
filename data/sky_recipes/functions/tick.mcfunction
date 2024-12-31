

execute as @e[type=minecraft:skeleton,tag=alternative_blaze] unless predicate sky_recipes:skeleton_on_fire run tag @s remove alternative_blaze
execute as @e[type=minecraft:skeleton, tag=!alternative_blaze] if predicate sky_recipes:skeleton_on_fire run tag @s add alternative_blaze



