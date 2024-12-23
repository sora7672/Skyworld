

title @s title {"text":"Mining Tier 5!","color":"yellow"}
title @s subtitle {"text":"Check your chat.","color":"gray"}
title @s times 10 50 20

tellraw @s ["",{"text":"TIER UP: Mining Tier 5","color":"yellow"}]
tellraw @s ["",{"text":"Nothing changed. Its just for show!","color":"white"}]

scoreboard players set @s mining_tier 5
