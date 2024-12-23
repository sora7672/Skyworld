



execute unless score @s mining_tier matches 3 run title @s title {"text":"Mining Tier 3!","color":"yellow"}
execute unless score @s mining_tier matches 3 run title @s subtitle {"text":"Check your chat.","color":"gray"}
execute unless score @s mining_tier matches 3 run title @s times 10 50 20

execute unless score @s mining_tier matches 3 run tellraw @s ["",{"text":"TIER UP: Mining Tier 3","color":"yellow"}]
execute unless score @s mining_tier matches 3 run tellraw @s ["",{"text":"You now get different drops by stone&cobble","color":"white"}]
execute unless score @s mining_tier matches 3 run tellraw @s ["",{"text":"You get ","color":"white"},{"text":"less rare drops & less blocks","color":"red"},{"text":"by hand.","color":"white"}]
execute unless score @s mining_tier matches 3 run tellraw @s ["",{"text":"But chances to drop","color":"white"},{"text":" rare blocks","color":"yellow"},{"text":" are higher.","color":"green"}]

execute unless score @s mining_tier matches 3 run scoreboard players set @s mining_tier 3