particle minecraft:flame ~ ~0.2 ~ 0.25 0.1 0.25 0.02 2 force
execute if score @s MKTimer matches 1 run function main:pvp/magicking/spell/flame/remove_fire
execute if score @s MKTimer matches 1 run kill @s
scoreboard players remove @s MKTimer 1
