
# Only executes if the block below the player is not inside the non_solid tag i created
# So if player is not above water, air, lava (Maybe will be expanded)
execute unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] unless block ~ ~-1 ~ #teleports:non_solid run function teleports:rescue_tp/set_rescue_pos


