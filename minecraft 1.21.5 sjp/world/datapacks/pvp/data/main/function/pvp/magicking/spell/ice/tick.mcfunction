particle minecraft:snowflake ~ ~1 ~ 0.7 0.7 0.7 0.02 3 force
execute if score @s MKTimer matches 1 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:powder_snow
execute if score @s MKTimer matches 1 run kill @s
scoreboard players remove @s MKTimer 1
