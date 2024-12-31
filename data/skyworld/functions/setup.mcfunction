
gamerule doFireTick false
gamerule doInsomnia false

scoreboard objectives add random_sapling dummy
execute unless score global random_sapling matches 0.. run scoreboard players set global random_sapling 1


execute as @a run tellraw @s ["",{"text":"Datapack ","color":"white"},{"text":"[Skyworld]","color":"aqua","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/sora7672/Skyworld"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Visit Projects GitHub","color":"yellow"}]}}},{"text":" created by ","color":"white"},{"text":"[Sora_7672]","color":"dark_purple","underlined":true,"clickEvent":{"action":"open_url","value":"https://github.com/sora7672"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Visit Sora_7672's GitHub","color":"yellow"}]}}}]

