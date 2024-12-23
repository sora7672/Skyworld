

title @s title {"text":"Mining Tier 2!","color":"yellow"}
title @s subtitle {"text":"Check your chat.","color":"gray"}
title @s times 10 50 20

tellraw @s ["",{"text":"TIER UP: Mining Tier 2","color":"yellow"}]
tellraw @s ["",{"text":"You now get different drops by stone&cobble","color":"white"}]
tellraw @s ["",{"text":"Make sure you start now with create automation!","color":"white"}]
tellraw @s ["",{"text":"You get now ","color":"white"},{"text":"less rare drops ","color":"red"},{"text":"by hand!","color":"white"}]

scoreboard players set @s mining_tier 2
