

tellraw @s ["",{"text":"You have no home set. You should set it when you found a nice place to get your start items.","color":"white"}]
tellraw @s ["",{"text":"To set home: ","color":"white"}, {"text":"/trigger sethome","color":"green"}]
tellraw @s ["",{"text":"You can use: ","color":"white"}, {"text":"/trigger random_tp","color":"green"},{"text":" to explore the world.","color":"white"}]

scoreboard players set @s home_check_timer 6000