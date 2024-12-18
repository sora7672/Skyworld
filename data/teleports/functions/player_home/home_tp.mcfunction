
# Placeholder entity to tp later to, no drops, no AI
summon villager ~ ~ ~ {Tags:["home_tp_villager"],NoAI:1b,Silent:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}

# procedure to prevent chunkloading tp problems
tag @s add teleporting_home
execute as @e[tag=home_tp_villager,limit=1] run function teleports:player_home/entity_tp_helper
tag @s remove teleporting_home



