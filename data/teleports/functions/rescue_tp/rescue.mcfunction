
## Debug note: This could make a problem, if multiple players fall out of the world at same tick ##

# For fallback reasons, give the player a short levitation
effect give @s minecraft:levitation 1 1 true

# Placeholder entity to tp later to, no drops, no AI
summon villager ~ ~ ~ {Tags:["rescue_tp_villager"],NoAI:1b,Silent:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}

# This setup is to prevent unloaded chunk problems
tag @s add teleporting_rescue
execute as @e[tag=rescue_tp_villager,limit=1] run function teleports:rescue_tp/entity_tp_helper
tag @s remove teleporting_rescue
