
# executes only if the entity has the right nbt and type.

execute as @s[type=item,nbt={Item:{id:"minecraft:amethyst_shard"}}] run function looting:mining_tier/mining_exp/amethyst
execute as @s[type=item,nbt={Item:{id:"minecraft:coal"}}] run function looting:mining_tier/mining_exp/coal
execute as @s[type=item,nbt={Item:{id:"minecraft:raw_copper"}}] run function looting:mining_tier/mining_exp/copper
execute as @s[type=item,nbt={Item:{id:"minecraft:diamond"}}] run function looting:mining_tier/mining_exp/diamond
execute as @s[type=item,nbt={Item:{id:"minecraft:emerald"}}] run function looting:mining_tier/mining_exp/emerald
execute as @s[type=item,nbt={Item:{id:"minecraft:glowstone_dust"}}] run function looting:mining_tier/mining_exp/glowstone
execute as @s[type=item,nbt={Item:{id:"minecraft:raw_gold"}}] run function looting:mining_tier/mining_exp/gold
execute as @s[type=item,nbt={Item:{id:"minecraft:raw_iron"}}] run function looting:mining_tier/mining_exp/iron
execute as @s[type=item,nbt={Item:{id:"minecraft:lapis_lazuli"}}] run function looting:mining_tier/mining_exp/lapis
execute as @s[type=item,nbt={Item:{id:"minecraft:netherite_scrap"}}] run function looting:mining_tier/mining_exp/netherite
execute as @s[type=item,nbt={Item:{id:"minecraft:quartz"}}] run function looting:mining_tier/mining_exp/quartz
execute as @s[type=item,nbt={Item:{id:"minecraft:redstone"}}] run function looting:mining_tier/mining_exp/redstone
execute as @s[type=item,nbt={Item:{id:"minecraft:clay_ball"}}] run function looting:mining_tier/mining_exp/clay
execute as @s[type=item,nbt={Item:{id:"create:raw_zinc"}}] run function looting:mining_tier/mining_exp/zinc


# remove from @s nbt & tag to make it a normal drop again
execute as @e[type=item,nbt={Item:{tag:{broken_by_player:1b}}}] run data remove entity @s Item.tag.broken_by_player
