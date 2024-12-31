


execute unless entity @s[nbt={SelectedItem:{Count:1b}}] run tellraw @s ["",{"text":"If you want to get a filled ","color":"white"},{"text":"blaze burner","color":"red"},{"text":" you need to have only one ","color":"white"},{"text":"empty blaze burner","color":"green"},{"text":" in hand.","color":"white"}]

execute if entity @s[nbt={SelectedItem:{Count:1b}}] as @s at @s run execute as @e[distance=..5,type=minecraft:skeleton,tag=alternative_blaze,sort=nearest,limit=1] at @s run function sky_recipes:remove_burning_skeleton
execute if entity @s[nbt={SelectedItem:{Count:1b}}] run give @s create:blaze_burner

execute if entity @s[nbt={SelectedItem:{Count:1b}}] run item replace entity @s weapon.mainhand with minecraft:air


advancement revoke @s only sky_recipes:alt_blaze_burner
