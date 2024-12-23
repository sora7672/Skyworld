
scoreboard players add tier_up timer 1

execute as @e[type=item,nbt={Item:{tag:{broken_by_player:1b}}}] run function looting:mining_tier/check_drops_as_exp

execute as @a if score tier_up timer matches 200.. run function looting:mining_tier/check_tier_up
execute if score tier_up timer matches 200.. run scoreboard players set tier_up timer 0