
 
execute as @s[scores={mining_exp=1500..3999}] unless score @s mining_tier matches 2 run function looting:mining_tier/tier2_upgrade
execute as @s[scores={mining_exp=4000..7999}] unless score @s mining_tier matches 3 run function looting:mining_tier/tier3_upgrade
execute as @s[scores={mining_exp=8000..14999}] unless score @s mining_tier matches 4 run function looting:mining_tier/tier4_upgrade
execute as @s[scores={mining_exp=15000..34999}] unless score @s mining_tier matches 5 run function looting:mining_tier/tier5_upgrade
execute as @s[scores={mining_exp=35000..}] unless score @s mining_tier matches 6 run scoreboard players set @s mining_tier 6


