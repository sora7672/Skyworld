
# Stores players y height for scoreboard comparison
execute store result score @s player_y run data get entity @s Pos[1] 1

# Checks now in which dimension the player is calling this function
# and based on that checks the scoreboard value of that dimension
### ADMIN NOTE: Does not work with custom dimensions or modded ones! Therefore you need to change some things ###

execute unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] if dimension overworld if score @s player_y < dim_overworld world_min_height run function teleports:rescue_tp/rescue
execute unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] if dimension the_nether if score @s player_y < dim_nether world_min_height run function teleports:rescue_tp/rescue
execute unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] if dimension the_end if score @s player_y < dim_end world_min_height run function teleports:rescue_tp/rescue
