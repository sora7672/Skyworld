
# Info on cooldown
execute as @s unless score @s random_tp_cooldown matches ..0 run tellraw @s ["",{"text":"You have cooldown on rtp: ","color":"white"},  {"score":{"name": "*","objective":"random_tp_cooldown"},"color":"red"},{"text":" ticks","color":"red"}, {"text":"(20 = 1 second)","color":"white"}]

# If always RTP is allowed
execute as @s if score always_random_tp enabled_modules matches 1 if score @s random_tp_cooldown matches ..0 run function teleports:random_tp/do_rtp

# if home is set and rtp is only allowed before home is set
execute as @s unless score always_random_tp enabled_modules matches 1 if score @s home_x = @s home_x run tellraw @s ["",{"text":"You have set a home already. ","color":"white"}, {"text":"Settings don't allow random_teleport then.","color":"red"}]

# If RTP is only allowed before home is set
execute as @s unless score always_random_tp enabled_modules matches 1 unless score @s home_x = @s home_x if score @s random_tp_cooldown matches ..0 run function teleports:random_tp/do_rtp
